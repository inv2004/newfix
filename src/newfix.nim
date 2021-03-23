# import parseutils

func parseTag(s: string, t: var uint16, pos: var int) =
  t = 0
  while true:
    if s[pos] == '=':
      break
    t = t * 10 + (s[pos].byte - '0'.byte)
    inc pos
  inc pos

func parseUInt8(s: string, t: var uint8, pos: var int) =
  t = 0
  let l = s.len
  while pos < l:
    if s[pos] == '|':
      break
    t = t * 10 + (s[pos].byte - '0'.byte)
    inc pos
  inc pos

func parseUInt16(s: string, t: var uint16, pos: var int) =
  t = 0
  let l = s.len
  while pos < l:
    if s[pos] == '|':
      break
    t = t * 10 + (s[pos].byte - '0'.byte)
    inc pos
  inc pos

func parseStr(s: string, v: var string, pos: var int) =
  let start = pos
  let l = s.len
  while pos < l:
    if s[pos] == '|':
      break
    inc pos
  v = s[start..<pos]
  inc pos

func skipValue(s: string, pos: var int) =
  let l = s.len
  while pos < l:
    if s[pos] == '|':
      break
    inc pos
  inc pos

type
  Fix1 = object
    buf: string
    a: array[500, int]
    b: array[500, int]

func parseFix1*(s: string): Fix1 =
  result.buf = s
  var t: uint16
  let l = s.len
  var i = 0
  while i < l:
    parseTag(s, t, i)
    result.a[t] = i
    skipValue(s, i)
    result.b[t] = i-2

func t8*(x: Fix1): string =
  return x.buf[x.a[8]..x.b[8]]

func t9*(x: Fix1): uint8 =
  for i in x.buf[x.a[9]..x.b[9]]:
    result = result * 10 + (i.byte - '0'.byte)

func t10*(x: Fix1): string =
  return x.buf[x.a[10]..x.b[10]]

func t34*(x: Fix1): uint8 =
  for i in x.buf[x.a[34]..x.b[34]]:
    result = result * 10 + (i.byte - '0'.byte)

func t35*(x: Fix1): char =
  x.buf[x.a[35]]

func t49*(x: Fix1): string =
  return x.buf[x.a[49]..x.b[49]]

func t52*(x: Fix1): string =
  return x.buf[x.a[52]..x.b[52]]

func t155*(x: Fix1): string =
  return x.buf[x.a[155]..x.b[155]]

func t56*(x: Fix1): string =
  x.buf[x.a[56]..x.b[56]]

func t57*(x: Fix1): string =
  return x.buf[x.a[57]..x.b[57]]

func t77*(x: Fix1): char =
  x.buf[x.a[77]]

func t98*(x: Fix1): uint8 =
  for i in x.buf[x.a[98]..x.b[98]]:
    result = result * 10 + (i.byte - '0'.byte)

func t108*(x: Fix1): uint8 =
  for i in x.buf[x.a[108]..x.b[108]]:
    result = result * 10 + (i.byte - '0'.byte)

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

func t9*(x: Fix2): uint8 =
  var pos = x.a[9]
  parseUInt8(x.buf, result, pos)

func t10*(x: Fix2): string =
  var pos = x.a[10]
  parseStr(x.buf, result, pos)

func t34*(x: Fix2): uint8 =
  var pos = x.a[34]
  parseUInt8(x.buf, result, pos)

func t35*(x: Fix2): char =
  x.buf[x.a[35]]

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

func t98*(x: Fix2): uint8 =
  var pos = x.a[98]
  parseUInt8(x.buf, result, pos)

func t108*(x: Fix2): uint8 =
  var pos = x.a[108]
  parseUInt8(x.buf, result, pos)

type
  Fix3 = object
    t8*: string
    t9*: uint8
    t10*: string
    t34*: uint8
    t35*: char
    t49*: string
    t52*: string
    t155*: string
    t56*: string
    t57*: string
    t77*: char
    t98*: uint8
    t108*: uint8

func parseFix3*(s: string): Fix3 =
  var t: uint16
  let l = s.len
  var i = 0
  while i < l:
    parseTag(s, t, i)
    case t
    of 8: parseStr(s, result.t8, i)
    of 9: parseUInt8(s, result.t9, i)
    of 10: parseStr(s, result.t10, i)
    of 34: parseUInt8(s, result.t34, i)
    of 35: result.t35 = s[i]; i += 2
    of 49: parseStr(s, result.t49, i)
    of 52: parseStr(s, result.t52, i)
    of 155: parseStr(s, result.t155, i)   # float
    of 56: parseStr(s, result.t56, i)
    of 77: result.t77 = s[i]; i += 2
    of 57: parseStr(s, result.t57, i)
    of 98: parseUInt8(s, result.t98, i)
    of 108: parseUInt8(s, result.t108, i)
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

func t9*(x: Fix4): uint8 =
  for i in x[9]:
    result = result * 10 + (i.byte - '0'.byte)

func t10*(x: Fix4): string =
  x[10]

func t34*(x: Fix4): uint8 =
  for i in x[34]:
    result = result * 10 + (i.byte - '0'.byte)

func t35*(x: Fix4): char =
  x[35][0]

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

func t98*(x: Fix4): uint8 =
  for i in x[98]:
    result = result * 10 + (i.byte - '0'.byte)

func t108*(x: Fix4): uint8 =
  for i in x[108]:
    result = result * 10 + (i.byte - '0'.byte)
