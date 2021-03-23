include parsefix

type
  NoMDEntries = object
    mDEntryType: char
    mDEntryPx: float
    currency: string
    mDEntrySize: uint
    mDEntryDate: string
    mDEntryTime: string
    tickDirection: char
    mDMkt: string
    tradingSessionID: string
    tradingSessionSubID: string
    quoteCondition: string
    tradeCondition: string
    mDEntryOriginator: string
    locationID: string
    deskID: string
    openCloseSettlFlag: string
    timeInForce: char
    expireDate: string
    expireTime: string
    quoteEntryID: string
    mDEntryPositionNo: int

  MsgTypeKind = enum
    mtW, mtILow

  Fix44 = object
    beginString: string
    bodyLength: uint
    senderCompID: string
    targetCompID: string
    msgSeqNum: uint
    sendingTime: string
    case msgType: MsgTypeKind
    of mtW:
      wMDReqID: string
      wSymbol: string
      wNoMDEntries: seq[NoMDEntries]
    of mtILow:
      ilowQuoteReqID: string
      ilowQuoteID: string
      ilowQuoteType: int
      ilowQuoteResponseLevel: int
      ilowAccount: string
      ilowAcctIDSource: int
      ilowAccountType: int
      ilowDefBidSize: uint
      ilowDefOfferSize: uint
    checkSum: string
proc parseNoMDEntries(s: string, r: var seq[NoMDEntries], pos: var int)
proc parseNoMDEntries(s: string, r: var seq[NoMDEntries], pos: var int) =
  var
    t, sep: uint16
    v: NoMDEntries
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
    of 269: parseChar(s, v.mDEntryType, pos)
    of 270: parseFloat(s, v.mDEntryPx, pos)
    of 15: parseStr(s, v.currency, pos)
    of 271: parseUInt(s, v.mDEntrySize, pos)
    of 272: parseStr(s, v.mDEntryDate, pos)
    of 273: parseStr(s, v.mDEntryTime, pos)
    of 274: parseChar(s, v.tickDirection, pos)
    of 275: parseStr(s, v.mDMkt, pos)
    of 336: parseStr(s, v.tradingSessionID, pos)
    of 625: parseStr(s, v.tradingSessionSubID, pos)
    of 276: parseStr(s, v.quoteCondition, pos)
    of 277: parseStr(s, v.tradeCondition, pos)
    of 282: parseStr(s, v.mDEntryOriginator, pos)
    of 283: parseStr(s, v.locationID, pos)
    of 284: parseStr(s, v.deskID, pos)
    of 286: parseStr(s, v.openCloseSettlFlag, pos)
    of 59: parseChar(s, v.timeInForce, pos)
    of 432: parseStr(s, v.expireDate, pos)
    of 126: parseStr(s, v.expireTime, pos)
    of 299: parseStr(s, v.quoteEntryID, pos)
    of 290: parseInt(s, v.mDEntryPositionNo, pos)
    else:
      r.add v
      pos = j
      return

proc parsemtW(s: string, pos: var int): Fix44 =
  var
    t: uint16
  result = Fix44(msgType: mtW)
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 262: parseStr(s, result.wMDReqID, pos)
    of 55: parseStr(s, result.wSymbol, pos)
    of 268: skipValue(s, pos); parseNoMDEntries(s, result.wNoMDEntries, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtILow(s: string, pos: var int): Fix44 =
  var
    t: uint16
  result = Fix44(msgType: mtILow)
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 131: parseStr(s, result.ilowQuoteReqID, pos)
    of 117: parseStr(s, result.ilowQuoteID, pos)
    of 537: parseInt(s, result.ilowQuoteType, pos)
    of 301: parseInt(s, result.ilowQuoteResponseLevel, pos)
    of 1: parseStr(s, result.ilowAccount, pos)
    of 660: parseInt(s, result.ilowAcctIDSource, pos)
    of 581: parseInt(s, result.ilowAccountType, pos)
    of 293: parseUInt(s, result.ilowDefBidSize, pos)
    of 294: parseUInt(s, result.ilowDefOfferSize, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseFix44(s: string): Fix44 =
  var
    t: uint16
    v8, v35: string
    v9: uint
    pos = 0
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 8: parseStr(s, v8, pos)
    of 9: parseUInt(s, v9, pos)
    of 35:
      parseStr(s, v35, pos)
      case v35
      of "W": result = parsemtW(s, pos)
      of "i": result = parsemtILow(s, pos)
    else: raise newException(ValueError, "unexpected header field: " & $t)
  result.beginString = v8
  result.bodyLength = v9

