include parsefix

type
  NoTestSubgroup = object
    testTag1: string
    testTag2: string

  NoRelatedSym = object
    symbol: string
    settlDate: string
    securityDesc: string
    noTestSubgroup: seq[NoTestSubgroup]

  MsgTypeKind = enum
    mtELow, mtALow

  FIX44Min = object
    beginString: string
    bodyLength: uint
    senderCompID: string
    targetCompID: string
    msgSeqNum: uint
    sendingTime: string
    case msgType: MsgTypeKind
    of mtELow:
      elowUnknown1: string
      elowUnknown2: char
      elowTargetSubID: string
      elowHeartBtInt: int
      elowEncryptMethod: int
    of mtALow:
      alowUnknown1: string
      alowUnknown2: char
      alowTargetSubID: string
      alowHeartBtInt: int
      alowEncryptMethod: int
      alowNoRelatedSym: seq[NoRelatedSym]
    checkSum: string

proc parseNoTestSubgroup(s: string, r: var seq[NoTestSubgroup], pos: var int)

proc parseNoRelatedSym(s: string, r: var seq[NoRelatedSym], pos: var int)

proc parseNoTestSubgroup(s: string, r: var seq[NoTestSubgroup], pos: var int) =
  var
    t, sep: uint16
    v: NoTestSubgroup
    j = 0
  let l = s.len
  while pos < l:
    j = pos
    parseTag(s, t, pos)
    if sep > 0:
      if sep == t:
        r.add v
        v.reset()
    else:
      sep = t
    case t
    of 10001: parseStr(s, v.testTag1, pos)
    of 10002: parseStr(s, v.testTag2, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoRelatedSym(s: string, r: var seq[NoRelatedSym], pos: var int) =
  var
    t, sep: uint16
    v: NoRelatedSym
    j = 0
  let l = s.len
  while pos < l:
    j = pos
    parseTag(s, t, pos)
    if sep > 0:
      if sep == t:
        r.add v
        v.reset()
    else:
      sep = t
    case t
    of 55: parseStr(s, v.symbol, pos)
    of 64: parseStr(s, v.settlDate, pos)
    of 107: parseStr(s, v.securityDesc, pos)
    of 10000: skipValue(s, pos); parseNoTestSubgroup(s, v.noTestSubgroup, pos)
    else:
      r.add v
      pos = j
      return

proc parsemtELow(s: string, result: var FIX44Min, pos: var int) =
  var
    t: uint16
  # result = FIX44Min(msgType: mtELow)
  result.msgType = mtELow
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 5555: parseStr(s, result.elowUnknown1, pos)
    of 7777: parseChar(s, result.elowUnknown2, pos)
    of 57: parseStr(s, result.elowTargetSubID, pos)
    of 108: parseInt(s, result.elowHeartBtInt, pos)
    of 98: parseInt(s, result.elowEncryptMethod, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtALow(s: string, result: var FIX44Min, pos: var int) =
  var
    t: uint16
  # result = FIX44Min(msgType: mtALow)
  result.msgType = mtALow
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 5555: parseStr(s, result.alowUnknown1, pos)
    of 7777: parseChar(s, result.alowUnknown2, pos)
    of 57: parseStr(s, result.alowTargetSubID, pos)
    of 108: parseInt(s, result.alowHeartBtInt, pos)
    of 98: parseInt(s, result.alowEncryptMethod, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.alowNoRelatedSym, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseFIX44Min(s: string): FIX44Min =
  var
    t: uint16
    v35: string
    pos = 0
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 8: parseStr(s, result.beginString, pos)
    of 9: parseUInt(s, result.bodyLength, pos)
    of 35:
      parseStr(s, v35, pos)
      case v35
      of "e": parsemtELow(s, result, pos)
      of "a": parsemtALow(s, result, pos)
    else: raise newException(ValueError, "unexpected header field: " & $t)

