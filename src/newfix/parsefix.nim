from parseutils import parseFloat

const DELIMITER = '\x01'

func parseTag*(s: string, t: var int, pos: var int) =
  t = 0
  while s[pos] != '=':
    t = t * 10 + int(s[pos].byte - '0'.byte)
    inc pos
  inc pos

func parseChar*(s: string, v: var char, pos: var int) =
  v = s[pos]
  pos += 2

func parseStr*(s: string, v: var string, pos: var int) =
  let start = pos
  while s[pos] != DELIMITER:
    inc pos
  v = s[start..<pos]
  inc pos

func parseInt*(s: string, t: var int, pos: var int) =
  let sign =
    if s[pos] == '-': inc pos; -1
    else: 1
  t = 0
  while s[pos] != DELIMITER:
    t = t * 10 + (s[pos].byte - '0'.byte).int
    inc pos
  inc pos
  t *= sign

func parseUInt*(s: string, t: var uint, pos: var int) =
  t = 0
  while s[pos] != DELIMITER:
    t = t * 10 + (s[pos].byte - '0'.byte)
    inc pos
  inc pos

func parseBool*(s: string, v: var bool, pos: var int) =
  if s[pos] == 'Y':
    v = true
  pos += 2

func parseFloat*(s: string, t: var float, pos: var int) =
  pos += parseutils.parseFloat(s, t, pos)+1

func skipValue*(s: string, pos: var int) =
  while s[pos] != DELIMITER:
    inc pos
  inc pos
