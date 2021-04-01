include parsefix

type
  NoMsgTypes* = object
    refMsgType*: string

  NoRelatedSym* = object
    symbol*: string
    issuer*: string

  NoLinesOfText* = object
    text*: string

  NoMDEntryTypes* = object
    mDEntryType*: char

  NoMDEntries* = object
    mDEntryType*: char
    mDEntryPx*: float
    currency*: string
    mDEntrySize*: int
    timeInForce*: char
    minQty*: int
    orderID*: string
    quoteEntryID*: string
    text*: string

  NoQuoteSets* = object
    quoteSetID*: string
    noQuoteEntries*: seq[NoQuoteEntries]

  NoQuoteEntries* = object
    quoteEntryID*: string
    symbol*: string
    issuer*: string
    bidSize*: int
    offerSize*: int
    bidSpotRate*: float
    offerSpotRate*: float
    transactTime*: string
    settlDate*: string
    ordType*: char
    currency*: string

  MsgTypeKind* = enum
    Heartbeat = "0"
    TestRequest = "1"
    ResendRequest = "2"
    Reject = "3"
    SequenceReset = "4"
    Logout = "5"
    ExecutionReport = "8"
    Logon = "A"
    News = "B"
    NewOrderSingle = "D"
    OrderCancelRequest = "F"
    OrderStatusRequest = "H"
    MarketDataRequest = "V"
    MarketDataSnapshotFullRefresh = "W"
    MarketDataRequestReject = "Y"
    MassQuoteAcknowledgement = "b"
    MassQuote = "i"

  Fix44Pxm* = object
    beginString*: string
    bodyLength*: uint
    senderCompID*: string
    targetCompID*: string
    onBehalfOfCompID*: string
    msgSeqNum*: uint
    senderSubID*: string
    onBehalfOfSubID*: string
    sendingTime*: string
    case msgType*: MsgTypeKind
    of Heartbeat:
      hTestReqID*: string
    of TestRequest:
      trTestReqID*: string
    of ResendRequest:
      rrBeginSeqNo*: uint
      rrEndSeqNo*: uint
    of Reject:
      rRefSeqNum*: uint
      rRefTagID*: int
      rRefMsgType*: string
      rSessionRejectReason*: int
      rText*: string
    of SequenceReset:
      srGapFillFlag*: bool
      srNewSeqNo*: uint
    of Logout:
      lText*: string
    of ExecutionReport:
      erOrderID*: string
      erSecondaryClOrdID*: string
      erSecondaryExecID*: string
      erClOrdID*: string
      erExecID*: string
      erExecType*: char
      erOrdStatus*: char
      erAccount*: string
      erSettlDate*: string
      erSymbol*: string
      erIssuer*: string
      erSide*: char
      erOrderQty*: int
      erOrdType*: char
      erPrice*: float
      erCurrency*: string
      erTimeInForce*: char
      erLastQty*: int
      erLastPx*: float
      erLeavesQty*: int
      erCumQty*: int
      erAvgPx*: float
      erTransactTime*: string
      erMinQty*: int
      erText*: string
    of Logon:
      lEncryptMethod*: int
      lHeartBtInt*: int
      lResetSeqNumFlag*: bool
      lNoMsgTypes*: seq[NoMsgTypes]
      lUsername*: string
      lPassword*: string
    of News:
      nNoRelatedSym*: seq[NoRelatedSym]
      nNoLinesOfText*: seq[NoLinesOfText]
    of NewOrderSingle:
      nosClOrdID*: string
      nosSecondaryClOrdID*: string
      nosAccount*: string
      nosSettlDate*: string
      nosMinQty*: int
      nosSymbol*: string
      nosIssuer*: string
      nosSide*: char
      nosTransactTime*: string
      nosOrderQty*: int
      nosOrdType*: char
      nosPrice*: float
      nosCurrency*: string
      nosQuoteID*: string
      nosTimeInForce*: char
      nosText*: string
    of OrderCancelRequest:
      ocrOrderID*: string
      ocrClOrdID*: string
      ocrSecondaryClOrdID*: string
      ocrAccount*: string
      ocrSymbol*: string
      ocrIssuer*: string
      ocrSide*: char
      ocrTransactTime*: string
      ocrOrderQty*: int
      ocrText*: string
    of OrderStatusRequest:
      osrOrderID*: string
      osrClOrdID*: string
      osrSecondaryClOrdID*: string
      osrAccount*: string
      osrSymbol*: string
      osrIssuer*: string
      osrSide*: char
    of MarketDataRequest:
      mdrMDReqID*: string
      mdrSubscriptionRequestType*: char
      mdrMarketDepth*: int
      mdrNoMDEntryTypes*: seq[NoMDEntryTypes]
      mdrNoRelatedSym*: seq[NoRelatedSym]
    of MarketDataSnapshotFullRefresh:
      mdsfrMDReqID*: string
      mdsfrSymbol*: string
      mdsfrIssuer*: string
      mdsfrNoMDEntries*: seq[NoMDEntries]
    of MarketDataRequestReject:
      mdrrMDReqID*: string
      mdrrText*: string
    of MassQuoteAcknowledgement:
      mqaQuoteID*: string
      mqaAccount*: string
      mqaText*: string
      mqaNoQuoteSets*: seq[NoQuoteSets]
    of MassQuote:
      mqQuoteID*: string
      mqAccount*: string
      mqNoQuoteSets*: seq[NoQuoteSets]
    checkSum*: string

