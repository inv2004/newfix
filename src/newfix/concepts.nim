# import parseutils
import parsefix

type
  Fix1 = object
    buf: string
    a: array[10000, int]
    b: array[10000, int]

func parseFix1*(s: string): Fix1 =
  result.buf = s
  var t: int
  let l = s.len
  var i = 0
  while i < l:
    parseTag(s, t, i)
    result.a[t] = i
    skipValue(s, i)
    result.b[t] = i-2

func t8*(x: Fix1): string =
  return x.buf[x.a[8]..x.b[8]]

func t9*(x: Fix1): uint =
  for i in x.buf[x.a[9]..x.b[9]]:
    result = result * 10 + (i.byte - '0'.byte)

func t10*(x: Fix1): string =
  return x.buf[x.a[10]..x.b[10]]

func t34*(x: Fix1): uint =
  for i in x.buf[x.a[34]..x.b[34]]:
    result = result * 10 + (i.byte - '0'.byte)

func t35*(x: Fix1): string =
  return x.buf[x.a[35]..x.b[35]]

func t49*(x: Fix1): string =
  return x.buf[x.a[49]..x.b[49]]

func t52*(x: Fix1): string =
  return x.buf[x.a[52]..x.b[52]]

func t5555*(x: Fix1): string =
  return x.buf[x.a[5555]..x.b[5555]]

func t56*(x: Fix1): string =
  x.buf[x.a[56]..x.b[56]]

func t57*(x: Fix1): string =
  return x.buf[x.a[57]..x.b[57]]

func t7777*(x: Fix1): char =
  x.buf[x.a[7777]]

func t98*(x: Fix1): int =
  for i in x.buf[x.a[98]..x.b[98]]:
    result = result * 10 + (i.byte - '0'.byte).int

func t108*(x: Fix1): int =
  for i in x.buf[x.a[108]..x.b[108]]:
    result = result * 10 + (i.byte - '0'.byte).int

type
  Fix2 = object
    buf: string
    a: array[10000, int]

func parseFix2*(s: string): Fix2 =
  result.buf = s
  var t: int
  let l = s.len
  var i = 0
  while i < l:
    parseTag(s, t, i)
    result.a[t] = i
    skipValue(s, i)

func t8*(x: Fix2): string =
  var pos = x.a[8]
  parseStr(x.buf, result, pos)

func t9*(x: Fix2): uint =
  var pos = x.a[9]
  parseUInt(x.buf, result, pos)

func t10*(x: Fix2): string =
  var pos = x.a[10]
  parseStr(x.buf, result, pos)

func t34*(x: Fix2): uint =
  var pos = x.a[34]
  parseUInt(x.buf, result, pos)

func t35*(x: Fix2): string =
  var pos = x.a[35]
  parseStr(x.buf, result, pos)

func t49*(x: Fix2): string =
  var pos = x.a[49]
  parseStr(x.buf, result, pos)

func t52*(x: Fix2): string =
  var pos = x.a[52]
  parseStr(x.buf, result, pos)

func t5555*(x: Fix2): string =
  var pos = x.a[5555]
  parseStr(x.buf, result, pos)

func t56*(x: Fix2): string =
  var pos = x.a[56]
  parseStr(x.buf, result, pos)

func t57*(x: Fix2): string =
  var pos = x.a[57]
  parseStr(x.buf, result, pos)

func t7777*(x: Fix2): char =
  x.buf[x.a[7777]]

func t98*(x: Fix2): int =
  var pos = x.a[98]
  parseInt(x.buf, result, pos)

func t108*(x: Fix2): int =
  var pos = x.a[108]
  parseInt(x.buf, result, pos)

type
  Fix3 = object
    t8*: string
    t9*: uint
    t35*: string
    t49*: string
    t56*: string
    t34*: uint
    t52*: string
    t5555*: string
    t7777*: char
    t57*: string
    t108*: int
    t98*: int
    t10*: string

func parseFix3*(s: string): Fix3 =
  var t: int
  let l = s.len
  var i = 0
  while i < l:
    parseTag(s, t, i)
    case t
    of 8: parseStr(s, result.t8, i)
    of 9: parseUInt(s, result.t9, i)
    of 35: parseStr(s, result.t35, i)
    of 49: parseStr(s, result.t49, i)
    of 56: parseStr(s, result.t56, i)
    of 34: parseUInt(s, result.t34, i)
    of 52: parseStr(s, result.t52, i)
    of 5555: parseStr(s, result.t5555, i)   # float
    of 7777: result.t7777 = s[i]; i += 2
    of 57: parseStr(s, result.t57, i)
    of 108: parseInt(s, result.t108, i)
    of 98: parseInt(s, result.t98, i)
    of 10: parseStr(s, result.t10, i)
    else: discard

func fromFix3*(x: Fix3): string =
  result = newStringOfCap(256)
  for t, v in x.fieldPairs:
    result.add '|' & $t & "=" & $v

type
  Fix4 = array[10000, string]

func parseFix4*(s: string): Fix4 =
  var t: int
  var v: string
  let l = s.len
  var i = 0
  while i < l:
    parseTag(s, t, i)
    parseStr(s, v, i)
    result[t] = v

func t8*(x: Fix4): string =
  x[8]

func t9*(x: Fix4): uint =
  for i in x[9]:
    result = result * 10 + (i.byte - '0'.byte)

func t10*(x: Fix4): string =
  x[10]

func t34*(x: Fix4): uint =
  for i in x[34]:
    result = result * 10 + (i.byte - '0'.byte)

func t35*(x: Fix4): string =
  x[35]

func t49*(x: Fix4): string =
  x[49]

func t52*(x: Fix4): string =
  x[52]

func t5555*(x: Fix4): string =
  x[5555]

func t56*(x: Fix4): string =
  x[56]

func t57*(x: Fix4): string =
  x[57]

func t7777*(x: Fix4): char =
  x[7777][0]

func t98*(x: Fix4): int =
  for i in x[98]:
    result = result * 10 + (i.byte - '0'.byte).int

func t108*(x: Fix4): int =
  for i in x[108]:
    result = result * 10 + (i.byte - '0'.byte).int
