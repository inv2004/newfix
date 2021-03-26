# import parseutils
import parsefix

type
  Fix2 = object
    buf: string
    a: array[500, int]

func parseFix2*(s: string): Fix2 =
  result.buf = s
  var t: uint16
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

func t155*(x: Fix2): string =
  var pos = x.a[155]
  parseStr(x.buf, result, pos)

func t56*(x: Fix2): string =
  var pos = x.a[56]
  parseStr(x.buf, result, pos)

func t57*(x: Fix2): string =
  var pos = x.a[57]
  parseStr(x.buf, result, pos)

func t77*(x: Fix2): char =
  x.buf[x.a[77]]

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
    t155*: string
    t77*: char
    t57*: string
    t108*: int
    t98*: int
    t10*: string

func parseFix3*(s: string): Fix3 =
  var t: uint16
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
    of 155: parseStr(s, result.t155, i)   # float
    of 77: result.t77 = s[i]; i += 2
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
  Fix4 = array[1000, string]

func parseFix4*(s: string): Fix4 =
  var t: uint16
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

func t155*(x: Fix4): string =
  x[155]

func t56*(x: Fix4): string =
  x[56]

func t57*(x: Fix4): string =
  x[57]

func t77*(x: Fix4): char =
  x[77][0]

func t98*(x: Fix4): int =
  for i in x[98]:
    result = result * 10 + (i.byte - '0'.byte).int

func t108*(x: Fix4): int =
  for i in x[108]:
    result = result * 10 + (i.byte - '0'.byte).int
