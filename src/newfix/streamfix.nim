import strutils
import criterion
import parsefix
import strscans

type
  StreamFix = object
    pos: int
    msg: string

proc initFix(msg: string): StreamFix =
  result.pos = 0
  result.msg = msg

# proc tag1(f: var StreamFix, t: string): string =
#   let idx = find(f.msg, t, f.pos)
#   if idx > 0:
#     f.pos = idx + t.len
#     let last = find(f.msg, '\x01', f.pos)
#     if last > 0:
#       # echo f.pos, " ", last
#       return f.msg[f.pos..<last]
#     else:
#       return "err"
#   else:
#     return "none"

# proc tag2(f: var StreamFix, t: string): string =
#   let l = f.msg.len
#   while f.pos < l:
#     let start = f.pos
#     while true:
#       if f.msg[f.pos] == '=':
#         break
#       inc f.pos
#     if t == f.msg[start..<f.pos]:
#       inc f.pos
#       parseStr(f.msg, result, f.pos)
#       return
#     else:
#       inc f.pos
#       skipValue(f.msg, f.pos)

proc tag3(f: var StreamFix, tag: int): string =
  let l = f.msg.len
  var t: int 
  var start: int
  while f.pos < l:
    t = 0
    while f.msg[f.pos] != '=':
      t = t * 10 + int(f.msg[f.pos].byte - '0'.byte)
      inc f.pos
    inc f.pos
    if tag == t:
      start = f.pos
      while f.msg[f.pos] != '\x01':
        inc f.pos
      return f.msg[start..<f.pos]
    else:
      while f.msg[f.pos] != '\x01':
        inc f.pos
      inc f.pos

proc tag4(f: var StreamFix, tag: int): string =
  let l = f.msg.len
  var t: int
  while f.pos < l:
    parseTag(f.msg, t, f.pos)
    if tag == t:
      parseStr(f.msg, result, f.pos)
      return
    else:
      skipValue(f.msg, f.pos)

var cfg = newDefaultConfig()

benchmark cfg:
  let s4 = readLines("tests/test1.fix", 5)[4]

  # proc fix1(): int =
  #   var f = initFix(s4)
  #   for i in 1..20:
  #     result += f.tag1("\x01190=").len

  # proc fix2(): int =
  #   var f = initFix(s4)
  #   for i in 1..20:
  #     result += f.tag2("190").len

  proc fix3(): int =
    var f = initFix(s4)
    for i in 1..20:
      result += f.tag3(190).len

  proc fix4(): int =
    var f = initFix(s4)
    for i in 1..20:
      result += f.tag4(190).len

  # proc benchFix1() {.measure.} =
  #   blackBox fix1()

  # proc benchFix2() {.measure.} =
  #   blackBox fix2()

  proc benchFix3() {.measure.} =
    blackBox fix3()

  proc benchFix4() {.measure.} =
    blackBox fix4()

# proc main() =
#   let s = readLines("tests/test1.fix", 5)
#   var f1 = initFix(s[4])
#   var f2 = initFix(s[4])
#   var f3 = initFix(s[4])
#   for i in 1..20:
#     echo f1.tag1("\x01190="), " == ", f2.tag2("190"), " == ", f3.tag3("190")

# main()
