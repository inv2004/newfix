{.compile: "f.c".}

import criterion

type
  StreamFix = object
    pos: int
    msg: string

type
  StreamFix2 = object
    pos: pointer
    msg: string
    last: pointer

proc initFix(msg: string): StreamFix =
  result.pos = 0
  result.msg = msg

proc initFix2(msg: string): StreamFix2 =
  result.msg = msg
  result.pos = result.msg[0].unsafeAddr
  result.last = result.msg[result.msg.len-1].unsafeAddr

proc tag1(f: var StreamFix, tag: int): string =
  let l = f.msg.len
  var t: int 
  while f.pos < l:
    while f.msg[f.pos] != '=':
      t = t * 10 + int(f.msg[f.pos].byte - '0'.byte)
      inc f.pos
    inc f.pos
    if tag == t:
      t = f.pos
      while f.msg[f.pos] != '\x01':
        inc f.pos
      return f.msg[t..<f.pos]
    else:
      t = 0
      while f.msg[f.pos] != '\x01':
        inc f.pos
      inc f.pos

proc c_memcmp*(a, b: pointer, size: csize_t): cint {.
              importc: "memcmp", header: "<string.h>", noSideEffect.}

proc c_memchr(cstr: pointer, c: char, n: csize_t): pointer {.
              importc: "memchr", header: "<string.h>".}

proc tag2(f: var StreamFix2, tag: string): string =
  let tLen = cast[csize_t](tag.len)
  let tAddr = tag[0].unsafeAddr
  while f.pos < f.last:
    if 0 == c_memcmp(f.pos, tAddr, tLen):
      f.pos = cast[pointer](cast[uint](f.pos) + tLen)
      let nextAddr = c_memchr(f.pos, '\x01', cast[csize_t](1000))
      let len = cast[ByteAddress](nextAddr) - cast[ByteAddress](f.pos)
      result = newString(len)
      copyMem(result[0].addr, f.pos, len)
      return
    else:
      f.pos = c_memchr(f.pos, '\x01', cast[csize_t](1000))
      f.pos = cast[pointer](cast[uint](f.pos) + 1u)

type
  CFS = ptr object
  FS = object
    c: CFS

proc c_init(msg: cstring): CFS {.importc: "finit".}
proc c_tag(fs: CFS, tag: cstring): cstring {.importc: "ftag".}
proc c_free(fs: CFS) {.importc: "ffree".}

proc initFix3(msg: string): FS =
  FS(c: c_init(msg))

proc tag3(fs: FS, tag: cstring): cstring =
  c_tag(fs.c, tag)

# proc `=destroy`*(x: var FS) =
#   if x.c != nil:
#     c_free(x.c)

var cfg = newDefaultConfig()

benchmark cfg:
  let s4 = readLines("tests/test1.fix", 5)[4]

  proc fix1(): int =
    var f = initFix(s4)
    for i in 1..20:
      result += f.tag1(190).len

  proc fix2(): int =
    var f = initFix2(s4)
    for i in 1..20:
      result += f.tag2("190=").len

  proc fix3(): int =
    var f = initFix3(s4)
    for i in 1..20:
      result += f.tag3("190=").len


  proc benchFix1() {.measure.} =
    blackBox fix1()

  proc benchFix2() {.measure.} =
    blackBox fix2()

  proc benchFix3() {.measure.} =
    blackBox fix3()

proc main() =
  let s = readLines("tests/test1.fix", 5)
  var f1 = initFix(s[4])
  var f2 = initFix2(s[4])
  var f3 = c_init(s[4])
  for i in 1..30:
    echo f1.tag1(190), " == ", f2.tag2("190="), " == ", c_tag(f3, "190=")

# main()
