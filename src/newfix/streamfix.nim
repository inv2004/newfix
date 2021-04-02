import strutils
import criterion

type
  StreamFix = object
    pos: int
    msg: string

proc initFix(msg: string): StreamFix =
  result.pos = 0
  result.msg = msg

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

var cfg = newDefaultConfig()

benchmark cfg:
  let s4 = readLines("tests/test1.fix", 5)[4]

  proc fix1(): int =
    var f = initFix(s4)
    for i in 1..20:
      result += f.tag1(190).len

  # proc fix4(): int =
  #   var pos = 0
  #   for i in 1..20:
  #     result += tag4(s4, pos, 190).len

  proc benchFix1() {.measure.} =
    blackBox fix1()

# proc main() =
#   let s = readLines("tests/test1.fix", 5)
#   var f1 = initFix(s[4])
#   var f2 = initFix(s[4])
#   for i in 1..20:
#     echo f1.tag3(190), " == ", f2.tag4(190)

# main()