proc parseNoMsgTypes(s: string, r: var seq[NoMsgTypes], pos: var int)

proc parseNoRelatedSym(s: string, r: var seq[NoRelatedSym], pos: var int)

proc parseNoLinesOfText(s: string, r: var seq[NoLinesOfText], pos: var int)

proc parseNoMDEntryTypes(s: string, r: var seq[NoMDEntryTypes], pos: var int)

proc parseNoMDEntries(s: string, r: var seq[NoMDEntries], pos: var int)

proc parseNoQuoteSets(s: string, r: var seq[NoQuoteSets], pos: var int)

proc parseNoQuoteEntries(s: string, r: var seq[NoQuoteEntries], pos: var int)

proc parseNoMsgTypes(s: string, r: var seq[NoMsgTypes], pos: var int) =
  var
    t, sep: int
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
    t, sep: int
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
    t, sep: int
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

proc parseNoMDEntryTypes(s: string, r: var seq[NoMDEntryTypes], pos: var int) =
  var
    t, sep: int
    v: NoMDEntryTypes
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
    else:
      r.add v
      pos = j
      return

proc parseNoMDEntries(s: string, r: var seq[NoMDEntries], pos: var int) =
  var
    t, sep: int
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
    of 271: parseInt(s, v.mDEntrySize, pos)
    of 59: parseChar(s, v.timeInForce, pos)
    of 110: parseInt(s, v.minQty, pos)
    of 37: parseStr(s, v.orderID, pos)
    of 299: parseStr(s, v.quoteEntryID, pos)
    of 58: parseStr(s, v.text, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoQuoteSets(s: string, r: var seq[NoQuoteSets], pos: var int) =
  var
    t, sep: int
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
    t, sep: int
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
    of 134: parseInt(s, v.bidSize, pos)
    of 135: parseInt(s, v.offerSize, pos)
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

proc parseHeartbeat(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: int
  # result = Fix44Pxm(msgType: ("0", "Heartbeat"))
  result.msgType = Heartbeat
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
    of 112: parseStr(s, result.hTestReqID, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseTestRequest(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: int
  # result = Fix44Pxm(msgType: ("1", "TestRequest"))
  result.msgType = TestRequest
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
    of 112: parseStr(s, result.trTestReqID, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseResendRequest(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: int
  # result = Fix44Pxm(msgType: ("2", "ResendRequest"))
  result.msgType = ResendRequest
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
    of 7: parseUInt(s, result.rrBeginSeqNo, pos)
    of 16: parseUInt(s, result.rrEndSeqNo, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseReject(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: int
  # result = Fix44Pxm(msgType: ("3", "Reject"))
  result.msgType = Reject
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
    of 45: parseUInt(s, result.rRefSeqNum, pos)
    of 371: parseInt(s, result.rRefTagID, pos)
    of 372: parseStr(s, result.rRefMsgType, pos)
    of 373: parseInt(s, result.rSessionRejectReason, pos)
    of 58: parseStr(s, result.rText, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseSequenceReset(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: int
  # result = Fix44Pxm(msgType: ("4", "SequenceReset"))
  result.msgType = SequenceReset
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
    of 123: parseBool(s, result.srGapFillFlag, pos)
    of 36: parseUInt(s, result.srNewSeqNo, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseLogout(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: int
  # result = Fix44Pxm(msgType: ("5", "Logout"))
  result.msgType = Logout
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
    of 58: parseStr(s, result.lText, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseExecutionReport(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: int
  # result = Fix44Pxm(msgType: ("8", "ExecutionReport"))
  result.msgType = ExecutionReport
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
    of 37: parseStr(s, result.erOrderID, pos)
    of 526: parseStr(s, result.erSecondaryClOrdID, pos)
    of 527: parseStr(s, result.erSecondaryExecID, pos)
    of 11: parseStr(s, result.erClOrdID, pos)
    of 17: parseStr(s, result.erExecID, pos)
    of 150: parseChar(s, result.erExecType, pos)
    of 39: parseChar(s, result.erOrdStatus, pos)
    of 1: parseStr(s, result.erAccount, pos)
    of 64: parseStr(s, result.erSettlDate, pos)
    of 55: parseStr(s, result.erSymbol, pos)
    of 106: parseStr(s, result.erIssuer, pos)
    of 54: parseChar(s, result.erSide, pos)
    of 38: parseInt(s, result.erOrderQty, pos)
    of 40: parseChar(s, result.erOrdType, pos)
    of 44: parseFloat(s, result.erPrice, pos)
    of 15: parseStr(s, result.erCurrency, pos)
    of 59: parseChar(s, result.erTimeInForce, pos)
    of 32: parseInt(s, result.erLastQty, pos)
    of 31: parseFloat(s, result.erLastPx, pos)
    of 151: parseInt(s, result.erLeavesQty, pos)
    of 14: parseInt(s, result.erCumQty, pos)
    of 6: parseFloat(s, result.erAvgPx, pos)
    of 60: parseStr(s, result.erTransactTime, pos)
    of 110: parseInt(s, result.erMinQty, pos)
    of 58: parseStr(s, result.erText, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseLogon(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: int
  # result = Fix44Pxm(msgType: ("A", "Logon"))
  result.msgType = Logon
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
    of 98: parseInt(s, result.lEncryptMethod, pos)
    of 108: parseInt(s, result.lHeartBtInt, pos)
    of 141: parseBool(s, result.lResetSeqNumFlag, pos)
    of 384: skipValue(s, pos); parseNoMsgTypes(s, result.lNoMsgTypes, pos)
    of 553: parseStr(s, result.lUsername, pos)
    of 554: parseStr(s, result.lPassword, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseNews(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: int
  # result = Fix44Pxm(msgType: ("B", "News"))
  result.msgType = News
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
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.nNoRelatedSym, pos)
    of 33: skipValue(s, pos); parseNoLinesOfText(s, result.nNoLinesOfText, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseNewOrderSingle(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: int
  # result = Fix44Pxm(msgType: ("D", "NewOrderSingle"))
  result.msgType = NewOrderSingle
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
    of 11: parseStr(s, result.nosClOrdID, pos)
    of 526: parseStr(s, result.nosSecondaryClOrdID, pos)
    of 1: parseStr(s, result.nosAccount, pos)
    of 64: parseStr(s, result.nosSettlDate, pos)
    of 110: parseInt(s, result.nosMinQty, pos)
    of 55: parseStr(s, result.nosSymbol, pos)
    of 106: parseStr(s, result.nosIssuer, pos)
    of 54: parseChar(s, result.nosSide, pos)
    of 60: parseStr(s, result.nosTransactTime, pos)
    of 38: parseInt(s, result.nosOrderQty, pos)
    of 40: parseChar(s, result.nosOrdType, pos)
    of 44: parseFloat(s, result.nosPrice, pos)
    of 15: parseStr(s, result.nosCurrency, pos)
    of 117: parseStr(s, result.nosQuoteID, pos)
    of 59: parseChar(s, result.nosTimeInForce, pos)
    of 58: parseStr(s, result.nosText, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseOrderCancelRequest(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: int
  # result = Fix44Pxm(msgType: ("F", "OrderCancelRequest"))
  result.msgType = OrderCancelRequest
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
    of 37: parseStr(s, result.ocrOrderID, pos)
    of 11: parseStr(s, result.ocrClOrdID, pos)
    of 526: parseStr(s, result.ocrSecondaryClOrdID, pos)
    of 1: parseStr(s, result.ocrAccount, pos)
    of 55: parseStr(s, result.ocrSymbol, pos)
    of 106: parseStr(s, result.ocrIssuer, pos)
    of 54: parseChar(s, result.ocrSide, pos)
    of 60: parseStr(s, result.ocrTransactTime, pos)
    of 38: parseInt(s, result.ocrOrderQty, pos)
    of 58: parseStr(s, result.ocrText, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseOrderStatusRequest(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: int
  # result = Fix44Pxm(msgType: ("H", "OrderStatusRequest"))
  result.msgType = OrderStatusRequest
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
    of 37: parseStr(s, result.osrOrderID, pos)
    of 11: parseStr(s, result.osrClOrdID, pos)
    of 526: parseStr(s, result.osrSecondaryClOrdID, pos)
    of 1: parseStr(s, result.osrAccount, pos)
    of 55: parseStr(s, result.osrSymbol, pos)
    of 106: parseStr(s, result.osrIssuer, pos)
    of 54: parseChar(s, result.osrSide, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseMarketDataRequest(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: int
  # result = Fix44Pxm(msgType: ("V", "MarketDataRequest"))
  result.msgType = MarketDataRequest
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
    of 262: parseStr(s, result.mdrMDReqID, pos)
    of 263: parseChar(s, result.mdrSubscriptionRequestType, pos)
    of 264: parseInt(s, result.mdrMarketDepth, pos)
    of 267: skipValue(s, pos); parseNoMDEntryTypes(s, result.mdrNoMDEntryTypes, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.mdrNoRelatedSym, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseMarketDataSnapshotFullRefresh(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: int
  # result = Fix44Pxm(msgType: ("W", "MarketDataSnapshotFullRefresh"))
  result.msgType = MarketDataSnapshotFullRefresh
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
    of 262: parseStr(s, result.mdsfrMDReqID, pos)
    of 55: parseStr(s, result.mdsfrSymbol, pos)
    of 106: parseStr(s, result.mdsfrIssuer, pos)
    of 268: skipValue(s, pos); parseNoMDEntries(s, result.mdsfrNoMDEntries, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseMarketDataRequestReject(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: int
  # result = Fix44Pxm(msgType: ("Y", "MarketDataRequestReject"))
  result.msgType = MarketDataRequestReject
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
    of 262: parseStr(s, result.mdrrMDReqID, pos)
    of 58: parseStr(s, result.mdrrText, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseMassQuoteAcknowledgement(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: int
  # result = Fix44Pxm(msgType: ("b", "MassQuoteAcknowledgement"))
  result.msgType = MassQuoteAcknowledgement
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
    of 117: parseStr(s, result.mqaQuoteID, pos)
    of 1: parseStr(s, result.mqaAccount, pos)
    of 58: parseStr(s, result.mqaText, pos)
    of 296: skipValue(s, pos); parseNoQuoteSets(s, result.mqaNoQuoteSets, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseMassQuote(s: string, result: var Fix44Pxm, pos: var int) =
  var
    t: int
  # result = Fix44Pxm(msgType: ("i", "MassQuote"))
  result.msgType = MassQuote
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
    of 117: parseStr(s, result.mqQuoteID, pos)
    of 1: parseStr(s, result.mqAccount, pos)
    of 296: skipValue(s, pos); parseNoQuoteSets(s, result.mqNoQuoteSets, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseFix44Pxm*(s: string): Fix44Pxm =
  var
    t: int
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
      of "0": parseHeartbeat(s, result, pos)
      of "1": parseTestRequest(s, result, pos)
      of "2": parseResendRequest(s, result, pos)
      of "3": parseReject(s, result, pos)
      of "4": parseSequenceReset(s, result, pos)
      of "5": parseLogout(s, result, pos)
      of "8": parseExecutionReport(s, result, pos)
      of "A": parseLogon(s, result, pos)
      of "B": parseNews(s, result, pos)
      of "D": parseNewOrderSingle(s, result, pos)
      of "F": parseOrderCancelRequest(s, result, pos)
      of "H": parseOrderStatusRequest(s, result, pos)
      of "V": parseMarketDataRequest(s, result, pos)
      of "W": parseMarketDataSnapshotFullRefresh(s, result, pos)
      of "Y": parseMarketDataRequestReject(s, result, pos)
      of "b": parseMassQuoteAcknowledgement(s, result, pos)
      of "i": parseMassQuote(s, result, pos)
    else: raise newException(ValueError, "unexpected header field: " & $t)

