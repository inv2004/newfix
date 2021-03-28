include parsefix

type
  NoMsgTypes = object
    refMsgType: string

  NoRelatedSym = object
    symbol: string
    issuer: string

  NoLinesOfText = object
    text: string

  NoMDEntries = object
    mDEntryType: char
    mDEntryPx: float
    currency: string
    mDEntrySize: uint
    timeInForce: char
    minQty: uint
    orderID: string
    quoteEntryID: string
    text: string

  NoQuoteSets = object
    quoteSetID: string
    noQuoteEntries: seq[NoQuoteEntries]

  NoQuoteEntries = object
    quoteEntryID: string
    symbol: string
    issuer: string
    bidSize: uint
    offerSize: uint
    bidSpotRate: float
    offerSpotRate: float
    transactTime: string
    settlDate: string
    ordType: char
    currency: string

  MsgTypeKind = enum
    mt0, mt1, mt2, mt3, mt4, mt5, mt8, mtA, mtB, mtD, mtF, mtH, mtW, mtY, mtBLow, mtILow

  Fix44Pxm = object
    beginString: string
    bodyLength: uint
    senderCompID: string
    targetCompID: string
    onBehalfOfCompID: string
    msgSeqNum: uint
    senderSubID: string
    onBehalfOfSubID: string
    sendingTime: string
    case msgType: MsgTypeKind
    of mt0:
      t0TestReqID: string
    of mt1:
      t1TestReqID: string
    of mt2:
      t2BeginSeqNo: uint
      t2EndSeqNo: uint
    of mt3:
      t3RefSeqNum: uint
      t3RefTagID: int
      t3RefMsgType: string
      t3SessionRejectReason: int
      t3Text: string
    of mt4:
      t4GapFillFlag: bool
      t4NewSeqNo: uint
    of mt5:
      t5Text: string
    of mt8:
      t8OrderID: string
      t8SecondaryClOrdID: string
      t8SecondaryExecID: string
      t8ClOrdID: string
      t8ExecID: string
      t8ExecType: char
      t8OrdStatus: char
      t8Account: string
      t8SettlDate: string
      t8Symbol: string
      t8Issuer: string
      t8Side: char
      t8OrderQty: uint
      t8OrdType: char
      t8Price: float
      t8Currency: string
      t8TimeInForce: char
      t8LastQty: uint
      t8LastPx: float
      t8LeavesQty: uint
      t8CumQty: uint
      t8AvgPx: float
      t8TransactTime: string
      t8MinQty: uint
      t8Text: string
    of mtA:
      aEncryptMethod: int
      aHeartBtInt: int
      aResetSeqNumFlag: bool
      aNoMsgTypes: seq[NoMsgTypes]
      aUsername: string
      aPassword: string
    of mtB:
      bNoRelatedSym: seq[NoRelatedSym]
      bNoLinesOfText: seq[NoLinesOfText]
    of mtD:
      dClOrdID: string
      dSecondaryClOrdID: string
      dAccount: string
      dSettlDate: string
      dMinQty: uint
      dSymbol: string
      dIssuer: string
      dSide: char
      dTransactTime: string
      dOrderQty: uint
      dOrdType: char
      dPrice: float
      dCurrency: string
      dQuoteID: string
      dTimeInForce: char
      dText: string
    of mtF:
      fOrderID: string
      fClOrdID: string
      fSecondaryClOrdID: string
      fAccount: string
      fSymbol: string
      fIssuer: string
      fSide: char
      fTransactTime: string
      fOrderQty: uint
      fText: string
    of mtH:
      hOrderID: string
      hClOrdID: string
      hSecondaryClOrdID: string
      hAccount: string
      hSymbol: string
      hIssuer: string
      hSide: char
    of mtW:
      wMDReqID: string
      wSymbol: string
      wIssuer: string
      wNoMDEntries: seq[NoMDEntries]
    of mtY:
      yMDReqID: string
      yText: string
    of mtBLow:
      blowQuoteID: string
      blowAccount: string
      blowText: string
      blowNoQuoteSets: seq[NoQuoteSets]
    of mtILow:
      ilowQuoteID: string
      ilowAccount: string
      ilowNoQuoteSets: seq[NoQuoteSets]
    checkSum: string

proc parseNoMsgTypes(s: string, r: var seq[NoMsgTypes], pos: var int)

proc parseNoRelatedSym(s: string, r: var seq[NoRelatedSym], pos: var int)

proc parseNoLinesOfText(s: string, r: var seq[NoLinesOfText], pos: var int)

proc parseNoMDEntries(s: string, r: var seq[NoMDEntries], pos: var int)

proc parseNoQuoteSets(s: string, r: var seq[NoQuoteSets], pos: var int)

proc parseNoQuoteEntries(s: string, r: var seq[NoQuoteEntries], pos: var int)

