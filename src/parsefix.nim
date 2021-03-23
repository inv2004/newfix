from parseutils import parseFloat

func parseTag(s: string, t: var uint16, pos: var int) =
  t = 0
  while true:
    if s[pos] == '=':
      break
    t = t * 10 + (s[pos].byte - '0'.byte)
    inc pos
  inc pos

func parseChar(s: string, v: var char, pos: var int) =
  v = s[pos]
  pos += 2

func parseStr(s: string, v: var string, pos: var int) =
  let start = pos
  let l = s.len
  while pos < l:
    if s[pos] == '|':
      break
    inc pos
  v = s[start..<pos]
  inc pos

func parseInt(s: string, t: var int, pos: var int) =
  t = 0
  let l = s.len
  while pos < l:
    if s[pos] == '|':
      break
    t = t * 10 + (s[pos].byte - '0'.byte).int
    inc pos
  inc pos

func parseUInt(s: string, t: var uint, pos: var int) =
  t = 0
  let l = s.len
  while pos < l:
    if s[pos] == '|':
      break
    t = t * 10 + (s[pos].byte - '0'.byte)
    inc pos
  inc pos

func parseBool(s: string, v: var bool, pos: var int) =
  if s[pos] == 'Y':
    v = true
  pos += 2

func parseFloat(s: string, t: var float, pos: var int) =
  pos += parseutils.parseFloat(s, t, pos)+1

func skipValue(s: string, pos: var int) =
  let l = s.len
  while pos < l:
    if s[pos] == '|':
      break
    inc pos
  inc pos
