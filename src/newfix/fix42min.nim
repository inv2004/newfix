include parsefix

type
  NoTestSubgroup* = object
    testTag1*: string
    testTag2*: string

  NoRelatedSym* = object
    symbol*: string
    settlDate*: string
    securityDesc*: string
    noTestSubgroup*: seq[NoTestSubgroup]

  MsgTypeKind* = enum
    SecurityStatusRequest = "e"
    QuoteStatusRequest = "a"

  Fix44Min* = object
    beginString*: string
    bodyLength*: uint
    senderCompID*: string
    targetCompID*: string
    msgSeqNum*: uint
    sendingTime*: string
    case msgType*: MsgTypeKind
    of SecurityStatusRequest:
      ssrUnknown1*: string
      ssrUnknown2*: char
      ssrTargetSubID*: string
      ssrHeartBtInt*: int
      ssrEncryptMethod*: int
    of QuoteStatusRequest:
      qsrUnknown1*: string
      qsrUnknown2*: char
      qsrTargetSubID*: string
      qsrHeartBtInt*: int
      qsrEncryptMethod*: int
      qsrNoRelatedSym*: seq[NoRelatedSym]
    checkSum*: string

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

proc parseSecurityStatusRequest(s: string, result: var Fix44Min, pos: var int) =
  var
    t: uint16
  # result = Fix44Min(msgType: ("e", "SecurityStatusRequest"))
  result.msgType = SecurityStatusRequest
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 5555: parseStr(s, result.ssrUnknown1, pos)
    of 7777: parseChar(s, result.ssrUnknown2, pos)
    of 57: parseStr(s, result.ssrTargetSubID, pos)
    of 108: parseInt(s, result.ssrHeartBtInt, pos)
    of 98: parseInt(s, result.ssrEncryptMethod, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseQuoteStatusRequest(s: string, result: var Fix44Min, pos: var int) =
  var
    t: uint16
  # result = Fix44Min(msgType: ("a", "QuoteStatusRequest"))
  result.msgType = QuoteStatusRequest
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 5555: parseStr(s, result.qsrUnknown1, pos)
    of 7777: parseChar(s, result.qsrUnknown2, pos)
    of 57: parseStr(s, result.qsrTargetSubID, pos)
    of 108: parseInt(s, result.qsrHeartBtInt, pos)
    of 98: parseInt(s, result.qsrEncryptMethod, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.qsrNoRelatedSym, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseFix44Min*(s: string): Fix44Min =
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
      of "e": parseSecurityStatusRequest(s, result, pos)
      of "a": parseQuoteStatusRequest(s, result, pos)
    else: raise newException(ValueError, "unexpected header field: " & $t)

