include parsefix

type
  MsgTypeKind = enum
    AAA, mtELow

  Fix44 = object
    beginString: string
    bodyLength: uint
    senderCompID: string
    targetCompID: string
    msgSeqNum: uint
    sendingTime: string
    case msgType: MsgTypeKind
    of AAA:
      discard
    of mtELow:
      elowSettlCurrFxRate: string
      elowPositionEffect: char
      elowTargetSubID: string
      elowHeartBtInt: int
      elowEncryptMethod: int
    checkSum: string

proc parsemtELow(s: string, result: var Fix44, pos: var int) =
  # result = Fix44(msgType: mtELow, beginString: v8, bodyLength: v9)
  result.msgType = mtELow
  var
    t: uint16
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 155: parseStr(s, result.elowSettlCurrFxRate, pos)
    of 77: parseChar(s, result.elowPositionEffect, pos)
    of 57: parseStr(s, result.elowTargetSubID, pos)
    of 108: parseInt(s, result.elowHeartBtInt, pos)
    of 98: parseInt(s, result.elowEncryptMethod, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseFix44(s: string): Fix44 =
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
    # else: raise newException(ValueError, "unexpected header field: " & $t)
    else: discard