proc parseNoMsgTypes(s: string, r: var seq[NoMsgTypes], pos: var int) =
  var
    t, sep: uint16
    v: NoMsgTypes
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
    of 372: parseStr(s, v.refMsgType, pos)
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
    of 106: parseStr(s, v.issuer, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoLinesOfText(s: string, r: var seq[NoLinesOfText], pos: var int) =
  var
    t, sep: uint16
    v: NoLinesOfText
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
    of 58: parseStr(s, v.text, pos)
    else:
      r.add v
      pos = j
      return

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
    of 59: parseChar(s, v.timeInForce, pos)
    of 110: parseUInt(s, v.minQty, pos)
    of 37: parseStr(s, v.orderID, pos)
    of 299: parseStr(s, v.quoteEntryID, pos)
    of 58: parseStr(s, v.text, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoQuoteSets(s: string, r: var seq[NoQuoteSets], pos: var int) =
  var
    t, sep: uint16
    v: NoQuoteSets
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
    of 302: parseStr(s, v.quoteSetID, pos)
    of 295: skipValue(s, pos); parseNoQuoteEntries(s, v.noQuoteEntries, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoQuoteEntries(s: string, r: var seq[NoQuoteEntries], pos: var int) =
  var
    t, sep: uint16
    v: NoQuoteEntries
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
    of 299: parseStr(s, v.quoteEntryID, pos)
    of 55: parseStr(s, v.symbol, pos)
    of 106: parseStr(s, v.issuer, pos)
    of 134: parseUInt(s, v.bidSize, pos)
    of 135: parseUInt(s, v.offerSize, pos)
    of 188: parseFloat(s, v.bidSpotRate, pos)
    of 190: parseFloat(s, v.offerSpotRate, pos)
    of 60: parseStr(s, v.transactTime, pos)
    of 64: parseStr(s, v.settlDate, pos)
    of 40: parseChar(s, v.ordType, pos)
    of 15: parseStr(s, v.currency, pos)
    else:
      r.add v
      pos = j
      return

proc parsemt0(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: uint16
  # result = Fix44Pxm(msgType: mt0)
  result.msgType = mt0
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 112: parseStr(s, result.t0TestReqID, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt1(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: uint16
  # result = Fix44Pxm(msgType: mt1)
  result.msgType = mt1
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 112: parseStr(s, result.t1TestReqID, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt2(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: uint16
  # result = Fix44Pxm(msgType: mt2)
  result.msgType = mt2
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 7: parseUInt(s, result.t2BeginSeqNo, pos)
    of 16: parseUInt(s, result.t2EndSeqNo, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt3(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: uint16
  # result = Fix44Pxm(msgType: mt3)
  result.msgType = mt3
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 45: parseUInt(s, result.t3RefSeqNum, pos)
    of 371: parseInt(s, result.t3RefTagID, pos)
    of 372: parseStr(s, result.t3RefMsgType, pos)
    of 373: parseInt(s, result.t3SessionRejectReason, pos)
    of 58: parseStr(s, result.t3Text, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt4(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: uint16
  # result = Fix44Pxm(msgType: mt4)
  result.msgType = mt4
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 123: parseBool(s, result.t4GapFillFlag, pos)
    of 36: parseUInt(s, result.t4NewSeqNo, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt5(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: uint16
  # result = Fix44Pxm(msgType: mt5)
  result.msgType = mt5
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 58: parseStr(s, result.t5Text, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt8(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: uint16
  # result = Fix44Pxm(msgType: mt8)
  result.msgType = mt8
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 37: parseStr(s, result.t8OrderID, pos)
    of 526: parseStr(s, result.t8SecondaryClOrdID, pos)
    of 527: parseStr(s, result.t8SecondaryExecID, pos)
    of 11: parseStr(s, result.t8ClOrdID, pos)
    of 17: parseStr(s, result.t8ExecID, pos)
    of 150: parseChar(s, result.t8ExecType, pos)
    of 39: parseChar(s, result.t8OrdStatus, pos)
    of 1: parseStr(s, result.t8Account, pos)
    of 64: parseStr(s, result.t8SettlDate, pos)
    of 55: parseStr(s, result.t8Symbol, pos)
    of 106: parseStr(s, result.t8Issuer, pos)
    of 54: parseChar(s, result.t8Side, pos)
    of 38: parseUInt(s, result.t8OrderQty, pos)
    of 40: parseChar(s, result.t8OrdType, pos)
    of 44: parseFloat(s, result.t8Price, pos)
    of 15: parseStr(s, result.t8Currency, pos)
    of 59: parseChar(s, result.t8TimeInForce, pos)
    of 32: parseUInt(s, result.t8LastQty, pos)
    of 31: parseFloat(s, result.t8LastPx, pos)
    of 151: parseUInt(s, result.t8LeavesQty, pos)
    of 14: parseUInt(s, result.t8CumQty, pos)
    of 6: parseFloat(s, result.t8AvgPx, pos)
    of 60: parseStr(s, result.t8TransactTime, pos)
    of 110: parseUInt(s, result.t8MinQty, pos)
    of 58: parseStr(s, result.t8Text, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtA(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: uint16
  # result = Fix44Pxm(msgType: mtA)
  result.msgType = mtA
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 98: parseInt(s, result.aEncryptMethod, pos)
    of 108: parseInt(s, result.aHeartBtInt, pos)
    of 141: parseBool(s, result.aResetSeqNumFlag, pos)
    of 384: skipValue(s, pos); parseNoMsgTypes(s, result.aNoMsgTypes, pos)
    of 553: parseStr(s, result.aUsername, pos)
    of 554: parseStr(s, result.aPassword, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtB(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: uint16
  # result = Fix44Pxm(msgType: mtB)
  result.msgType = mtB
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.bNoRelatedSym, pos)
    of 33: skipValue(s, pos); parseNoLinesOfText(s, result.bNoLinesOfText, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtD(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: uint16
  # result = Fix44Pxm(msgType: mtD)
  result.msgType = mtD
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 11: parseStr(s, result.dClOrdID, pos)
    of 526: parseStr(s, result.dSecondaryClOrdID, pos)
    of 1: parseStr(s, result.dAccount, pos)
    of 64: parseStr(s, result.dSettlDate, pos)
    of 110: parseUInt(s, result.dMinQty, pos)
    of 55: parseStr(s, result.dSymbol, pos)
    of 106: parseStr(s, result.dIssuer, pos)
    of 54: parseChar(s, result.dSide, pos)
    of 60: parseStr(s, result.dTransactTime, pos)
    of 38: parseUInt(s, result.dOrderQty, pos)
    of 40: parseChar(s, result.dOrdType, pos)
    of 44: parseFloat(s, result.dPrice, pos)
    of 15: parseStr(s, result.dCurrency, pos)
    of 117: parseStr(s, result.dQuoteID, pos)
    of 59: parseChar(s, result.dTimeInForce, pos)
    of 58: parseStr(s, result.dText, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtF(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: uint16
  # result = Fix44Pxm(msgType: mtF)
  result.msgType = mtF
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 37: parseStr(s, result.fOrderID, pos)
    of 11: parseStr(s, result.fClOrdID, pos)
    of 526: parseStr(s, result.fSecondaryClOrdID, pos)
    of 1: parseStr(s, result.fAccount, pos)
    of 55: parseStr(s, result.fSymbol, pos)
    of 106: parseStr(s, result.fIssuer, pos)
    of 54: parseChar(s, result.fSide, pos)
    of 60: parseStr(s, result.fTransactTime, pos)
    of 38: parseUInt(s, result.fOrderQty, pos)
    of 58: parseStr(s, result.fText, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtH(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: uint16
  # result = Fix44Pxm(msgType: mtH)
  result.msgType = mtH
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 37: parseStr(s, result.hOrderID, pos)
    of 11: parseStr(s, result.hClOrdID, pos)
    of 526: parseStr(s, result.hSecondaryClOrdID, pos)
    of 1: parseStr(s, result.hAccount, pos)
    of 55: parseStr(s, result.hSymbol, pos)
    of 106: parseStr(s, result.hIssuer, pos)
    of 54: parseChar(s, result.hSide, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtW(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: uint16
  # result = Fix44Pxm(msgType: mtW)
  result.msgType = mtW
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 262: parseStr(s, result.wMDReqID, pos)
    of 55: parseStr(s, result.wSymbol, pos)
    of 106: parseStr(s, result.wIssuer, pos)
    of 268: skipValue(s, pos); parseNoMDEntries(s, result.wNoMDEntries, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtY(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: uint16
  # result = Fix44Pxm(msgType: mtY)
  result.msgType = mtY
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 262: parseStr(s, result.yMDReqID, pos)
    of 58: parseStr(s, result.yText, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtBLow(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: uint16
  # result = Fix44Pxm(msgType: mtBLow)
  result.msgType = mtBLow
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 117: parseStr(s, result.blowQuoteID, pos)
    of 1: parseStr(s, result.blowAccount, pos)
    of 58: parseStr(s, result.blowText, pos)
    of 296: skipValue(s, pos); parseNoQuoteSets(s, result.blowNoQuoteSets, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtILow(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: uint16
  # result = Fix44Pxm(msgType: mtILow)
  result.msgType = mtILow
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 34: parseUInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 117: parseStr(s, result.ilowQuoteID, pos)
    of 1: parseStr(s, result.ilowAccount, pos)
    of 296: skipValue(s, pos); parseNoQuoteSets(s, result.ilowNoQuoteSets, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseFix44Pxm(s: string): Fix44Pxm =
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
      of "0": parsemt0(s, result, pos)
      of "1": parsemt1(s, result, pos)
      of "2": parsemt2(s, result, pos)
      of "3": parsemt3(s, result, pos)
      of "4": parsemt4(s, result, pos)
      of "5": parsemt5(s, result, pos)
      of "8": parsemt8(s, result, pos)
      of "A": parsemtA(s, result, pos)
      of "B": parsemtB(s, result, pos)
      of "D": parsemtD(s, result, pos)
      of "F": parsemtF(s, result, pos)
      of "H": parsemtH(s, result, pos)
      of "W": parsemtW(s, result, pos)
      of "Y": parsemtY(s, result, pos)
      of "b": parsemtBLow(s, result, pos)
      of "i": parsemtILow(s, result, pos)
    else: raise newException(ValueError, "unexpected header field: " & $t)

