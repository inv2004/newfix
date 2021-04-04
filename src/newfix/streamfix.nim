type
  StreamFix* = object
    pos: int
    msg: string

proc initFix*(msg: string): StreamFix =
  result.pos = 0
  result.msg = msg

proc tag*(f: var StreamFix, tag: int): string =
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

# proc `=destroy`*(x: var FS) =
#   if x.c != nil:
#     c_free(x.c)

proc main() =
  let s = readLines("tests/test1.fix", 5)
  var f1 = initFix(s[4])
  for i in 1..20:
    echo f1.tag(190)

when isMainModule:
  main()
