include parsefix

type
  NoIOIQualifiers* = object
    iOIQualifier*: char

  NoRoutingIDs* = object
    routingType*: int
    routingID*: string

  NoContraBrokers* = object
    contraBroker*: string
    contraTrader*: string
    contraTradeQty*: int
    contraTradeTime*: string

  NoMsgTypes* = object
    refMsgType*: string
    msgDirection*: char

  NoRelatedSym* = object
    relatdSym*: string
    symbolSfx*: string
    securityID*: string
    iDSource*: string
    securityType*: string
    maturityMonthYear*: string
    maturityDay*: uint
    putOrCall*: int
    strikePrice*: float
    optAttribute*: char
    contractMultiplier*: string
    couponRate*: string
    securityExchange*: string
    issuer*: string
    encodedIssuerLen*: uint
    encodedIssuer*: string
    securityDesc*: string
    encodedSecurityDescLen*: uint
    encodedSecurityDesc*: string
    symbol*: string
    prevClosePx*: float
    quoteRequestType*: int
    tradingSessionID*: string
    side*: char
    orderQty*: int
    futSettDate*: string
    ordType*: char
    futSettDate2*: string
    orderQty2*: int
    expireTime*: string
    transactTime*: string
    currency*: string
    underlyingSymbol*: string
    underlyingSymbolSfx*: string
    underlyingSecurityID*: string
    underlyingIDSource*: string
    underlyingSecurityType*: string
    underlyingMaturityMonthYear*: string
    underlyingMaturityDay*: uint
    underlyingPutOrCall*: int
    underlyingStrikePrice*: float
    underlyingOptAttribute*: char
    underlyingContractMultiplier*: string
    underlyingCouponRate*: string
    underlyingSecurityExchange*: string
    underlyingIssuer*: string
    encodedUnderlyingIssuerLen*: uint
    encodedUnderlyingIssuer*: string
    underlyingSecurityDesc*: string
    encodedUnderlyingSecurityDescLen*: uint
    encodedUnderlyingSecurityDesc*: string
    ratioQty*: int
    underlyingCurrency*: string

  LinesOfText* = object
    text*: string
    encodedTextLen*: uint
    encodedText*: string

  NoAllocs* = object
    allocAccount*: string
    allocShares*: int
    allocPrice*: float
    processCode*: char
    brokerOfCredit*: string
    notifyBrokerOfCredit*: bool
    allocHandlInst*: int
    allocText*: string
    encodedAllocTextLen*: uint
    encodedAllocText*: string
    execBroker*: string
    clientID*: string
    commission*: uint
    commType*: char
    allocAvgPx*: float
    allocNetMoney*: uint
    settlCurrAmt*: uint
    settlCurrency*: string
    settlCurrFxRate*: string
    settlCurrFxRateCalc*: char
    accruedInterestAmt*: uint
    settlInstMode*: char
    noMiscFees*: seq[NoMiscFees]

  NoTradingSessions* = object
    tradingSessionID*: string

  NoOrders* = object
    clOrdID*: string
    listSeqNo*: int
    settlInstMode*: char
    clientID*: string
    execBroker*: string
    account*: string
    noAllocs*: seq[NoAllocs]
    settlmntTyp*: char
    futSettDate*: string
    handlInst*: char
    execInst*: string
    minQty*: int
    maxFloor*: int
    exDestination*: string
    noTradingSessions*: seq[NoTradingSessions]
    processCode*: char
    symbol*: string
    symbolSfx*: string
    securityID*: string
    iDSource*: string
    securityType*: string
    maturityMonthYear*: string
    maturityDay*: uint
    putOrCall*: int
    strikePrice*: float
    optAttribute*: char
    contractMultiplier*: string
    couponRate*: string
    securityExchange*: string
    issuer*: string
    encodedIssuerLen*: uint
    encodedIssuer*: string
    securityDesc*: string
    encodedSecurityDescLen*: uint
    encodedSecurityDesc*: string
    prevClosePx*: float
    side*: char
    sideValueInd*: int
    locateReqd*: bool
    transactTime*: string
    orderQty*: int
    cashOrderQty*: int
    ordType*: char
    price*: float
    stopPx*: float
    currency*: string
    complianceID*: string
    solicitedFlag*: bool
    iOIid*: string
    quoteID*: string
    timeInForce*: char
    effectiveTime*: string
    expireDate*: string
    expireTime*: string
    gTBookingInst*: int
    commission*: uint
    commType*: char
    rule80A*: char
    forexReq*: bool
    settlCurrency*: string
    text*: string
    encodedTextLen*: uint
    encodedText*: string
    futSettDate2*: string
    orderQty2*: int
    openClose*: char
    coveredOrUncovered*: int
    customerOrFirm*: int
    maxShow*: int
    pegDifference*: float
    discretionInst*: char
    discretionOffset*: float
    clearingFirm*: string
    clearingAccount*: string
    orderID*: string
    secondaryOrderID*: string
    listID*: string
    waveNo*: string
    cumQty*: int
    ordStatus*: char
    leavesQty*: int
    cxlQty*: int
    avgPx*: float
    ordRejReason*: int

  NoExecs* = object
    lastShares*: int
    execID*: string
    lastPx*: float
    lastCapacity*: char

  NoMiscFees* = object
    miscFeeAmt*: uint
    miscFeeCurr*: string
    miscFeeType*: char

  NoMDEntryTypes* = object
    mDEntryType*: char

  NoMDEntries* = object
    mDEntryType*: char
    mDEntryPx*: float
    currency*: string
    mDEntrySize*: int
    mDEntryDate*: string
    mDEntryTime*: string
    tickDirection*: char
    mDMkt*: string
    tradingSessionID*: string
    quoteCondition*: string
    tradeCondition*: string
    mDEntryOriginator*: string
    locationID*: string
    deskID*: string
    openCloseSettleFlag*: char
    timeInForce*: char
    expireDate*: string
    expireTime*: string
    minQty*: int
    execInst*: string
    sellerDays*: int
    orderID*: string
    quoteEntryID*: string
    mDEntryBuyer*: string
    mDEntrySeller*: string
    numberOfOrders*: int
    mDEntryPositionNo*: int
    text*: string
    encodedTextLen*: uint
    encodedText*: string
    mDUpdateAction*: char
    deleteReason*: char
    mDEntryID*: string
    mDEntryRefID*: string
    symbol*: string
    symbolSfx*: string
    securityID*: string
    iDSource*: string
    securityType*: string
    maturityMonthYear*: string
    maturityDay*: uint
    putOrCall*: int
    strikePrice*: float
    optAttribute*: char
    contractMultiplier*: string
    couponRate*: string
    securityExchange*: string
    issuer*: string
    encodedIssuerLen*: uint
    encodedIssuer*: string
    securityDesc*: string
    encodedSecurityDescLen*: uint
    encodedSecurityDesc*: string
    financialStatus*: char
    corporateAction*: char
    totalVolumeTraded*: int

  NoQuoteSets* = object
    quoteSetID*: string
    underlyingSymbol*: string
    underlyingSymbolSfx*: string
    underlyingSecurityID*: string
    underlyingIDSource*: string
    underlyingSecurityType*: string
    underlyingMaturityMonthYear*: string
    underlyingMaturityDay*: uint
    underlyingPutOrCall*: int
    underlyingStrikePrice*: float
    underlyingOptAttribute*: char
    underlyingContractMultiplier*: string
    underlyingCouponRate*: string
    underlyingSecurityExchange*: string
    underlyingIssuer*: string
    encodedUnderlyingIssuerLen*: uint
    encodedUnderlyingIssuer*: string
    underlyingSecurityDesc*: string
    encodedUnderlyingSecurityDescLen*: uint
    encodedUnderlyingSecurityDesc*: string
    totQuoteEntries*: int
    noQuoteEntries*: seq[NoQuoteEntries]
    quoteSetValidUntilTime*: string

  NoQuoteEntries* = object
    symbol*: string
    symbolSfx*: string
    securityID*: string
    iDSource*: string
    securityType*: string
    maturityMonthYear*: string
    maturityDay*: uint
    putOrCall*: int
    strikePrice*: float
    optAttribute*: char
    contractMultiplier*: string
    couponRate*: string
    securityExchange*: string
    issuer*: string
    encodedIssuerLen*: uint
    encodedIssuer*: string
    securityDesc*: string
    encodedSecurityDescLen*: uint
    encodedSecurityDesc*: string
    underlyingSymbol*: string
    quoteEntryID*: string
    quoteEntryRejectReason*: int
    bidPx*: float
    offerPx*: float
    bidSize*: int
    offerSize*: int
    validUntilTime*: string
    bidSpotRate*: float
    offerSpotRate*: float
    bidForwardPoints*: float
    offerForwardPoints*: float
    transactTime*: string
    tradingSessionID*: string
    futSettDate*: string
    ordType*: char
    futSettDate2*: string
    orderQty2*: int
    currency*: string

  NoBidDescriptors* = object
    bidDescriptorType*: int
    bidDescriptor*: string
    sideValueInd*: int
    liquidityValue*: uint
    liquidityNumSecurities*: int
    liquidityPctLow*: string
    liquidityPctHigh*: string
    eFPTrackingError*: string
    fairValue*: uint
    outsideIndexPct*: string
    valueOfFutures*: uint

  NoBidComponents* = object
    listID*: string
    side*: char
    tradingSessionID*: string
    netGrossInd*: int
    settlmntTyp*: char
    futSettDate*: string
    account*: string
    commission*: uint
    commType*: char
    country*: string
    price*: float
    priceType*: int
    fairValue*: uint
    text*: string
    encodedTextLen*: uint
    encodedText*: string

  NoStrikes* = object
    symbol*: string
    symbolSfx*: string
    securityID*: string
    iDSource*: string
    securityType*: string
    maturityMonthYear*: string
    maturityDay*: uint
    putOrCall*: int
    strikePrice*: float
    optAttribute*: char
    contractMultiplier*: string
    couponRate*: string
    securityExchange*: string
    issuer*: string
    encodedIssuerLen*: uint
    encodedIssuer*: string
    securityDesc*: string
    encodedSecurityDescLen*: uint
    encodedSecurityDesc*: string
    prevClosePx*: float
    clOrdID*: string
    side*: char
    price*: float
    currency*: string
    text*: string
    encodedTextLen*: uint
    encodedText*: string

  MsgTypeKind* = enum
    Heartbeat = "0"
    TestRequest = "1"
    ResendRequest = "2"
    Reject = "3"
    SequenceReset = "4"
    Logout = "5"
    IOI = "6"
    Advertisement = "7"
    ExecutionReport = "8"
    OrderCancelReject = "9"
    Logon = "A"
    News = "B"
    Email = "C"
    NewOrderSingle = "D"
    NewOrderList = "E"
    OrderCancelRequest = "F"
    OrderCancelReplaceRequest = "G"
    OrderStatusRequest = "H"
    Allocation = "J"
    ListCancelRequest = "K"
    ListExecute = "L"
    ListStatusRequest = "M"
    ListStatus = "N"
    AllocationInstructionAck = "P"
    DontKnowTrade = "Q"
    QuoteRequest = "R"
    Quote = "S"
    SettlementInstructions = "T"
    MarketDataRequest = "V"
    MarketDataSnapshotFullRefresh = "W"
    MarketDataIncrementalRefresh = "X"
    MarketDataRequestReject = "Y"
    QuoteCancel = "Z"
    QuoteStatusRequest = "a"
    QuoteAcknowledgement = "b"
    SecurityDefinitionRequest = "c"
    SecurityDefinition = "d"
    SecurityStatusRequest = "e"
    SecurityStatus = "f"
    TradingSessionStatusRequest = "g"
    TradingSessionStatus = "h"
    MassQuote = "i"
    BusinessMessageReject = "j"
    BidRequest = "k"
    BidResponse = "l"
    ListStrikePrice = "m"

  Fix42* = object
    beginString*: string
    bodyLength*: int
    senderCompID*: string
    targetCompID*: string
    onBehalfOfCompID*: string
    deliverToCompID*: string
    secureDataLen*: uint
    secureData*: string
    msgSeqNum*: int
    senderSubID*: string
    senderLocationID*: string
    targetSubID*: string
    targetLocationID*: string
    onBehalfOfSubID*: string
    onBehalfOfLocationID*: string
    deliverToSubID*: string
    deliverToLocationID*: string
    possDupFlag*: bool
    possResend*: bool
    sendingTime*: string
    origSendingTime*: string
    xmlDataLen*: uint
    xmlData*: string
    messageEncoding*: string
    lastMsgSeqNumProcessed*: int
    onBehalfOfSendingTime*: string
    case msgType*: MsgTypeKind
    of Heartbeat:
      hTestReqID*: string
    of TestRequest:
      trTestReqID*: string
    of ResendRequest:
      rrBeginSeqNo*: int
      rrEndSeqNo*: int
    of Reject:
      rRefSeqNum*: int
      rRefTagID*: int
      rRefMsgType*: string
      rSessionRejectReason*: int
      rText*: string
      rEncodedTextLen*: uint
      rEncodedText*: string
    of SequenceReset:
      srGapFillFlag*: bool
      srNewSeqNo*: int
    of Logout:
      lText*: string
      lEncodedTextLen*: uint
      lEncodedText*: string
    of IOI:
      ioiIOIid*: string
      ioiIOITransType*: char
      ioiIOIRefID*: string
      ioiSymbol*: string
      ioiSymbolSfx*: string
      ioiSecurityID*: string
      ioiIDSource*: string
      ioiSecurityType*: string
      ioiMaturityMonthYear*: string
      ioiMaturityDay*: uint
      ioiPutOrCall*: int
      ioiStrikePrice*: float
      ioiOptAttribute*: char
      ioiContractMultiplier*: string
      ioiCouponRate*: string
      ioiSecurityExchange*: string
      ioiIssuer*: string
      ioiEncodedIssuerLen*: uint
      ioiEncodedIssuer*: string
      ioiSecurityDesc*: string
      ioiEncodedSecurityDescLen*: uint
      ioiEncodedSecurityDesc*: string
      ioiSide*: char
      ioiIOIShares*: string
      ioiPrice*: float
      ioiCurrency*: string
      ioiValidUntilTime*: string
      ioiIOIQltyInd*: char
      ioiIOINaturalFlag*: bool
      ioiNoIOIQualifiers*: seq[NoIOIQualifiers]
      ioiText*: string
      ioiEncodedTextLen*: uint
      ioiEncodedText*: string
      ioiTransactTime*: string
      ioiURLLink*: string
      ioiNoRoutingIDs*: seq[NoRoutingIDs]
      ioiSpreadToBenchmark*: float
      ioiBenchmark*: char
    of Advertisement:
      aAdvId*: string
      aAdvTransType*: string
      aAdvRefID*: string
      aSymbol*: string
      aSymbolSfx*: string
      aSecurityID*: string
      aIDSource*: string
      aSecurityType*: string
      aMaturityMonthYear*: string
      aMaturityDay*: uint
      aPutOrCall*: int
      aStrikePrice*: float
      aOptAttribute*: char
      aContractMultiplier*: string
      aCouponRate*: string
      aSecurityExchange*: string
      aIssuer*: string
      aEncodedIssuerLen*: uint
      aEncodedIssuer*: string
      aSecurityDesc*: string
      aEncodedSecurityDescLen*: uint
      aEncodedSecurityDesc*: string
      aAdvSide*: char
      aShares*: int
      aPrice*: float
      aCurrency*: string
      aTradeDate*: string
      aTransactTime*: string
      aText*: string
      aEncodedTextLen*: uint
      aEncodedText*: string
      aURLLink*: string
      aLastMkt*: string
      aTradingSessionID*: string
    of ExecutionReport:
      erOrderID*: string
      erSecondaryOrderID*: string
      erClOrdID*: string
      erOrigClOrdID*: string
      erClientID*: string
      erExecBroker*: string
      erNoContraBrokers*: seq[NoContraBrokers]
      erListID*: string
      erExecID*: string
      erExecTransType*: char
      erExecRefID*: string
      erExecType*: char
      erOrdStatus*: char
      erOrdRejReason*: int
      erExecRestatementReason*: int
      erAccount*: string
      erSettlmntTyp*: char
      erFutSettDate*: string
      erSymbol*: string
      erSymbolSfx*: string
      erSecurityID*: string
      erIDSource*: string
      erSecurityType*: string
      erMaturityMonthYear*: string
      erMaturityDay*: uint
      erPutOrCall*: int
      erStrikePrice*: float
      erOptAttribute*: char
      erContractMultiplier*: string
      erCouponRate*: string
      erSecurityExchange*: string
      erIssuer*: string
      erEncodedIssuerLen*: uint
      erEncodedIssuer*: string
      erSecurityDesc*: string
      erEncodedSecurityDescLen*: uint
      erEncodedSecurityDesc*: string
      erSide*: char
      erOrderQty*: int
      erCashOrderQty*: int
      erOrdType*: char
      erPrice*: float
      erStopPx*: float
      erPegDifference*: float
      erDiscretionInst*: char
      erDiscretionOffset*: float
      erCurrency*: string
      erComplianceID*: string
      erSolicitedFlag*: bool
      erTimeInForce*: char
      erEffectiveTime*: string
      erExpireDate*: string
      erExpireTime*: string
      erExecInst*: string
      erRule80A*: char
      erLastShares*: int
      erLastPx*: float
      erLastSpotRate*: float
      erLastForwardPoints*: float
      erLastMkt*: string
      erTradingSessionID*: string
      erLastCapacity*: char
      erLeavesQty*: int
      erCumQty*: int
      erAvgPx*: float
      erDayOrderQty*: int
      erDayCumQty*: int
      erDayAvgPx*: float
      erGTBookingInst*: int
      erTradeDate*: string
      erTransactTime*: string
      erReportToExch*: bool
      erCommission*: uint
      erCommType*: char
      erGrossTradeAmt*: uint
      erSettlCurrAmt*: uint
      erSettlCurrency*: string
      erSettlCurrFxRate*: string
      erSettlCurrFxRateCalc*: char
      erHandlInst*: char
      erMinQty*: int
      erMaxFloor*: int
      erOpenClose*: char
      erMaxShow*: int
      erText*: string
      erEncodedTextLen*: uint
      erEncodedText*: string
      erFutSettDate2*: string
      erOrderQty2*: int
      erClearingFirm*: string
      erClearingAccount*: string
      erMultiLegReportingType*: char
    of OrderCancelReject:
      ocrOrderID*: string
      ocrSecondaryOrderID*: string
      ocrClOrdID*: string
      ocrOrigClOrdID*: string
      ocrOrdStatus*: char
      ocrClientID*: string
      ocrExecBroker*: string
      ocrListID*: string
      ocrAccount*: string
      ocrTransactTime*: string
      ocrCxlRejResponseTo*: char
      ocrCxlRejReason*: int
      ocrText*: string
      ocrEncodedTextLen*: uint
      ocrEncodedText*: string
    of Logon:
      lEncryptMethod*: int
      lHeartBtInt*: int
      lRawDataLength*: uint
      lRawData*: string
      lResetSeqNumFlag*: bool
      lMaxMessageSize*: int
      lNoMsgTypes*: seq[NoMsgTypes]
    of News:
      nOrigTime*: string
      nUrgency*: char
      nHeadline*: string
      nEncodedHeadlineLen*: uint
      nEncodedHeadline*: string
      nNoRoutingIDs*: seq[NoRoutingIDs]
      nNoRelatedSym*: seq[NoRelatedSym]
      nLinesOfText*: seq[LinesOfText]
      nURLLink*: string
      nRawDataLength*: uint
      nRawData*: string
    of Email:
      eEmailThreadID*: string
      eEmailType*: char
      eOrigTime*: string
      eSubject*: string
      eEncodedSubjectLen*: uint
      eEncodedSubject*: string
      eNoRoutingIDs*: seq[NoRoutingIDs]
      eNoRelatedSym*: seq[NoRelatedSym]
      eOrderID*: string
      eClOrdID*: string
      eLinesOfText*: seq[LinesOfText]
      eRawDataLength*: uint
      eRawData*: string
    of NewOrderSingle:
      nosClOrdID*: string
      nosClientID*: string
      nosExecBroker*: string
      nosAccount*: string
      nosNoAllocs*: seq[NoAllocs]
      nosSettlmntTyp*: char
      nosFutSettDate*: string
      nosHandlInst*: char
      nosExecInst*: string
      nosMinQty*: int
      nosMaxFloor*: int
      nosExDestination*: string
      nosNoTradingSessions*: seq[NoTradingSessions]
      nosProcessCode*: char
      nosSymbol*: string
      nosSymbolSfx*: string
      nosSecurityID*: string
      nosIDSource*: string
      nosSecurityType*: string
      nosMaturityMonthYear*: string
      nosMaturityDay*: uint
      nosPutOrCall*: int
      nosStrikePrice*: float
      nosOptAttribute*: char
      nosContractMultiplier*: string
      nosCouponRate*: string
      nosSecurityExchange*: string
      nosIssuer*: string
      nosEncodedIssuerLen*: uint
      nosEncodedIssuer*: string
      nosSecurityDesc*: string
      nosEncodedSecurityDescLen*: uint
      nosEncodedSecurityDesc*: string
      nosPrevClosePx*: float
      nosSide*: char
      nosLocateReqd*: bool
      nosTransactTime*: string
      nosOrderQty*: int
      nosCashOrderQty*: int
      nosOrdType*: char
      nosPrice*: float
      nosStopPx*: float
      nosCurrency*: string
      nosComplianceID*: string
      nosSolicitedFlag*: bool
      nosIOIid*: string
      nosQuoteID*: string
      nosTimeInForce*: char
      nosEffectiveTime*: string
      nosExpireDate*: string
      nosExpireTime*: string
      nosGTBookingInst*: int
      nosCommission*: uint
      nosCommType*: char
      nosRule80A*: char
      nosForexReq*: bool
      nosSettlCurrency*: string
      nosText*: string
      nosEncodedTextLen*: uint
      nosEncodedText*: string
      nosFutSettDate2*: string
      nosOrderQty2*: int
      nosOpenClose*: char
      nosCoveredOrUncovered*: int
      nosCustomerOrFirm*: int
      nosMaxShow*: int
      nosPegDifference*: float
      nosDiscretionInst*: char
      nosDiscretionOffset*: float
      nosClearingFirm*: string
      nosClearingAccount*: string
    of NewOrderList:
      nolListID*: string
      nolBidID*: string
      nolClientBidID*: string
      nolProgRptReqs*: int
      nolBidType*: int
      nolProgPeriodInterval*: int
      nolListExecInstType*: char
      nolListExecInst*: string
      nolEncodedListExecInstLen*: uint
      nolEncodedListExecInst*: string
      nolTotNoOrders*: int
      nolNoOrders*: seq[NoOrders]
    of OrderCancelRequest:
      ocrOrigClOrdID*: string
      ocrOrderID*: string
      ocrClOrdID*: string
      ocrListID*: string
      ocrAccount*: string
      ocrClientID*: string
      ocrExecBroker*: string
      ocrSymbol*: string
      ocrSymbolSfx*: string
      ocrSecurityID*: string
      ocrIDSource*: string
      ocrSecurityType*: string
      ocrMaturityMonthYear*: string
      ocrMaturityDay*: uint
      ocrPutOrCall*: int
      ocrStrikePrice*: float
      ocrOptAttribute*: char
      ocrContractMultiplier*: string
      ocrCouponRate*: string
      ocrSecurityExchange*: string
      ocrIssuer*: string
      ocrEncodedIssuerLen*: uint
      ocrEncodedIssuer*: string
      ocrSecurityDesc*: string
      ocrEncodedSecurityDescLen*: uint
      ocrEncodedSecurityDesc*: string
      ocrSide*: char
      ocrTransactTime*: string
      ocrOrderQty*: int
      ocrCashOrderQty*: int
      ocrComplianceID*: string
      ocrSolicitedFlag*: bool
      ocrText*: string
      ocrEncodedTextLen*: uint
      ocrEncodedText*: string
    of OrderCancelReplaceRequest:
      ocrrOrderID*: string
      ocrrClientID*: string
      ocrrExecBroker*: string
      ocrrOrigClOrdID*: string
      ocrrClOrdID*: string
      ocrrListID*: string
      ocrrAccount*: string
      ocrrNoAllocs*: seq[NoAllocs]
      ocrrSettlmntTyp*: char
      ocrrFutSettDate*: string
      ocrrHandlInst*: char
      ocrrExecInst*: string
      ocrrMinQty*: int
      ocrrMaxFloor*: int
      ocrrExDestination*: string
      ocrrNoTradingSessions*: seq[NoTradingSessions]
      ocrrSymbol*: string
      ocrrSymbolSfx*: string
      ocrrSecurityID*: string
      ocrrIDSource*: string
      ocrrSecurityType*: string
      ocrrMaturityMonthYear*: string
      ocrrMaturityDay*: uint
      ocrrPutOrCall*: int
      ocrrStrikePrice*: float
      ocrrOptAttribute*: char
      ocrrContractMultiplier*: string
      ocrrCouponRate*: string
      ocrrSecurityExchange*: string
      ocrrIssuer*: string
      ocrrEncodedIssuerLen*: uint
      ocrrEncodedIssuer*: string
      ocrrSecurityDesc*: string
      ocrrEncodedSecurityDescLen*: uint
      ocrrEncodedSecurityDesc*: string
      ocrrSide*: char
      ocrrTransactTime*: string
      ocrrOrderQty*: int
      ocrrCashOrderQty*: int
      ocrrOrdType*: char
      ocrrPrice*: float
      ocrrStopPx*: float
      ocrrPegDifference*: float
      ocrrDiscretionInst*: char
      ocrrDiscretionOffset*: float
      ocrrComplianceID*: string
      ocrrSolicitedFlag*: bool
      ocrrCurrency*: string
      ocrrTimeInForce*: char
      ocrrEffectiveTime*: string
      ocrrExpireDate*: string
      ocrrExpireTime*: string
      ocrrGTBookingInst*: int
      ocrrCommission*: uint
      ocrrCommType*: char
      ocrrRule80A*: char
      ocrrForexReq*: bool
      ocrrSettlCurrency*: string
      ocrrText*: string
      ocrrEncodedTextLen*: uint
      ocrrEncodedText*: string
      ocrrFutSettDate2*: string
      ocrrOrderQty2*: int
      ocrrOpenClose*: char
      ocrrCoveredOrUncovered*: int
      ocrrCustomerOrFirm*: int
      ocrrMaxShow*: int
      ocrrLocateReqd*: bool
      ocrrClearingFirm*: string
      ocrrClearingAccount*: string
    of OrderStatusRequest:
      osrOrderID*: string
      osrClOrdID*: string
      osrClientID*: string
      osrAccount*: string
      osrExecBroker*: string
      osrSymbol*: string
      osrSymbolSfx*: string
      osrSecurityID*: string
      osrIDSource*: string
      osrSecurityType*: string
      osrMaturityMonthYear*: string
      osrMaturityDay*: uint
      osrPutOrCall*: int
      osrStrikePrice*: float
      osrOptAttribute*: char
      osrContractMultiplier*: string
      osrCouponRate*: string
      osrSecurityExchange*: string
      osrIssuer*: string
      osrEncodedIssuerLen*: uint
      osrEncodedIssuer*: string
      osrSecurityDesc*: string
      osrEncodedSecurityDescLen*: uint
      osrEncodedSecurityDesc*: string
      osrSide*: char
    of Allocation:
      aAllocID*: string
      aAllocTransType*: char
      aRefAllocID*: string
      aAllocLinkID*: string
      aAllocLinkType*: int
      aNoOrders*: seq[NoOrders]
      aNoExecs*: seq[NoExecs]
      aSide*: char
      aSymbol*: string
      aSymbolSfx*: string
      aSecurityID*: string
      aIDSource*: string
      aSecurityType*: string
      aMaturityMonthYear*: string
      aMaturityDay*: uint
      aPutOrCall*: int
      aStrikePrice*: float
      aOptAttribute*: char
      aContractMultiplier*: string
      aCouponRate*: string
      aSecurityExchange*: string
      aIssuer*: string
      aEncodedIssuerLen*: uint
      aEncodedIssuer*: string
      aSecurityDesc*: string
      aEncodedSecurityDescLen*: uint
      aEncodedSecurityDesc*: string
      aShares*: int
      aLastMkt*: string
      aTradingSessionID*: string
      aAvgPx*: float
      aCurrency*: string
      aAvgPrxPrecision*: int
      aTradeDate*: string
      aTransactTime*: string
      aSettlmntTyp*: char
      aFutSettDate*: string
      aGrossTradeAmt*: uint
      aNetMoney*: uint
      aOpenClose*: char
      aText*: string
      aEncodedTextLen*: uint
      aEncodedText*: string
      aNumDaysInterest*: int
      aAccruedInterestRate*: string
      aNoAllocs*: seq[NoAllocs]
    of ListCancelRequest:
      lcrListID*: string
      lcrTransactTime*: string
      lcrText*: string
      lcrEncodedTextLen*: uint
      lcrEncodedText*: string
    of ListExecute:
      leListID*: string
      leClientBidID*: string
      leBidID*: string
      leTransactTime*: string
      leText*: string
      leEncodedTextLen*: uint
      leEncodedText*: string
    of ListStatusRequest:
      lsrListID*: string
      lsrText*: string
      lsrEncodedTextLen*: uint
      lsrEncodedText*: string
    of ListStatus:
      lsListID*: string
      lsListStatusType*: int
      lsNoRpts*: int
      lsListOrderStatus*: int
      lsRptSeq*: int
      lsListStatusText*: string
      lsEncodedListStatusTextLen*: uint
      lsEncodedListStatusText*: string
      lsTransactTime*: string
      lsTotNoOrders*: int
      lsNoOrders*: seq[NoOrders]
    of AllocationInstructionAck:
      aiaClientID*: string
      aiaExecBroker*: string
      aiaAllocID*: string
      aiaTradeDate*: string
      aiaTransactTime*: string
      aiaAllocStatus*: int
      aiaAllocRejCode*: int
      aiaText*: string
      aiaEncodedTextLen*: uint
      aiaEncodedText*: string
    of DontKnowTrade:
      dktOrderID*: string
      dktExecID*: string
      dktDKReason*: char
      dktSymbol*: string
      dktSymbolSfx*: string
      dktSecurityID*: string
      dktIDSource*: string
      dktSecurityType*: string
      dktMaturityMonthYear*: string
      dktMaturityDay*: uint
      dktPutOrCall*: int
      dktStrikePrice*: float
      dktOptAttribute*: char
      dktContractMultiplier*: string
      dktCouponRate*: string
      dktSecurityExchange*: string
      dktIssuer*: string
      dktEncodedIssuerLen*: uint
      dktEncodedIssuer*: string
      dktSecurityDesc*: string
      dktEncodedSecurityDescLen*: uint
      dktEncodedSecurityDesc*: string
      dktSide*: char
      dktOrderQty*: int
      dktCashOrderQty*: int
      dktLastShares*: int
      dktLastPx*: float
      dktText*: string
      dktEncodedTextLen*: uint
      dktEncodedText*: string
    of QuoteRequest:
      qrQuoteReqID*: string
      qrNoRelatedSym*: seq[NoRelatedSym]
    of Quote:
      qQuoteReqID*: string
      qQuoteID*: string
      qQuoteResponseLevel*: int
      qTradingSessionID*: string
      qSymbol*: string
      qSymbolSfx*: string
      qSecurityID*: string
      qIDSource*: string
      qSecurityType*: string
      qMaturityMonthYear*: string
      qMaturityDay*: uint
      qPutOrCall*: int
      qStrikePrice*: float
      qOptAttribute*: char
      qContractMultiplier*: string
      qCouponRate*: string
      qSecurityExchange*: string
      qIssuer*: string
      qEncodedIssuerLen*: uint
      qEncodedIssuer*: string
      qSecurityDesc*: string
      qEncodedSecurityDescLen*: uint
      qEncodedSecurityDesc*: string
      qBidPx*: float
      qOfferPx*: float
      qBidSize*: int
      qOfferSize*: int
      qValidUntilTime*: string
      qBidSpotRate*: float
      qOfferSpotRate*: float
      qBidForwardPoints*: float
      qOfferForwardPoints*: float
      qTransactTime*: string
      qFutSettDate*: string
      qOrdType*: char
      qFutSettDate2*: string
      qOrderQty2*: int
      qCurrency*: string
    of SettlementInstructions:
      siSettlInstID*: string
      siSettlInstTransType*: char
      siSettlInstRefID*: string
      siSettlInstMode*: char
      siSettlInstSource*: char
      siAllocAccount*: string
      siSettlLocation*: string
      siTradeDate*: string
      siAllocID*: string
      siLastMkt*: string
      siTradingSessionID*: string
      siSide*: char
      siSecurityType*: string
      siEffectiveTime*: string
      siTransactTime*: string
      siClientID*: string
      siExecBroker*: string
      siStandInstDbType*: int
      siStandInstDbName*: string
      siStandInstDbID*: string
      siSettlDeliveryType*: int
      siSettlDepositoryCode*: string
      siSettlBrkrCode*: string
      siSettlInstCode*: string
      siSecuritySettlAgentName*: string
      siSecuritySettlAgentCode*: string
      siSecuritySettlAgentAcctNum*: string
      siSecuritySettlAgentAcctName*: string
      siSecuritySettlAgentContactName*: string
      siSecuritySettlAgentContactPhone*: string
      siCashSettlAgentName*: string
      siCashSettlAgentCode*: string
      siCashSettlAgentAcctNum*: string
      siCashSettlAgentAcctName*: string
      siCashSettlAgentContactName*: string
      siCashSettlAgentContactPhone*: string
    of MarketDataRequest:
      mdrMDReqID*: string
      mdrSubscriptionRequestType*: char
      mdrMarketDepth*: int
      mdrMDUpdateType*: int
      mdrAggregatedBook*: bool
      mdrNoMDEntryTypes*: seq[NoMDEntryTypes]
      mdrNoRelatedSym*: seq[NoRelatedSym]
    of MarketDataSnapshotFullRefresh:
      mdsfrMDReqID*: string
      mdsfrSymbol*: string
      mdsfrSymbolSfx*: string
      mdsfrSecurityID*: string
      mdsfrIDSource*: string
      mdsfrSecurityType*: string
      mdsfrMaturityMonthYear*: string
      mdsfrMaturityDay*: uint
      mdsfrPutOrCall*: int
      mdsfrStrikePrice*: float
      mdsfrOptAttribute*: char
      mdsfrContractMultiplier*: string
      mdsfrCouponRate*: string
      mdsfrSecurityExchange*: string
      mdsfrIssuer*: string
      mdsfrEncodedIssuerLen*: uint
      mdsfrEncodedIssuer*: string
      mdsfrSecurityDesc*: string
      mdsfrEncodedSecurityDescLen*: uint
      mdsfrEncodedSecurityDesc*: string
      mdsfrFinancialStatus*: char
      mdsfrCorporateAction*: char
      mdsfrTotalVolumeTraded*: int
      mdsfrNoMDEntries*: seq[NoMDEntries]
    of MarketDataIncrementalRefresh:
      mdirMDReqID*: string
      mdirNoMDEntries*: seq[NoMDEntries]
    of MarketDataRequestReject:
      mdrrMDReqID*: string
      mdrrMDReqRejReason*: char
      mdrrText*: string
      mdrrEncodedTextLen*: uint
      mdrrEncodedText*: string
    of QuoteCancel:
      qcQuoteReqID*: string
      qcQuoteID*: string
      qcQuoteCancelType*: int
      qcQuoteResponseLevel*: int
      qcTradingSessionID*: string
      qcNoQuoteEntries*: seq[NoQuoteEntries]
    of QuoteStatusRequest:
      qsrQuoteID*: string
      qsrSymbol*: string
      qsrSymbolSfx*: string
      qsrSecurityID*: string
      qsrIDSource*: string
      qsrSecurityType*: string
      qsrMaturityMonthYear*: string
      qsrMaturityDay*: uint
      qsrPutOrCall*: int
      qsrStrikePrice*: float
      qsrOptAttribute*: char
      qsrContractMultiplier*: string
      qsrCouponRate*: string
      qsrSecurityExchange*: string
      qsrIssuer*: string
      qsrEncodedIssuerLen*: uint
      qsrEncodedIssuer*: string
      qsrSecurityDesc*: string
      qsrEncodedSecurityDescLen*: uint
      qsrEncodedSecurityDesc*: string
      qsrSide*: char
      qsrTradingSessionID*: string
    of QuoteAcknowledgement:
      qaQuoteReqID*: string
      qaQuoteID*: string
      qaQuoteAckStatus*: int
      qaQuoteRejectReason*: int
      qaQuoteResponseLevel*: int
      qaTradingSessionID*: string
      qaText*: string
      qaNoQuoteSets*: seq[NoQuoteSets]
    of SecurityDefinitionRequest:
      sdrSecurityReqID*: string
      sdrSecurityRequestType*: int
      sdrSymbol*: string
      sdrSymbolSfx*: string
      sdrSecurityID*: string
      sdrIDSource*: string
      sdrSecurityType*: string
      sdrMaturityMonthYear*: string
      sdrMaturityDay*: uint
      sdrPutOrCall*: int
      sdrStrikePrice*: float
      sdrOptAttribute*: char
      sdrContractMultiplier*: string
      sdrCouponRate*: string
      sdrSecurityExchange*: string
      sdrIssuer*: string
      sdrEncodedIssuerLen*: uint
      sdrEncodedIssuer*: string
      sdrSecurityDesc*: string
      sdrEncodedSecurityDescLen*: uint
      sdrEncodedSecurityDesc*: string
      sdrCurrency*: string
      sdrText*: string
      sdrEncodedTextLen*: uint
      sdrEncodedText*: string
      sdrTradingSessionID*: string
      sdrNoRelatedSym*: seq[NoRelatedSym]
    of SecurityDefinition:
      sdSecurityReqID*: string
      sdSecurityResponseID*: string
      sdSecurityResponseType*: int
      sdTotalNumSecurities*: int
      sdSymbol*: string
      sdSymbolSfx*: string
      sdSecurityID*: string
      sdIDSource*: string
      sdSecurityType*: string
      sdMaturityMonthYear*: string
      sdMaturityDay*: uint
      sdPutOrCall*: int
      sdStrikePrice*: float
      sdOptAttribute*: char
      sdContractMultiplier*: string
      sdCouponRate*: string
      sdSecurityExchange*: string
      sdIssuer*: string
      sdEncodedIssuerLen*: uint
      sdEncodedIssuer*: string
      sdSecurityDesc*: string
      sdEncodedSecurityDescLen*: uint
      sdEncodedSecurityDesc*: string
      sdCurrency*: string
      sdTradingSessionID*: string
      sdText*: string
      sdEncodedTextLen*: uint
      sdEncodedText*: string
      sdNoRelatedSym*: seq[NoRelatedSym]
    of SecurityStatusRequest:
      ssrSecurityStatusReqID*: string
      ssrSymbol*: string
      ssrSymbolSfx*: string
      ssrSecurityID*: string
      ssrIDSource*: string
      ssrSecurityType*: string
      ssrMaturityMonthYear*: string
      ssrMaturityDay*: uint
      ssrPutOrCall*: int
      ssrStrikePrice*: float
      ssrOptAttribute*: char
      ssrContractMultiplier*: string
      ssrCouponRate*: string
      ssrSecurityExchange*: string
      ssrIssuer*: string
      ssrEncodedIssuerLen*: uint
      ssrEncodedIssuer*: string
      ssrSecurityDesc*: string
      ssrEncodedSecurityDescLen*: uint
      ssrEncodedSecurityDesc*: string
      ssrCurrency*: string
      ssrSubscriptionRequestType*: char
      ssrTradingSessionID*: string
    of SecurityStatus:
      ssSecurityStatusReqID*: string
      ssSymbol*: string
      ssSymbolSfx*: string
      ssSecurityID*: string
      ssIDSource*: string
      ssSecurityType*: string
      ssMaturityMonthYear*: string
      ssMaturityDay*: uint
      ssPutOrCall*: int
      ssStrikePrice*: float
      ssOptAttribute*: char
      ssContractMultiplier*: string
      ssCouponRate*: string
      ssSecurityExchange*: string
      ssIssuer*: string
      ssEncodedIssuerLen*: uint
      ssEncodedIssuer*: string
      ssSecurityDesc*: string
      ssEncodedSecurityDescLen*: uint
      ssEncodedSecurityDesc*: string
      ssCurrency*: string
      ssTradingSessionID*: string
      ssUnsolicitedIndicator*: bool
      ssSecurityTradingStatus*: int
      ssFinancialStatus*: char
      ssCorporateAction*: char
      ssHaltReasonChar*: char
      ssInViewOfCommon*: bool
      ssDueToRelated*: bool
      ssBuyVolume*: int
      ssSellVolume*: int
      ssHighPx*: float
      ssLowPx*: float
      ssLastPx*: float
      ssTransactTime*: string
      ssAdjustment*: int
    of TradingSessionStatusRequest:
      tssrTradSesReqID*: string
      tssrTradingSessionID*: string
      tssrTradSesMethod*: int
      tssrTradSesMode*: int
      tssrSubscriptionRequestType*: char
    of TradingSessionStatus:
      tssTradSesReqID*: string
      tssTradingSessionID*: string
      tssTradSesMethod*: int
      tssTradSesMode*: int
      tssUnsolicitedIndicator*: bool
      tssTradSesStatus*: int
      tssTradSesStartTime*: string
      tssTradSesOpenTime*: string
      tssTradSesPreCloseTime*: string
      tssTradSesCloseTime*: string
      tssTradSesEndTime*: string
      tssTotalVolumeTraded*: int
      tssText*: string
      tssEncodedTextLen*: uint
      tssEncodedText*: string
    of MassQuote:
      mqQuoteReqID*: string
      mqQuoteID*: string
      mqQuoteResponseLevel*: int
      mqDefBidSize*: int
      mqDefOfferSize*: int
      mqNoQuoteSets*: seq[NoQuoteSets]
    of BusinessMessageReject:
      bmrRefSeqNum*: int
      bmrRefMsgType*: string
      bmrBusinessRejectRefID*: string
      bmrBusinessRejectReason*: int
      bmrText*: string
      bmrEncodedTextLen*: uint
      bmrEncodedText*: string
    of BidRequest:
      brBidID*: string
      brClientBidID*: string
      brBidRequestTransType*: char
      brListName*: string
      brTotalNumSecurities*: int
      brBidType*: int
      brNumTickets*: int
      brCurrency*: string
      brSideValue1*: uint
      brSideValue2*: uint
      brNoBidDescriptors*: seq[NoBidDescriptors]
      brNoBidComponents*: seq[NoBidComponents]
      brLiquidityIndType*: int
      brWtAverageLiquidity*: string
      brExchangeForPhysical*: bool
      brOutMainCntryUIndex*: uint
      brCrossPercent*: string
      brProgRptReqs*: int
      brProgPeriodInterval*: int
      brIncTaxInd*: int
      brForexReq*: bool
      brNumBidders*: int
      brTradeDate*: string
      brTradeType*: char
      brBasisPxType*: char
      brStrikeTime*: string
      brText*: string
      brEncodedTextLen*: uint
      brEncodedText*: string
    of BidResponse:
      brBidID*: string
      brClientBidID*: string
      brNoBidComponents*: seq[NoBidComponents]
    of ListStrikePrice:
      lspListID*: string
      lspTotNoStrikes*: int
      lspNoStrikes*: seq[NoStrikes]
    signatureLength*: uint
    signature*: string
    checkSum*: string

proc parseNoIOIQualifiers(s: string, r: var seq[NoIOIQualifiers], pos: var int)

proc parseNoRoutingIDs(s: string, r: var seq[NoRoutingIDs], pos: var int)

proc parseNoContraBrokers(s: string, r: var seq[NoContraBrokers], pos: var int)

proc parseNoMsgTypes(s: string, r: var seq[NoMsgTypes], pos: var int)

proc parseNoRelatedSym(s: string, r: var seq[NoRelatedSym], pos: var int)

proc parseLinesOfText(s: string, r: var seq[LinesOfText], pos: var int)

proc parseNoAllocs(s: string, r: var seq[NoAllocs], pos: var int)

proc parseNoTradingSessions(s: string, r: var seq[NoTradingSessions], pos: var int)

proc parseNoOrders(s: string, r: var seq[NoOrders], pos: var int)

proc parseNoExecs(s: string, r: var seq[NoExecs], pos: var int)

proc parseNoMiscFees(s: string, r: var seq[NoMiscFees], pos: var int)

proc parseNoMDEntryTypes(s: string, r: var seq[NoMDEntryTypes], pos: var int)

proc parseNoMDEntries(s: string, r: var seq[NoMDEntries], pos: var int)

proc parseNoQuoteSets(s: string, r: var seq[NoQuoteSets], pos: var int)

proc parseNoQuoteEntries(s: string, r: var seq[NoQuoteEntries], pos: var int)

proc parseNoBidDescriptors(s: string, r: var seq[NoBidDescriptors], pos: var int)

proc parseNoBidComponents(s: string, r: var seq[NoBidComponents], pos: var int)

proc parseNoStrikes(s: string, r: var seq[NoStrikes], pos: var int)

proc parseNoIOIQualifiers(s: string, r: var seq[NoIOIQualifiers], pos: var int) =
  var
    t, sep: int
    v: NoIOIQualifiers
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
    of 104: parseChar(s, v.iOIQualifier, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoRoutingIDs(s: string, r: var seq[NoRoutingIDs], pos: var int) =
  var
    t, sep: int
    v: NoRoutingIDs
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
    of 216: parseInt(s, v.routingType, pos)
    of 217: parseStr(s, v.routingID, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoContraBrokers(s: string, r: var seq[NoContraBrokers], pos: var int) =
  var
    t, sep: int
    v: NoContraBrokers
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
    of 375: parseStr(s, v.contraBroker, pos)
    of 337: parseStr(s, v.contraTrader, pos)
    of 437: parseInt(s, v.contraTradeQty, pos)
    of 438: parseStr(s, v.contraTradeTime, pos)
    else:
      r.add v
      pos = j
      return

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
    of 385: parseChar(s, v.msgDirection, pos)
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
    of 46: parseStr(s, v.relatdSym, pos)
    of 65: parseStr(s, v.symbolSfx, pos)
    of 48: parseStr(s, v.securityID, pos)
    of 22: parseStr(s, v.iDSource, pos)
    of 167: parseStr(s, v.securityType, pos)
    of 200: parseStr(s, v.maturityMonthYear, pos)
    of 205: parseUInt(s, v.maturityDay, pos)
    of 201: parseInt(s, v.putOrCall, pos)
    of 202: parseFloat(s, v.strikePrice, pos)
    of 206: parseChar(s, v.optAttribute, pos)
    of 231: parseStr(s, v.contractMultiplier, pos)
    of 223: parseStr(s, v.couponRate, pos)
    of 207: parseStr(s, v.securityExchange, pos)
    of 106: parseStr(s, v.issuer, pos)
    of 348: parseUInt(s, v.encodedIssuerLen, pos)
    of 349: parseStr(s, v.encodedIssuer, pos)
    of 107: parseStr(s, v.securityDesc, pos)
    of 350: parseUInt(s, v.encodedSecurityDescLen, pos)
    of 351: parseStr(s, v.encodedSecurityDesc, pos)
    of 55: parseStr(s, v.symbol, pos)
    of 140: parseFloat(s, v.prevClosePx, pos)
    of 303: parseInt(s, v.quoteRequestType, pos)
    of 336: parseStr(s, v.tradingSessionID, pos)
    of 54: parseChar(s, v.side, pos)
    of 38: parseInt(s, v.orderQty, pos)
    of 64: parseStr(s, v.futSettDate, pos)
    of 40: parseChar(s, v.ordType, pos)
    of 193: parseStr(s, v.futSettDate2, pos)
    of 192: parseInt(s, v.orderQty2, pos)
    of 126: parseStr(s, v.expireTime, pos)
    of 60: parseStr(s, v.transactTime, pos)
    of 15: parseStr(s, v.currency, pos)
    of 311: parseStr(s, v.underlyingSymbol, pos)
    of 312: parseStr(s, v.underlyingSymbolSfx, pos)
    of 309: parseStr(s, v.underlyingSecurityID, pos)
    of 305: parseStr(s, v.underlyingIDSource, pos)
    of 310: parseStr(s, v.underlyingSecurityType, pos)
    of 313: parseStr(s, v.underlyingMaturityMonthYear, pos)
    of 314: parseUInt(s, v.underlyingMaturityDay, pos)
    of 315: parseInt(s, v.underlyingPutOrCall, pos)
    of 316: parseFloat(s, v.underlyingStrikePrice, pos)
    of 317: parseChar(s, v.underlyingOptAttribute, pos)
    of 436: parseStr(s, v.underlyingContractMultiplier, pos)
    of 435: parseStr(s, v.underlyingCouponRate, pos)
    of 308: parseStr(s, v.underlyingSecurityExchange, pos)
    of 306: parseStr(s, v.underlyingIssuer, pos)
    of 362: parseUInt(s, v.encodedUnderlyingIssuerLen, pos)
    of 363: parseStr(s, v.encodedUnderlyingIssuer, pos)
    of 307: parseStr(s, v.underlyingSecurityDesc, pos)
    of 364: parseUInt(s, v.encodedUnderlyingSecurityDescLen, pos)
    of 365: parseStr(s, v.encodedUnderlyingSecurityDesc, pos)
    of 319: parseInt(s, v.ratioQty, pos)
    of 318: parseStr(s, v.underlyingCurrency, pos)
    else:
      r.add v
      pos = j
      return

proc parseLinesOfText(s: string, r: var seq[LinesOfText], pos: var int) =
  var
    t, sep: int
    v: LinesOfText
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
    of 354: parseUInt(s, v.encodedTextLen, pos)
    of 355: parseStr(s, v.encodedText, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoAllocs(s: string, r: var seq[NoAllocs], pos: var int) =
  var
    t, sep: int
    v: NoAllocs
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
    of 79: parseStr(s, v.allocAccount, pos)
    of 80: parseInt(s, v.allocShares, pos)
    of 366: parseFloat(s, v.allocPrice, pos)
    of 81: parseChar(s, v.processCode, pos)
    of 92: parseStr(s, v.brokerOfCredit, pos)
    of 208: parseBool(s, v.notifyBrokerOfCredit, pos)
    of 209: parseInt(s, v.allocHandlInst, pos)
    of 161: parseStr(s, v.allocText, pos)
    of 360: parseUInt(s, v.encodedAllocTextLen, pos)
    of 361: parseStr(s, v.encodedAllocText, pos)
    of 76: parseStr(s, v.execBroker, pos)
    of 109: parseStr(s, v.clientID, pos)
    of 12: parseUInt(s, v.commission, pos)
    of 13: parseChar(s, v.commType, pos)
    of 153: parseFloat(s, v.allocAvgPx, pos)
    of 154: parseUInt(s, v.allocNetMoney, pos)
    of 119: parseUInt(s, v.settlCurrAmt, pos)
    of 120: parseStr(s, v.settlCurrency, pos)
    of 155: parseStr(s, v.settlCurrFxRate, pos)
    of 156: parseChar(s, v.settlCurrFxRateCalc, pos)
    of 159: parseUInt(s, v.accruedInterestAmt, pos)
    of 160: parseChar(s, v.settlInstMode, pos)
    of 136: skipValue(s, pos); parseNoMiscFees(s, v.noMiscFees, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoTradingSessions(s: string, r: var seq[NoTradingSessions], pos: var int) =
  var
    t, sep: int
    v: NoTradingSessions
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
    of 336: parseStr(s, v.tradingSessionID, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoOrders(s: string, r: var seq[NoOrders], pos: var int) =
  var
    t, sep: int
    v: NoOrders
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
    of 11: parseStr(s, v.clOrdID, pos)
    of 67: parseInt(s, v.listSeqNo, pos)
    of 160: parseChar(s, v.settlInstMode, pos)
    of 109: parseStr(s, v.clientID, pos)
    of 76: parseStr(s, v.execBroker, pos)
    of 1: parseStr(s, v.account, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, v.noAllocs, pos)
    of 63: parseChar(s, v.settlmntTyp, pos)
    of 64: parseStr(s, v.futSettDate, pos)
    of 21: parseChar(s, v.handlInst, pos)
    of 18: parseStr(s, v.execInst, pos)
    of 110: parseInt(s, v.minQty, pos)
    of 111: parseInt(s, v.maxFloor, pos)
    of 100: parseStr(s, v.exDestination, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, v.noTradingSessions, pos)
    of 81: parseChar(s, v.processCode, pos)
    of 55: parseStr(s, v.symbol, pos)
    of 65: parseStr(s, v.symbolSfx, pos)
    of 48: parseStr(s, v.securityID, pos)
    of 22: parseStr(s, v.iDSource, pos)
    of 167: parseStr(s, v.securityType, pos)
    of 200: parseStr(s, v.maturityMonthYear, pos)
    of 205: parseUInt(s, v.maturityDay, pos)
    of 201: parseInt(s, v.putOrCall, pos)
    of 202: parseFloat(s, v.strikePrice, pos)
    of 206: parseChar(s, v.optAttribute, pos)
    of 231: parseStr(s, v.contractMultiplier, pos)
    of 223: parseStr(s, v.couponRate, pos)
    of 207: parseStr(s, v.securityExchange, pos)
    of 106: parseStr(s, v.issuer, pos)
    of 348: parseUInt(s, v.encodedIssuerLen, pos)
    of 349: parseStr(s, v.encodedIssuer, pos)
    of 107: parseStr(s, v.securityDesc, pos)
    of 350: parseUInt(s, v.encodedSecurityDescLen, pos)
    of 351: parseStr(s, v.encodedSecurityDesc, pos)
    of 140: parseFloat(s, v.prevClosePx, pos)
    of 54: parseChar(s, v.side, pos)
    of 401: parseInt(s, v.sideValueInd, pos)
    of 114: parseBool(s, v.locateReqd, pos)
    of 60: parseStr(s, v.transactTime, pos)
    of 38: parseInt(s, v.orderQty, pos)
    of 152: parseInt(s, v.cashOrderQty, pos)
    of 40: parseChar(s, v.ordType, pos)
    of 44: parseFloat(s, v.price, pos)
    of 99: parseFloat(s, v.stopPx, pos)
    of 15: parseStr(s, v.currency, pos)
    of 376: parseStr(s, v.complianceID, pos)
    of 377: parseBool(s, v.solicitedFlag, pos)
    of 23: parseStr(s, v.iOIid, pos)
    of 117: parseStr(s, v.quoteID, pos)
    of 59: parseChar(s, v.timeInForce, pos)
    of 168: parseStr(s, v.effectiveTime, pos)
    of 432: parseStr(s, v.expireDate, pos)
    of 126: parseStr(s, v.expireTime, pos)
    of 427: parseInt(s, v.gTBookingInst, pos)
    of 12: parseUInt(s, v.commission, pos)
    of 13: parseChar(s, v.commType, pos)
    of 47: parseChar(s, v.rule80A, pos)
    of 121: parseBool(s, v.forexReq, pos)
    of 120: parseStr(s, v.settlCurrency, pos)
    of 58: parseStr(s, v.text, pos)
    of 354: parseUInt(s, v.encodedTextLen, pos)
    of 355: parseStr(s, v.encodedText, pos)
    of 193: parseStr(s, v.futSettDate2, pos)
    of 192: parseInt(s, v.orderQty2, pos)
    of 77: parseChar(s, v.openClose, pos)
    of 203: parseInt(s, v.coveredOrUncovered, pos)
    of 204: parseInt(s, v.customerOrFirm, pos)
    of 210: parseInt(s, v.maxShow, pos)
    of 211: parseFloat(s, v.pegDifference, pos)
    of 388: parseChar(s, v.discretionInst, pos)
    of 389: parseFloat(s, v.discretionOffset, pos)
    of 439: parseStr(s, v.clearingFirm, pos)
    of 440: parseStr(s, v.clearingAccount, pos)
    of 37: parseStr(s, v.orderID, pos)
    of 198: parseStr(s, v.secondaryOrderID, pos)
    of 66: parseStr(s, v.listID, pos)
    of 105: parseStr(s, v.waveNo, pos)
    of 14: parseInt(s, v.cumQty, pos)
    of 39: parseChar(s, v.ordStatus, pos)
    of 151: parseInt(s, v.leavesQty, pos)
    of 84: parseInt(s, v.cxlQty, pos)
    of 6: parseFloat(s, v.avgPx, pos)
    of 103: parseInt(s, v.ordRejReason, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoExecs(s: string, r: var seq[NoExecs], pos: var int) =
  var
    t, sep: int
    v: NoExecs
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
    of 32: parseInt(s, v.lastShares, pos)
    of 17: parseStr(s, v.execID, pos)
    of 31: parseFloat(s, v.lastPx, pos)
    of 29: parseChar(s, v.lastCapacity, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoMiscFees(s: string, r: var seq[NoMiscFees], pos: var int) =
  var
    t, sep: int
    v: NoMiscFees
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
    of 137: parseUInt(s, v.miscFeeAmt, pos)
    of 138: parseStr(s, v.miscFeeCurr, pos)
    of 139: parseChar(s, v.miscFeeType, pos)
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
    of 272: parseStr(s, v.mDEntryDate, pos)
    of 273: parseStr(s, v.mDEntryTime, pos)
    of 274: parseChar(s, v.tickDirection, pos)
    of 275: parseStr(s, v.mDMkt, pos)
    of 336: parseStr(s, v.tradingSessionID, pos)
    of 276: parseStr(s, v.quoteCondition, pos)
    of 277: parseStr(s, v.tradeCondition, pos)
    of 282: parseStr(s, v.mDEntryOriginator, pos)
    of 283: parseStr(s, v.locationID, pos)
    of 284: parseStr(s, v.deskID, pos)
    of 286: parseChar(s, v.openCloseSettleFlag, pos)
    of 59: parseChar(s, v.timeInForce, pos)
    of 432: parseStr(s, v.expireDate, pos)
    of 126: parseStr(s, v.expireTime, pos)
    of 110: parseInt(s, v.minQty, pos)
    of 18: parseStr(s, v.execInst, pos)
    of 287: parseInt(s, v.sellerDays, pos)
    of 37: parseStr(s, v.orderID, pos)
    of 299: parseStr(s, v.quoteEntryID, pos)
    of 288: parseStr(s, v.mDEntryBuyer, pos)
    of 289: parseStr(s, v.mDEntrySeller, pos)
    of 346: parseInt(s, v.numberOfOrders, pos)
    of 290: parseInt(s, v.mDEntryPositionNo, pos)
    of 58: parseStr(s, v.text, pos)
    of 354: parseUInt(s, v.encodedTextLen, pos)
    of 355: parseStr(s, v.encodedText, pos)
    of 279: parseChar(s, v.mDUpdateAction, pos)
    of 285: parseChar(s, v.deleteReason, pos)
    of 278: parseStr(s, v.mDEntryID, pos)
    of 280: parseStr(s, v.mDEntryRefID, pos)
    of 55: parseStr(s, v.symbol, pos)
    of 65: parseStr(s, v.symbolSfx, pos)
    of 48: parseStr(s, v.securityID, pos)
    of 22: parseStr(s, v.iDSource, pos)
    of 167: parseStr(s, v.securityType, pos)
    of 200: parseStr(s, v.maturityMonthYear, pos)
    of 205: parseUInt(s, v.maturityDay, pos)
    of 201: parseInt(s, v.putOrCall, pos)
    of 202: parseFloat(s, v.strikePrice, pos)
    of 206: parseChar(s, v.optAttribute, pos)
    of 231: parseStr(s, v.contractMultiplier, pos)
    of 223: parseStr(s, v.couponRate, pos)
    of 207: parseStr(s, v.securityExchange, pos)
    of 106: parseStr(s, v.issuer, pos)
    of 348: parseUInt(s, v.encodedIssuerLen, pos)
    of 349: parseStr(s, v.encodedIssuer, pos)
    of 107: parseStr(s, v.securityDesc, pos)
    of 350: parseUInt(s, v.encodedSecurityDescLen, pos)
    of 351: parseStr(s, v.encodedSecurityDesc, pos)
    of 291: parseChar(s, v.financialStatus, pos)
    of 292: parseChar(s, v.corporateAction, pos)
    of 387: parseInt(s, v.totalVolumeTraded, pos)
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
    of 311: parseStr(s, v.underlyingSymbol, pos)
    of 312: parseStr(s, v.underlyingSymbolSfx, pos)
    of 309: parseStr(s, v.underlyingSecurityID, pos)
    of 305: parseStr(s, v.underlyingIDSource, pos)
    of 310: parseStr(s, v.underlyingSecurityType, pos)
    of 313: parseStr(s, v.underlyingMaturityMonthYear, pos)
    of 314: parseUInt(s, v.underlyingMaturityDay, pos)
    of 315: parseInt(s, v.underlyingPutOrCall, pos)
    of 316: parseFloat(s, v.underlyingStrikePrice, pos)
    of 317: parseChar(s, v.underlyingOptAttribute, pos)
    of 436: parseStr(s, v.underlyingContractMultiplier, pos)
    of 435: parseStr(s, v.underlyingCouponRate, pos)
    of 308: parseStr(s, v.underlyingSecurityExchange, pos)
    of 306: parseStr(s, v.underlyingIssuer, pos)
    of 362: parseUInt(s, v.encodedUnderlyingIssuerLen, pos)
    of 363: parseStr(s, v.encodedUnderlyingIssuer, pos)
    of 307: parseStr(s, v.underlyingSecurityDesc, pos)
    of 364: parseUInt(s, v.encodedUnderlyingSecurityDescLen, pos)
    of 365: parseStr(s, v.encodedUnderlyingSecurityDesc, pos)
    of 304: parseInt(s, v.totQuoteEntries, pos)
    of 295: skipValue(s, pos); parseNoQuoteEntries(s, v.noQuoteEntries, pos)
    of 367: parseStr(s, v.quoteSetValidUntilTime, pos)
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
    of 55: parseStr(s, v.symbol, pos)
    of 65: parseStr(s, v.symbolSfx, pos)
    of 48: parseStr(s, v.securityID, pos)
    of 22: parseStr(s, v.iDSource, pos)
    of 167: parseStr(s, v.securityType, pos)
    of 200: parseStr(s, v.maturityMonthYear, pos)
    of 205: parseUInt(s, v.maturityDay, pos)
    of 201: parseInt(s, v.putOrCall, pos)
    of 202: parseFloat(s, v.strikePrice, pos)
    of 206: parseChar(s, v.optAttribute, pos)
    of 231: parseStr(s, v.contractMultiplier, pos)
    of 223: parseStr(s, v.couponRate, pos)
    of 207: parseStr(s, v.securityExchange, pos)
    of 106: parseStr(s, v.issuer, pos)
    of 348: parseUInt(s, v.encodedIssuerLen, pos)
    of 349: parseStr(s, v.encodedIssuer, pos)
    of 107: parseStr(s, v.securityDesc, pos)
    of 350: parseUInt(s, v.encodedSecurityDescLen, pos)
    of 351: parseStr(s, v.encodedSecurityDesc, pos)
    of 311: parseStr(s, v.underlyingSymbol, pos)
    of 299: parseStr(s, v.quoteEntryID, pos)
    of 368: parseInt(s, v.quoteEntryRejectReason, pos)
    of 132: parseFloat(s, v.bidPx, pos)
    of 133: parseFloat(s, v.offerPx, pos)
    of 134: parseInt(s, v.bidSize, pos)
    of 135: parseInt(s, v.offerSize, pos)
    of 62: parseStr(s, v.validUntilTime, pos)
    of 188: parseFloat(s, v.bidSpotRate, pos)
    of 190: parseFloat(s, v.offerSpotRate, pos)
    of 189: parseFloat(s, v.bidForwardPoints, pos)
    of 191: parseFloat(s, v.offerForwardPoints, pos)
    of 60: parseStr(s, v.transactTime, pos)
    of 336: parseStr(s, v.tradingSessionID, pos)
    of 64: parseStr(s, v.futSettDate, pos)
    of 40: parseChar(s, v.ordType, pos)
    of 193: parseStr(s, v.futSettDate2, pos)
    of 192: parseInt(s, v.orderQty2, pos)
    of 15: parseStr(s, v.currency, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoBidDescriptors(s: string, r: var seq[NoBidDescriptors], pos: var int) =
  var
    t, sep: int
    v: NoBidDescriptors
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
    of 399: parseInt(s, v.bidDescriptorType, pos)
    of 400: parseStr(s, v.bidDescriptor, pos)
    of 401: parseInt(s, v.sideValueInd, pos)
    of 404: parseUInt(s, v.liquidityValue, pos)
    of 441: parseInt(s, v.liquidityNumSecurities, pos)
    of 402: parseStr(s, v.liquidityPctLow, pos)
    of 403: parseStr(s, v.liquidityPctHigh, pos)
    of 405: parseStr(s, v.eFPTrackingError, pos)
    of 406: parseUInt(s, v.fairValue, pos)
    of 407: parseStr(s, v.outsideIndexPct, pos)
    of 408: parseUInt(s, v.valueOfFutures, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoBidComponents(s: string, r: var seq[NoBidComponents], pos: var int) =
  var
    t, sep: int
    v: NoBidComponents
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
    of 66: parseStr(s, v.listID, pos)
    of 54: parseChar(s, v.side, pos)
    of 336: parseStr(s, v.tradingSessionID, pos)
    of 430: parseInt(s, v.netGrossInd, pos)
    of 63: parseChar(s, v.settlmntTyp, pos)
    of 64: parseStr(s, v.futSettDate, pos)
    of 1: parseStr(s, v.account, pos)
    of 12: parseUInt(s, v.commission, pos)
    of 13: parseChar(s, v.commType, pos)
    of 421: parseStr(s, v.country, pos)
    of 44: parseFloat(s, v.price, pos)
    of 423: parseInt(s, v.priceType, pos)
    of 406: parseUInt(s, v.fairValue, pos)
    of 58: parseStr(s, v.text, pos)
    of 354: parseUInt(s, v.encodedTextLen, pos)
    of 355: parseStr(s, v.encodedText, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoStrikes(s: string, r: var seq[NoStrikes], pos: var int) =
  var
    t, sep: int
    v: NoStrikes
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
    of 65: parseStr(s, v.symbolSfx, pos)
    of 48: parseStr(s, v.securityID, pos)
    of 22: parseStr(s, v.iDSource, pos)
    of 167: parseStr(s, v.securityType, pos)
    of 200: parseStr(s, v.maturityMonthYear, pos)
    of 205: parseUInt(s, v.maturityDay, pos)
    of 201: parseInt(s, v.putOrCall, pos)
    of 202: parseFloat(s, v.strikePrice, pos)
    of 206: parseChar(s, v.optAttribute, pos)
    of 231: parseStr(s, v.contractMultiplier, pos)
    of 223: parseStr(s, v.couponRate, pos)
    of 207: parseStr(s, v.securityExchange, pos)
    of 106: parseStr(s, v.issuer, pos)
    of 348: parseUInt(s, v.encodedIssuerLen, pos)
    of 349: parseStr(s, v.encodedIssuer, pos)
    of 107: parseStr(s, v.securityDesc, pos)
    of 350: parseUInt(s, v.encodedSecurityDescLen, pos)
    of 351: parseStr(s, v.encodedSecurityDesc, pos)
    of 140: parseFloat(s, v.prevClosePx, pos)
    of 11: parseStr(s, v.clOrdID, pos)
    of 54: parseChar(s, v.side, pos)
    of 44: parseFloat(s, v.price, pos)
    of 15: parseStr(s, v.currency, pos)
    of 58: parseStr(s, v.text, pos)
    of 354: parseUInt(s, v.encodedTextLen, pos)
    of 355: parseStr(s, v.encodedText, pos)
    else:
      r.add v
      pos = j
      return

proc parseHeartbeat(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("0", "Heartbeat"))
  result.msgType = Heartbeat
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 112: parseStr(s, result.hTestReqID, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseTestRequest(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("1", "TestRequest"))
  result.msgType = TestRequest
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 112: parseStr(s, result.trTestReqID, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseResendRequest(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("2", "ResendRequest"))
  result.msgType = ResendRequest
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 7: parseInt(s, result.rrBeginSeqNo, pos)
    of 16: parseInt(s, result.rrEndSeqNo, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseReject(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("3", "Reject"))
  result.msgType = Reject
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 45: parseInt(s, result.rRefSeqNum, pos)
    of 371: parseInt(s, result.rRefTagID, pos)
    of 372: parseStr(s, result.rRefMsgType, pos)
    of 373: parseInt(s, result.rSessionRejectReason, pos)
    of 58: parseStr(s, result.rText, pos)
    of 354: parseUInt(s, result.rEncodedTextLen, pos)
    of 355: parseStr(s, result.rEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseSequenceReset(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("4", "SequenceReset"))
  result.msgType = SequenceReset
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 123: parseBool(s, result.srGapFillFlag, pos)
    of 36: parseInt(s, result.srNewSeqNo, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseLogout(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("5", "Logout"))
  result.msgType = Logout
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 58: parseStr(s, result.lText, pos)
    of 354: parseUInt(s, result.lEncodedTextLen, pos)
    of 355: parseStr(s, result.lEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseIOI(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("6", "IOI"))
  result.msgType = IOI
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 23: parseStr(s, result.ioiIOIid, pos)
    of 28: parseChar(s, result.ioiIOITransType, pos)
    of 26: parseStr(s, result.ioiIOIRefID, pos)
    of 55: parseStr(s, result.ioiSymbol, pos)
    of 65: parseStr(s, result.ioiSymbolSfx, pos)
    of 48: parseStr(s, result.ioiSecurityID, pos)
    of 22: parseStr(s, result.ioiIDSource, pos)
    of 167: parseStr(s, result.ioiSecurityType, pos)
    of 200: parseStr(s, result.ioiMaturityMonthYear, pos)
    of 205: parseUInt(s, result.ioiMaturityDay, pos)
    of 201: parseInt(s, result.ioiPutOrCall, pos)
    of 202: parseFloat(s, result.ioiStrikePrice, pos)
    of 206: parseChar(s, result.ioiOptAttribute, pos)
    of 231: parseStr(s, result.ioiContractMultiplier, pos)
    of 223: parseStr(s, result.ioiCouponRate, pos)
    of 207: parseStr(s, result.ioiSecurityExchange, pos)
    of 106: parseStr(s, result.ioiIssuer, pos)
    of 348: parseUInt(s, result.ioiEncodedIssuerLen, pos)
    of 349: parseStr(s, result.ioiEncodedIssuer, pos)
    of 107: parseStr(s, result.ioiSecurityDesc, pos)
    of 350: parseUInt(s, result.ioiEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.ioiEncodedSecurityDesc, pos)
    of 54: parseChar(s, result.ioiSide, pos)
    of 27: parseStr(s, result.ioiIOIShares, pos)
    of 44: parseFloat(s, result.ioiPrice, pos)
    of 15: parseStr(s, result.ioiCurrency, pos)
    of 62: parseStr(s, result.ioiValidUntilTime, pos)
    of 25: parseChar(s, result.ioiIOIQltyInd, pos)
    of 130: parseBool(s, result.ioiIOINaturalFlag, pos)
    of 199: skipValue(s, pos); parseNoIOIQualifiers(s, result.ioiNoIOIQualifiers, pos)
    of 58: parseStr(s, result.ioiText, pos)
    of 354: parseUInt(s, result.ioiEncodedTextLen, pos)
    of 355: parseStr(s, result.ioiEncodedText, pos)
    of 60: parseStr(s, result.ioiTransactTime, pos)
    of 149: parseStr(s, result.ioiURLLink, pos)
    of 215: skipValue(s, pos); parseNoRoutingIDs(s, result.ioiNoRoutingIDs, pos)
    of 218: parseFloat(s, result.ioiSpreadToBenchmark, pos)
    of 219: parseChar(s, result.ioiBenchmark, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseAdvertisement(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("7", "Advertisement"))
  result.msgType = Advertisement
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 2: parseStr(s, result.aAdvId, pos)
    of 5: parseStr(s, result.aAdvTransType, pos)
    of 3: parseStr(s, result.aAdvRefID, pos)
    of 55: parseStr(s, result.aSymbol, pos)
    of 65: parseStr(s, result.aSymbolSfx, pos)
    of 48: parseStr(s, result.aSecurityID, pos)
    of 22: parseStr(s, result.aIDSource, pos)
    of 167: parseStr(s, result.aSecurityType, pos)
    of 200: parseStr(s, result.aMaturityMonthYear, pos)
    of 205: parseUInt(s, result.aMaturityDay, pos)
    of 201: parseInt(s, result.aPutOrCall, pos)
    of 202: parseFloat(s, result.aStrikePrice, pos)
    of 206: parseChar(s, result.aOptAttribute, pos)
    of 231: parseStr(s, result.aContractMultiplier, pos)
    of 223: parseStr(s, result.aCouponRate, pos)
    of 207: parseStr(s, result.aSecurityExchange, pos)
    of 106: parseStr(s, result.aIssuer, pos)
    of 348: parseUInt(s, result.aEncodedIssuerLen, pos)
    of 349: parseStr(s, result.aEncodedIssuer, pos)
    of 107: parseStr(s, result.aSecurityDesc, pos)
    of 350: parseUInt(s, result.aEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.aEncodedSecurityDesc, pos)
    of 4: parseChar(s, result.aAdvSide, pos)
    of 53: parseInt(s, result.aShares, pos)
    of 44: parseFloat(s, result.aPrice, pos)
    of 15: parseStr(s, result.aCurrency, pos)
    of 75: parseStr(s, result.aTradeDate, pos)
    of 60: parseStr(s, result.aTransactTime, pos)
    of 58: parseStr(s, result.aText, pos)
    of 354: parseUInt(s, result.aEncodedTextLen, pos)
    of 355: parseStr(s, result.aEncodedText, pos)
    of 149: parseStr(s, result.aURLLink, pos)
    of 30: parseStr(s, result.aLastMkt, pos)
    of 336: parseStr(s, result.aTradingSessionID, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseExecutionReport(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("8", "ExecutionReport"))
  result.msgType = ExecutionReport
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 37: parseStr(s, result.erOrderID, pos)
    of 198: parseStr(s, result.erSecondaryOrderID, pos)
    of 11: parseStr(s, result.erClOrdID, pos)
    of 41: parseStr(s, result.erOrigClOrdID, pos)
    of 109: parseStr(s, result.erClientID, pos)
    of 76: parseStr(s, result.erExecBroker, pos)
    of 382: skipValue(s, pos); parseNoContraBrokers(s, result.erNoContraBrokers, pos)
    of 66: parseStr(s, result.erListID, pos)
    of 17: parseStr(s, result.erExecID, pos)
    of 20: parseChar(s, result.erExecTransType, pos)
    of 19: parseStr(s, result.erExecRefID, pos)
    of 150: parseChar(s, result.erExecType, pos)
    of 39: parseChar(s, result.erOrdStatus, pos)
    of 103: parseInt(s, result.erOrdRejReason, pos)
    of 378: parseInt(s, result.erExecRestatementReason, pos)
    of 1: parseStr(s, result.erAccount, pos)
    of 63: parseChar(s, result.erSettlmntTyp, pos)
    of 64: parseStr(s, result.erFutSettDate, pos)
    of 55: parseStr(s, result.erSymbol, pos)
    of 65: parseStr(s, result.erSymbolSfx, pos)
    of 48: parseStr(s, result.erSecurityID, pos)
    of 22: parseStr(s, result.erIDSource, pos)
    of 167: parseStr(s, result.erSecurityType, pos)
    of 200: parseStr(s, result.erMaturityMonthYear, pos)
    of 205: parseUInt(s, result.erMaturityDay, pos)
    of 201: parseInt(s, result.erPutOrCall, pos)
    of 202: parseFloat(s, result.erStrikePrice, pos)
    of 206: parseChar(s, result.erOptAttribute, pos)
    of 231: parseStr(s, result.erContractMultiplier, pos)
    of 223: parseStr(s, result.erCouponRate, pos)
    of 207: parseStr(s, result.erSecurityExchange, pos)
    of 106: parseStr(s, result.erIssuer, pos)
    of 348: parseUInt(s, result.erEncodedIssuerLen, pos)
    of 349: parseStr(s, result.erEncodedIssuer, pos)
    of 107: parseStr(s, result.erSecurityDesc, pos)
    of 350: parseUInt(s, result.erEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.erEncodedSecurityDesc, pos)
    of 54: parseChar(s, result.erSide, pos)
    of 38: parseInt(s, result.erOrderQty, pos)
    of 152: parseInt(s, result.erCashOrderQty, pos)
    of 40: parseChar(s, result.erOrdType, pos)
    of 44: parseFloat(s, result.erPrice, pos)
    of 99: parseFloat(s, result.erStopPx, pos)
    of 211: parseFloat(s, result.erPegDifference, pos)
    of 388: parseChar(s, result.erDiscretionInst, pos)
    of 389: parseFloat(s, result.erDiscretionOffset, pos)
    of 15: parseStr(s, result.erCurrency, pos)
    of 376: parseStr(s, result.erComplianceID, pos)
    of 377: parseBool(s, result.erSolicitedFlag, pos)
    of 59: parseChar(s, result.erTimeInForce, pos)
    of 168: parseStr(s, result.erEffectiveTime, pos)
    of 432: parseStr(s, result.erExpireDate, pos)
    of 126: parseStr(s, result.erExpireTime, pos)
    of 18: parseStr(s, result.erExecInst, pos)
    of 47: parseChar(s, result.erRule80A, pos)
    of 32: parseInt(s, result.erLastShares, pos)
    of 31: parseFloat(s, result.erLastPx, pos)
    of 194: parseFloat(s, result.erLastSpotRate, pos)
    of 195: parseFloat(s, result.erLastForwardPoints, pos)
    of 30: parseStr(s, result.erLastMkt, pos)
    of 336: parseStr(s, result.erTradingSessionID, pos)
    of 29: parseChar(s, result.erLastCapacity, pos)
    of 151: parseInt(s, result.erLeavesQty, pos)
    of 14: parseInt(s, result.erCumQty, pos)
    of 6: parseFloat(s, result.erAvgPx, pos)
    of 424: parseInt(s, result.erDayOrderQty, pos)
    of 425: parseInt(s, result.erDayCumQty, pos)
    of 426: parseFloat(s, result.erDayAvgPx, pos)
    of 427: parseInt(s, result.erGTBookingInst, pos)
    of 75: parseStr(s, result.erTradeDate, pos)
    of 60: parseStr(s, result.erTransactTime, pos)
    of 113: parseBool(s, result.erReportToExch, pos)
    of 12: parseUInt(s, result.erCommission, pos)
    of 13: parseChar(s, result.erCommType, pos)
    of 381: parseUInt(s, result.erGrossTradeAmt, pos)
    of 119: parseUInt(s, result.erSettlCurrAmt, pos)
    of 120: parseStr(s, result.erSettlCurrency, pos)
    of 155: parseStr(s, result.erSettlCurrFxRate, pos)
    of 156: parseChar(s, result.erSettlCurrFxRateCalc, pos)
    of 21: parseChar(s, result.erHandlInst, pos)
    of 110: parseInt(s, result.erMinQty, pos)
    of 111: parseInt(s, result.erMaxFloor, pos)
    of 77: parseChar(s, result.erOpenClose, pos)
    of 210: parseInt(s, result.erMaxShow, pos)
    of 58: parseStr(s, result.erText, pos)
    of 354: parseUInt(s, result.erEncodedTextLen, pos)
    of 355: parseStr(s, result.erEncodedText, pos)
    of 193: parseStr(s, result.erFutSettDate2, pos)
    of 192: parseInt(s, result.erOrderQty2, pos)
    of 439: parseStr(s, result.erClearingFirm, pos)
    of 440: parseStr(s, result.erClearingAccount, pos)
    of 442: parseChar(s, result.erMultiLegReportingType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseOrderCancelReject(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("9", "OrderCancelReject"))
  result.msgType = OrderCancelReject
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 37: parseStr(s, result.ocrOrderID, pos)
    of 198: parseStr(s, result.ocrSecondaryOrderID, pos)
    of 11: parseStr(s, result.ocrClOrdID, pos)
    of 41: parseStr(s, result.ocrOrigClOrdID, pos)
    of 39: parseChar(s, result.ocrOrdStatus, pos)
    of 109: parseStr(s, result.ocrClientID, pos)
    of 76: parseStr(s, result.ocrExecBroker, pos)
    of 66: parseStr(s, result.ocrListID, pos)
    of 1: parseStr(s, result.ocrAccount, pos)
    of 60: parseStr(s, result.ocrTransactTime, pos)
    of 434: parseChar(s, result.ocrCxlRejResponseTo, pos)
    of 102: parseInt(s, result.ocrCxlRejReason, pos)
    of 58: parseStr(s, result.ocrText, pos)
    of 354: parseUInt(s, result.ocrEncodedTextLen, pos)
    of 355: parseStr(s, result.ocrEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseLogon(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("A", "Logon"))
  result.msgType = Logon
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 98: parseInt(s, result.lEncryptMethod, pos)
    of 108: parseInt(s, result.lHeartBtInt, pos)
    of 95: parseUInt(s, result.lRawDataLength, pos)
    of 96: parseStr(s, result.lRawData, pos)
    of 141: parseBool(s, result.lResetSeqNumFlag, pos)
    of 383: parseInt(s, result.lMaxMessageSize, pos)
    of 384: skipValue(s, pos); parseNoMsgTypes(s, result.lNoMsgTypes, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseNews(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("B", "News"))
  result.msgType = News
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 42: parseStr(s, result.nOrigTime, pos)
    of 61: parseChar(s, result.nUrgency, pos)
    of 148: parseStr(s, result.nHeadline, pos)
    of 358: parseUInt(s, result.nEncodedHeadlineLen, pos)
    of 359: parseStr(s, result.nEncodedHeadline, pos)
    of 215: skipValue(s, pos); parseNoRoutingIDs(s, result.nNoRoutingIDs, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.nNoRelatedSym, pos)
    of 33: skipValue(s, pos); parseLinesOfText(s, result.nLinesOfText, pos)
    of 149: parseStr(s, result.nURLLink, pos)
    of 95: parseUInt(s, result.nRawDataLength, pos)
    of 96: parseStr(s, result.nRawData, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseEmail(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("C", "Email"))
  result.msgType = Email
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 164: parseStr(s, result.eEmailThreadID, pos)
    of 94: parseChar(s, result.eEmailType, pos)
    of 42: parseStr(s, result.eOrigTime, pos)
    of 147: parseStr(s, result.eSubject, pos)
    of 356: parseUInt(s, result.eEncodedSubjectLen, pos)
    of 357: parseStr(s, result.eEncodedSubject, pos)
    of 215: skipValue(s, pos); parseNoRoutingIDs(s, result.eNoRoutingIDs, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.eNoRelatedSym, pos)
    of 37: parseStr(s, result.eOrderID, pos)
    of 11: parseStr(s, result.eClOrdID, pos)
    of 33: skipValue(s, pos); parseLinesOfText(s, result.eLinesOfText, pos)
    of 95: parseUInt(s, result.eRawDataLength, pos)
    of 96: parseStr(s, result.eRawData, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseNewOrderSingle(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("D", "NewOrderSingle"))
  result.msgType = NewOrderSingle
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 11: parseStr(s, result.nosClOrdID, pos)
    of 109: parseStr(s, result.nosClientID, pos)
    of 76: parseStr(s, result.nosExecBroker, pos)
    of 1: parseStr(s, result.nosAccount, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.nosNoAllocs, pos)
    of 63: parseChar(s, result.nosSettlmntTyp, pos)
    of 64: parseStr(s, result.nosFutSettDate, pos)
    of 21: parseChar(s, result.nosHandlInst, pos)
    of 18: parseStr(s, result.nosExecInst, pos)
    of 110: parseInt(s, result.nosMinQty, pos)
    of 111: parseInt(s, result.nosMaxFloor, pos)
    of 100: parseStr(s, result.nosExDestination, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.nosNoTradingSessions, pos)
    of 81: parseChar(s, result.nosProcessCode, pos)
    of 55: parseStr(s, result.nosSymbol, pos)
    of 65: parseStr(s, result.nosSymbolSfx, pos)
    of 48: parseStr(s, result.nosSecurityID, pos)
    of 22: parseStr(s, result.nosIDSource, pos)
    of 167: parseStr(s, result.nosSecurityType, pos)
    of 200: parseStr(s, result.nosMaturityMonthYear, pos)
    of 205: parseUInt(s, result.nosMaturityDay, pos)
    of 201: parseInt(s, result.nosPutOrCall, pos)
    of 202: parseFloat(s, result.nosStrikePrice, pos)
    of 206: parseChar(s, result.nosOptAttribute, pos)
    of 231: parseStr(s, result.nosContractMultiplier, pos)
    of 223: parseStr(s, result.nosCouponRate, pos)
    of 207: parseStr(s, result.nosSecurityExchange, pos)
    of 106: parseStr(s, result.nosIssuer, pos)
    of 348: parseUInt(s, result.nosEncodedIssuerLen, pos)
    of 349: parseStr(s, result.nosEncodedIssuer, pos)
    of 107: parseStr(s, result.nosSecurityDesc, pos)
    of 350: parseUInt(s, result.nosEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.nosEncodedSecurityDesc, pos)
    of 140: parseFloat(s, result.nosPrevClosePx, pos)
    of 54: parseChar(s, result.nosSide, pos)
    of 114: parseBool(s, result.nosLocateReqd, pos)
    of 60: parseStr(s, result.nosTransactTime, pos)
    of 38: parseInt(s, result.nosOrderQty, pos)
    of 152: parseInt(s, result.nosCashOrderQty, pos)
    of 40: parseChar(s, result.nosOrdType, pos)
    of 44: parseFloat(s, result.nosPrice, pos)
    of 99: parseFloat(s, result.nosStopPx, pos)
    of 15: parseStr(s, result.nosCurrency, pos)
    of 376: parseStr(s, result.nosComplianceID, pos)
    of 377: parseBool(s, result.nosSolicitedFlag, pos)
    of 23: parseStr(s, result.nosIOIid, pos)
    of 117: parseStr(s, result.nosQuoteID, pos)
    of 59: parseChar(s, result.nosTimeInForce, pos)
    of 168: parseStr(s, result.nosEffectiveTime, pos)
    of 432: parseStr(s, result.nosExpireDate, pos)
    of 126: parseStr(s, result.nosExpireTime, pos)
    of 427: parseInt(s, result.nosGTBookingInst, pos)
    of 12: parseUInt(s, result.nosCommission, pos)
    of 13: parseChar(s, result.nosCommType, pos)
    of 47: parseChar(s, result.nosRule80A, pos)
    of 121: parseBool(s, result.nosForexReq, pos)
    of 120: parseStr(s, result.nosSettlCurrency, pos)
    of 58: parseStr(s, result.nosText, pos)
    of 354: parseUInt(s, result.nosEncodedTextLen, pos)
    of 355: parseStr(s, result.nosEncodedText, pos)
    of 193: parseStr(s, result.nosFutSettDate2, pos)
    of 192: parseInt(s, result.nosOrderQty2, pos)
    of 77: parseChar(s, result.nosOpenClose, pos)
    of 203: parseInt(s, result.nosCoveredOrUncovered, pos)
    of 204: parseInt(s, result.nosCustomerOrFirm, pos)
    of 210: parseInt(s, result.nosMaxShow, pos)
    of 211: parseFloat(s, result.nosPegDifference, pos)
    of 388: parseChar(s, result.nosDiscretionInst, pos)
    of 389: parseFloat(s, result.nosDiscretionOffset, pos)
    of 439: parseStr(s, result.nosClearingFirm, pos)
    of 440: parseStr(s, result.nosClearingAccount, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseNewOrderList(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("E", "NewOrderList"))
  result.msgType = NewOrderList
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 66: parseStr(s, result.nolListID, pos)
    of 390: parseStr(s, result.nolBidID, pos)
    of 391: parseStr(s, result.nolClientBidID, pos)
    of 414: parseInt(s, result.nolProgRptReqs, pos)
    of 394: parseInt(s, result.nolBidType, pos)
    of 415: parseInt(s, result.nolProgPeriodInterval, pos)
    of 433: parseChar(s, result.nolListExecInstType, pos)
    of 69: parseStr(s, result.nolListExecInst, pos)
    of 352: parseUInt(s, result.nolEncodedListExecInstLen, pos)
    of 353: parseStr(s, result.nolEncodedListExecInst, pos)
    of 68: parseInt(s, result.nolTotNoOrders, pos)
    of 73: skipValue(s, pos); parseNoOrders(s, result.nolNoOrders, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseOrderCancelRequest(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("F", "OrderCancelRequest"))
  result.msgType = OrderCancelRequest
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 41: parseStr(s, result.ocrOrigClOrdID, pos)
    of 37: parseStr(s, result.ocrOrderID, pos)
    of 11: parseStr(s, result.ocrClOrdID, pos)
    of 66: parseStr(s, result.ocrListID, pos)
    of 1: parseStr(s, result.ocrAccount, pos)
    of 109: parseStr(s, result.ocrClientID, pos)
    of 76: parseStr(s, result.ocrExecBroker, pos)
    of 55: parseStr(s, result.ocrSymbol, pos)
    of 65: parseStr(s, result.ocrSymbolSfx, pos)
    of 48: parseStr(s, result.ocrSecurityID, pos)
    of 22: parseStr(s, result.ocrIDSource, pos)
    of 167: parseStr(s, result.ocrSecurityType, pos)
    of 200: parseStr(s, result.ocrMaturityMonthYear, pos)
    of 205: parseUInt(s, result.ocrMaturityDay, pos)
    of 201: parseInt(s, result.ocrPutOrCall, pos)
    of 202: parseFloat(s, result.ocrStrikePrice, pos)
    of 206: parseChar(s, result.ocrOptAttribute, pos)
    of 231: parseStr(s, result.ocrContractMultiplier, pos)
    of 223: parseStr(s, result.ocrCouponRate, pos)
    of 207: parseStr(s, result.ocrSecurityExchange, pos)
    of 106: parseStr(s, result.ocrIssuer, pos)
    of 348: parseUInt(s, result.ocrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.ocrEncodedIssuer, pos)
    of 107: parseStr(s, result.ocrSecurityDesc, pos)
    of 350: parseUInt(s, result.ocrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.ocrEncodedSecurityDesc, pos)
    of 54: parseChar(s, result.ocrSide, pos)
    of 60: parseStr(s, result.ocrTransactTime, pos)
    of 38: parseInt(s, result.ocrOrderQty, pos)
    of 152: parseInt(s, result.ocrCashOrderQty, pos)
    of 376: parseStr(s, result.ocrComplianceID, pos)
    of 377: parseBool(s, result.ocrSolicitedFlag, pos)
    of 58: parseStr(s, result.ocrText, pos)
    of 354: parseUInt(s, result.ocrEncodedTextLen, pos)
    of 355: parseStr(s, result.ocrEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseOrderCancelReplaceRequest(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("G", "OrderCancelReplaceRequest"))
  result.msgType = OrderCancelReplaceRequest
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 37: parseStr(s, result.ocrrOrderID, pos)
    of 109: parseStr(s, result.ocrrClientID, pos)
    of 76: parseStr(s, result.ocrrExecBroker, pos)
    of 41: parseStr(s, result.ocrrOrigClOrdID, pos)
    of 11: parseStr(s, result.ocrrClOrdID, pos)
    of 66: parseStr(s, result.ocrrListID, pos)
    of 1: parseStr(s, result.ocrrAccount, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.ocrrNoAllocs, pos)
    of 63: parseChar(s, result.ocrrSettlmntTyp, pos)
    of 64: parseStr(s, result.ocrrFutSettDate, pos)
    of 21: parseChar(s, result.ocrrHandlInst, pos)
    of 18: parseStr(s, result.ocrrExecInst, pos)
    of 110: parseInt(s, result.ocrrMinQty, pos)
    of 111: parseInt(s, result.ocrrMaxFloor, pos)
    of 100: parseStr(s, result.ocrrExDestination, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.ocrrNoTradingSessions, pos)
    of 55: parseStr(s, result.ocrrSymbol, pos)
    of 65: parseStr(s, result.ocrrSymbolSfx, pos)
    of 48: parseStr(s, result.ocrrSecurityID, pos)
    of 22: parseStr(s, result.ocrrIDSource, pos)
    of 167: parseStr(s, result.ocrrSecurityType, pos)
    of 200: parseStr(s, result.ocrrMaturityMonthYear, pos)
    of 205: parseUInt(s, result.ocrrMaturityDay, pos)
    of 201: parseInt(s, result.ocrrPutOrCall, pos)
    of 202: parseFloat(s, result.ocrrStrikePrice, pos)
    of 206: parseChar(s, result.ocrrOptAttribute, pos)
    of 231: parseStr(s, result.ocrrContractMultiplier, pos)
    of 223: parseStr(s, result.ocrrCouponRate, pos)
    of 207: parseStr(s, result.ocrrSecurityExchange, pos)
    of 106: parseStr(s, result.ocrrIssuer, pos)
    of 348: parseUInt(s, result.ocrrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.ocrrEncodedIssuer, pos)
    of 107: parseStr(s, result.ocrrSecurityDesc, pos)
    of 350: parseUInt(s, result.ocrrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.ocrrEncodedSecurityDesc, pos)
    of 54: parseChar(s, result.ocrrSide, pos)
    of 60: parseStr(s, result.ocrrTransactTime, pos)
    of 38: parseInt(s, result.ocrrOrderQty, pos)
    of 152: parseInt(s, result.ocrrCashOrderQty, pos)
    of 40: parseChar(s, result.ocrrOrdType, pos)
    of 44: parseFloat(s, result.ocrrPrice, pos)
    of 99: parseFloat(s, result.ocrrStopPx, pos)
    of 211: parseFloat(s, result.ocrrPegDifference, pos)
    of 388: parseChar(s, result.ocrrDiscretionInst, pos)
    of 389: parseFloat(s, result.ocrrDiscretionOffset, pos)
    of 376: parseStr(s, result.ocrrComplianceID, pos)
    of 377: parseBool(s, result.ocrrSolicitedFlag, pos)
    of 15: parseStr(s, result.ocrrCurrency, pos)
    of 59: parseChar(s, result.ocrrTimeInForce, pos)
    of 168: parseStr(s, result.ocrrEffectiveTime, pos)
    of 432: parseStr(s, result.ocrrExpireDate, pos)
    of 126: parseStr(s, result.ocrrExpireTime, pos)
    of 427: parseInt(s, result.ocrrGTBookingInst, pos)
    of 12: parseUInt(s, result.ocrrCommission, pos)
    of 13: parseChar(s, result.ocrrCommType, pos)
    of 47: parseChar(s, result.ocrrRule80A, pos)
    of 121: parseBool(s, result.ocrrForexReq, pos)
    of 120: parseStr(s, result.ocrrSettlCurrency, pos)
    of 58: parseStr(s, result.ocrrText, pos)
    of 354: parseUInt(s, result.ocrrEncodedTextLen, pos)
    of 355: parseStr(s, result.ocrrEncodedText, pos)
    of 193: parseStr(s, result.ocrrFutSettDate2, pos)
    of 192: parseInt(s, result.ocrrOrderQty2, pos)
    of 77: parseChar(s, result.ocrrOpenClose, pos)
    of 203: parseInt(s, result.ocrrCoveredOrUncovered, pos)
    of 204: parseInt(s, result.ocrrCustomerOrFirm, pos)
    of 210: parseInt(s, result.ocrrMaxShow, pos)
    of 114: parseBool(s, result.ocrrLocateReqd, pos)
    of 439: parseStr(s, result.ocrrClearingFirm, pos)
    of 440: parseStr(s, result.ocrrClearingAccount, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseOrderStatusRequest(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("H", "OrderStatusRequest"))
  result.msgType = OrderStatusRequest
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 37: parseStr(s, result.osrOrderID, pos)
    of 11: parseStr(s, result.osrClOrdID, pos)
    of 109: parseStr(s, result.osrClientID, pos)
    of 1: parseStr(s, result.osrAccount, pos)
    of 76: parseStr(s, result.osrExecBroker, pos)
    of 55: parseStr(s, result.osrSymbol, pos)
    of 65: parseStr(s, result.osrSymbolSfx, pos)
    of 48: parseStr(s, result.osrSecurityID, pos)
    of 22: parseStr(s, result.osrIDSource, pos)
    of 167: parseStr(s, result.osrSecurityType, pos)
    of 200: parseStr(s, result.osrMaturityMonthYear, pos)
    of 205: parseUInt(s, result.osrMaturityDay, pos)
    of 201: parseInt(s, result.osrPutOrCall, pos)
    of 202: parseFloat(s, result.osrStrikePrice, pos)
    of 206: parseChar(s, result.osrOptAttribute, pos)
    of 231: parseStr(s, result.osrContractMultiplier, pos)
    of 223: parseStr(s, result.osrCouponRate, pos)
    of 207: parseStr(s, result.osrSecurityExchange, pos)
    of 106: parseStr(s, result.osrIssuer, pos)
    of 348: parseUInt(s, result.osrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.osrEncodedIssuer, pos)
    of 107: parseStr(s, result.osrSecurityDesc, pos)
    of 350: parseUInt(s, result.osrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.osrEncodedSecurityDesc, pos)
    of 54: parseChar(s, result.osrSide, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseAllocation(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("J", "Allocation"))
  result.msgType = Allocation
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 70: parseStr(s, result.aAllocID, pos)
    of 71: parseChar(s, result.aAllocTransType, pos)
    of 72: parseStr(s, result.aRefAllocID, pos)
    of 196: parseStr(s, result.aAllocLinkID, pos)
    of 197: parseInt(s, result.aAllocLinkType, pos)
    of 73: skipValue(s, pos); parseNoOrders(s, result.aNoOrders, pos)
    of 124: skipValue(s, pos); parseNoExecs(s, result.aNoExecs, pos)
    of 54: parseChar(s, result.aSide, pos)
    of 55: parseStr(s, result.aSymbol, pos)
    of 65: parseStr(s, result.aSymbolSfx, pos)
    of 48: parseStr(s, result.aSecurityID, pos)
    of 22: parseStr(s, result.aIDSource, pos)
    of 167: parseStr(s, result.aSecurityType, pos)
    of 200: parseStr(s, result.aMaturityMonthYear, pos)
    of 205: parseUInt(s, result.aMaturityDay, pos)
    of 201: parseInt(s, result.aPutOrCall, pos)
    of 202: parseFloat(s, result.aStrikePrice, pos)
    of 206: parseChar(s, result.aOptAttribute, pos)
    of 231: parseStr(s, result.aContractMultiplier, pos)
    of 223: parseStr(s, result.aCouponRate, pos)
    of 207: parseStr(s, result.aSecurityExchange, pos)
    of 106: parseStr(s, result.aIssuer, pos)
    of 348: parseUInt(s, result.aEncodedIssuerLen, pos)
    of 349: parseStr(s, result.aEncodedIssuer, pos)
    of 107: parseStr(s, result.aSecurityDesc, pos)
    of 350: parseUInt(s, result.aEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.aEncodedSecurityDesc, pos)
    of 53: parseInt(s, result.aShares, pos)
    of 30: parseStr(s, result.aLastMkt, pos)
    of 336: parseStr(s, result.aTradingSessionID, pos)
    of 6: parseFloat(s, result.aAvgPx, pos)
    of 15: parseStr(s, result.aCurrency, pos)
    of 74: parseInt(s, result.aAvgPrxPrecision, pos)
    of 75: parseStr(s, result.aTradeDate, pos)
    of 60: parseStr(s, result.aTransactTime, pos)
    of 63: parseChar(s, result.aSettlmntTyp, pos)
    of 64: parseStr(s, result.aFutSettDate, pos)
    of 381: parseUInt(s, result.aGrossTradeAmt, pos)
    of 118: parseUInt(s, result.aNetMoney, pos)
    of 77: parseChar(s, result.aOpenClose, pos)
    of 58: parseStr(s, result.aText, pos)
    of 354: parseUInt(s, result.aEncodedTextLen, pos)
    of 355: parseStr(s, result.aEncodedText, pos)
    of 157: parseInt(s, result.aNumDaysInterest, pos)
    of 158: parseStr(s, result.aAccruedInterestRate, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.aNoAllocs, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseListCancelRequest(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("K", "ListCancelRequest"))
  result.msgType = ListCancelRequest
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 66: parseStr(s, result.lcrListID, pos)
    of 60: parseStr(s, result.lcrTransactTime, pos)
    of 58: parseStr(s, result.lcrText, pos)
    of 354: parseUInt(s, result.lcrEncodedTextLen, pos)
    of 355: parseStr(s, result.lcrEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseListExecute(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("L", "ListExecute"))
  result.msgType = ListExecute
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 66: parseStr(s, result.leListID, pos)
    of 391: parseStr(s, result.leClientBidID, pos)
    of 390: parseStr(s, result.leBidID, pos)
    of 60: parseStr(s, result.leTransactTime, pos)
    of 58: parseStr(s, result.leText, pos)
    of 354: parseUInt(s, result.leEncodedTextLen, pos)
    of 355: parseStr(s, result.leEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseListStatusRequest(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("M", "ListStatusRequest"))
  result.msgType = ListStatusRequest
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 66: parseStr(s, result.lsrListID, pos)
    of 58: parseStr(s, result.lsrText, pos)
    of 354: parseUInt(s, result.lsrEncodedTextLen, pos)
    of 355: parseStr(s, result.lsrEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseListStatus(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("N", "ListStatus"))
  result.msgType = ListStatus
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 66: parseStr(s, result.lsListID, pos)
    of 429: parseInt(s, result.lsListStatusType, pos)
    of 82: parseInt(s, result.lsNoRpts, pos)
    of 431: parseInt(s, result.lsListOrderStatus, pos)
    of 83: parseInt(s, result.lsRptSeq, pos)
    of 444: parseStr(s, result.lsListStatusText, pos)
    of 445: parseUInt(s, result.lsEncodedListStatusTextLen, pos)
    of 446: parseStr(s, result.lsEncodedListStatusText, pos)
    of 60: parseStr(s, result.lsTransactTime, pos)
    of 68: parseInt(s, result.lsTotNoOrders, pos)
    of 73: skipValue(s, pos); parseNoOrders(s, result.lsNoOrders, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseAllocationInstructionAck(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("P", "AllocationInstructionAck"))
  result.msgType = AllocationInstructionAck
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 109: parseStr(s, result.aiaClientID, pos)
    of 76: parseStr(s, result.aiaExecBroker, pos)
    of 70: parseStr(s, result.aiaAllocID, pos)
    of 75: parseStr(s, result.aiaTradeDate, pos)
    of 60: parseStr(s, result.aiaTransactTime, pos)
    of 87: parseInt(s, result.aiaAllocStatus, pos)
    of 88: parseInt(s, result.aiaAllocRejCode, pos)
    of 58: parseStr(s, result.aiaText, pos)
    of 354: parseUInt(s, result.aiaEncodedTextLen, pos)
    of 355: parseStr(s, result.aiaEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseDontKnowTrade(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("Q", "DontKnowTrade"))
  result.msgType = DontKnowTrade
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 37: parseStr(s, result.dktOrderID, pos)
    of 17: parseStr(s, result.dktExecID, pos)
    of 127: parseChar(s, result.dktDKReason, pos)
    of 55: parseStr(s, result.dktSymbol, pos)
    of 65: parseStr(s, result.dktSymbolSfx, pos)
    of 48: parseStr(s, result.dktSecurityID, pos)
    of 22: parseStr(s, result.dktIDSource, pos)
    of 167: parseStr(s, result.dktSecurityType, pos)
    of 200: parseStr(s, result.dktMaturityMonthYear, pos)
    of 205: parseUInt(s, result.dktMaturityDay, pos)
    of 201: parseInt(s, result.dktPutOrCall, pos)
    of 202: parseFloat(s, result.dktStrikePrice, pos)
    of 206: parseChar(s, result.dktOptAttribute, pos)
    of 231: parseStr(s, result.dktContractMultiplier, pos)
    of 223: parseStr(s, result.dktCouponRate, pos)
    of 207: parseStr(s, result.dktSecurityExchange, pos)
    of 106: parseStr(s, result.dktIssuer, pos)
    of 348: parseUInt(s, result.dktEncodedIssuerLen, pos)
    of 349: parseStr(s, result.dktEncodedIssuer, pos)
    of 107: parseStr(s, result.dktSecurityDesc, pos)
    of 350: parseUInt(s, result.dktEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.dktEncodedSecurityDesc, pos)
    of 54: parseChar(s, result.dktSide, pos)
    of 38: parseInt(s, result.dktOrderQty, pos)
    of 152: parseInt(s, result.dktCashOrderQty, pos)
    of 32: parseInt(s, result.dktLastShares, pos)
    of 31: parseFloat(s, result.dktLastPx, pos)
    of 58: parseStr(s, result.dktText, pos)
    of 354: parseUInt(s, result.dktEncodedTextLen, pos)
    of 355: parseStr(s, result.dktEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseQuoteRequest(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("R", "QuoteRequest"))
  result.msgType = QuoteRequest
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 131: parseStr(s, result.qrQuoteReqID, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.qrNoRelatedSym, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseQuote(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("S", "Quote"))
  result.msgType = Quote
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 131: parseStr(s, result.qQuoteReqID, pos)
    of 117: parseStr(s, result.qQuoteID, pos)
    of 301: parseInt(s, result.qQuoteResponseLevel, pos)
    of 336: parseStr(s, result.qTradingSessionID, pos)
    of 55: parseStr(s, result.qSymbol, pos)
    of 65: parseStr(s, result.qSymbolSfx, pos)
    of 48: parseStr(s, result.qSecurityID, pos)
    of 22: parseStr(s, result.qIDSource, pos)
    of 167: parseStr(s, result.qSecurityType, pos)
    of 200: parseStr(s, result.qMaturityMonthYear, pos)
    of 205: parseUInt(s, result.qMaturityDay, pos)
    of 201: parseInt(s, result.qPutOrCall, pos)
    of 202: parseFloat(s, result.qStrikePrice, pos)
    of 206: parseChar(s, result.qOptAttribute, pos)
    of 231: parseStr(s, result.qContractMultiplier, pos)
    of 223: parseStr(s, result.qCouponRate, pos)
    of 207: parseStr(s, result.qSecurityExchange, pos)
    of 106: parseStr(s, result.qIssuer, pos)
    of 348: parseUInt(s, result.qEncodedIssuerLen, pos)
    of 349: parseStr(s, result.qEncodedIssuer, pos)
    of 107: parseStr(s, result.qSecurityDesc, pos)
    of 350: parseUInt(s, result.qEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.qEncodedSecurityDesc, pos)
    of 132: parseFloat(s, result.qBidPx, pos)
    of 133: parseFloat(s, result.qOfferPx, pos)
    of 134: parseInt(s, result.qBidSize, pos)
    of 135: parseInt(s, result.qOfferSize, pos)
    of 62: parseStr(s, result.qValidUntilTime, pos)
    of 188: parseFloat(s, result.qBidSpotRate, pos)
    of 190: parseFloat(s, result.qOfferSpotRate, pos)
    of 189: parseFloat(s, result.qBidForwardPoints, pos)
    of 191: parseFloat(s, result.qOfferForwardPoints, pos)
    of 60: parseStr(s, result.qTransactTime, pos)
    of 64: parseStr(s, result.qFutSettDate, pos)
    of 40: parseChar(s, result.qOrdType, pos)
    of 193: parseStr(s, result.qFutSettDate2, pos)
    of 192: parseInt(s, result.qOrderQty2, pos)
    of 15: parseStr(s, result.qCurrency, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseSettlementInstructions(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("T", "SettlementInstructions"))
  result.msgType = SettlementInstructions
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 162: parseStr(s, result.siSettlInstID, pos)
    of 163: parseChar(s, result.siSettlInstTransType, pos)
    of 214: parseStr(s, result.siSettlInstRefID, pos)
    of 160: parseChar(s, result.siSettlInstMode, pos)
    of 165: parseChar(s, result.siSettlInstSource, pos)
    of 79: parseStr(s, result.siAllocAccount, pos)
    of 166: parseStr(s, result.siSettlLocation, pos)
    of 75: parseStr(s, result.siTradeDate, pos)
    of 70: parseStr(s, result.siAllocID, pos)
    of 30: parseStr(s, result.siLastMkt, pos)
    of 336: parseStr(s, result.siTradingSessionID, pos)
    of 54: parseChar(s, result.siSide, pos)
    of 167: parseStr(s, result.siSecurityType, pos)
    of 168: parseStr(s, result.siEffectiveTime, pos)
    of 60: parseStr(s, result.siTransactTime, pos)
    of 109: parseStr(s, result.siClientID, pos)
    of 76: parseStr(s, result.siExecBroker, pos)
    of 169: parseInt(s, result.siStandInstDbType, pos)
    of 170: parseStr(s, result.siStandInstDbName, pos)
    of 171: parseStr(s, result.siStandInstDbID, pos)
    of 172: parseInt(s, result.siSettlDeliveryType, pos)
    of 173: parseStr(s, result.siSettlDepositoryCode, pos)
    of 174: parseStr(s, result.siSettlBrkrCode, pos)
    of 175: parseStr(s, result.siSettlInstCode, pos)
    of 176: parseStr(s, result.siSecuritySettlAgentName, pos)
    of 177: parseStr(s, result.siSecuritySettlAgentCode, pos)
    of 178: parseStr(s, result.siSecuritySettlAgentAcctNum, pos)
    of 179: parseStr(s, result.siSecuritySettlAgentAcctName, pos)
    of 180: parseStr(s, result.siSecuritySettlAgentContactName, pos)
    of 181: parseStr(s, result.siSecuritySettlAgentContactPhone, pos)
    of 182: parseStr(s, result.siCashSettlAgentName, pos)
    of 183: parseStr(s, result.siCashSettlAgentCode, pos)
    of 184: parseStr(s, result.siCashSettlAgentAcctNum, pos)
    of 185: parseStr(s, result.siCashSettlAgentAcctName, pos)
    of 186: parseStr(s, result.siCashSettlAgentContactName, pos)
    of 187: parseStr(s, result.siCashSettlAgentContactPhone, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseMarketDataRequest(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("V", "MarketDataRequest"))
  result.msgType = MarketDataRequest
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 262: parseStr(s, result.mdrMDReqID, pos)
    of 263: parseChar(s, result.mdrSubscriptionRequestType, pos)
    of 264: parseInt(s, result.mdrMarketDepth, pos)
    of 265: parseInt(s, result.mdrMDUpdateType, pos)
    of 266: parseBool(s, result.mdrAggregatedBook, pos)
    of 267: skipValue(s, pos); parseNoMDEntryTypes(s, result.mdrNoMDEntryTypes, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.mdrNoRelatedSym, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseMarketDataSnapshotFullRefresh(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("W", "MarketDataSnapshotFullRefresh"))
  result.msgType = MarketDataSnapshotFullRefresh
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 262: parseStr(s, result.mdsfrMDReqID, pos)
    of 55: parseStr(s, result.mdsfrSymbol, pos)
    of 65: parseStr(s, result.mdsfrSymbolSfx, pos)
    of 48: parseStr(s, result.mdsfrSecurityID, pos)
    of 22: parseStr(s, result.mdsfrIDSource, pos)
    of 167: parseStr(s, result.mdsfrSecurityType, pos)
    of 200: parseStr(s, result.mdsfrMaturityMonthYear, pos)
    of 205: parseUInt(s, result.mdsfrMaturityDay, pos)
    of 201: parseInt(s, result.mdsfrPutOrCall, pos)
    of 202: parseFloat(s, result.mdsfrStrikePrice, pos)
    of 206: parseChar(s, result.mdsfrOptAttribute, pos)
    of 231: parseStr(s, result.mdsfrContractMultiplier, pos)
    of 223: parseStr(s, result.mdsfrCouponRate, pos)
    of 207: parseStr(s, result.mdsfrSecurityExchange, pos)
    of 106: parseStr(s, result.mdsfrIssuer, pos)
    of 348: parseUInt(s, result.mdsfrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.mdsfrEncodedIssuer, pos)
    of 107: parseStr(s, result.mdsfrSecurityDesc, pos)
    of 350: parseUInt(s, result.mdsfrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.mdsfrEncodedSecurityDesc, pos)
    of 291: parseChar(s, result.mdsfrFinancialStatus, pos)
    of 292: parseChar(s, result.mdsfrCorporateAction, pos)
    of 387: parseInt(s, result.mdsfrTotalVolumeTraded, pos)
    of 268: skipValue(s, pos); parseNoMDEntries(s, result.mdsfrNoMDEntries, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseMarketDataIncrementalRefresh(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("X", "MarketDataIncrementalRefresh"))
  result.msgType = MarketDataIncrementalRefresh
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 262: parseStr(s, result.mdirMDReqID, pos)
    of 268: skipValue(s, pos); parseNoMDEntries(s, result.mdirNoMDEntries, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseMarketDataRequestReject(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("Y", "MarketDataRequestReject"))
  result.msgType = MarketDataRequestReject
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 262: parseStr(s, result.mdrrMDReqID, pos)
    of 281: parseChar(s, result.mdrrMDReqRejReason, pos)
    of 58: parseStr(s, result.mdrrText, pos)
    of 354: parseUInt(s, result.mdrrEncodedTextLen, pos)
    of 355: parseStr(s, result.mdrrEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseQuoteCancel(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("Z", "QuoteCancel"))
  result.msgType = QuoteCancel
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 131: parseStr(s, result.qcQuoteReqID, pos)
    of 117: parseStr(s, result.qcQuoteID, pos)
    of 298: parseInt(s, result.qcQuoteCancelType, pos)
    of 301: parseInt(s, result.qcQuoteResponseLevel, pos)
    of 336: parseStr(s, result.qcTradingSessionID, pos)
    of 295: skipValue(s, pos); parseNoQuoteEntries(s, result.qcNoQuoteEntries, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseQuoteStatusRequest(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("a", "QuoteStatusRequest"))
  result.msgType = QuoteStatusRequest
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 117: parseStr(s, result.qsrQuoteID, pos)
    of 55: parseStr(s, result.qsrSymbol, pos)
    of 65: parseStr(s, result.qsrSymbolSfx, pos)
    of 48: parseStr(s, result.qsrSecurityID, pos)
    of 22: parseStr(s, result.qsrIDSource, pos)
    of 167: parseStr(s, result.qsrSecurityType, pos)
    of 200: parseStr(s, result.qsrMaturityMonthYear, pos)
    of 205: parseUInt(s, result.qsrMaturityDay, pos)
    of 201: parseInt(s, result.qsrPutOrCall, pos)
    of 202: parseFloat(s, result.qsrStrikePrice, pos)
    of 206: parseChar(s, result.qsrOptAttribute, pos)
    of 231: parseStr(s, result.qsrContractMultiplier, pos)
    of 223: parseStr(s, result.qsrCouponRate, pos)
    of 207: parseStr(s, result.qsrSecurityExchange, pos)
    of 106: parseStr(s, result.qsrIssuer, pos)
    of 348: parseUInt(s, result.qsrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.qsrEncodedIssuer, pos)
    of 107: parseStr(s, result.qsrSecurityDesc, pos)
    of 350: parseUInt(s, result.qsrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.qsrEncodedSecurityDesc, pos)
    of 54: parseChar(s, result.qsrSide, pos)
    of 336: parseStr(s, result.qsrTradingSessionID, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseQuoteAcknowledgement(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("b", "QuoteAcknowledgement"))
  result.msgType = QuoteAcknowledgement
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 131: parseStr(s, result.qaQuoteReqID, pos)
    of 117: parseStr(s, result.qaQuoteID, pos)
    of 297: parseInt(s, result.qaQuoteAckStatus, pos)
    of 300: parseInt(s, result.qaQuoteRejectReason, pos)
    of 301: parseInt(s, result.qaQuoteResponseLevel, pos)
    of 336: parseStr(s, result.qaTradingSessionID, pos)
    of 58: parseStr(s, result.qaText, pos)
    of 296: skipValue(s, pos); parseNoQuoteSets(s, result.qaNoQuoteSets, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseSecurityDefinitionRequest(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("c", "SecurityDefinitionRequest"))
  result.msgType = SecurityDefinitionRequest
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 320: parseStr(s, result.sdrSecurityReqID, pos)
    of 321: parseInt(s, result.sdrSecurityRequestType, pos)
    of 55: parseStr(s, result.sdrSymbol, pos)
    of 65: parseStr(s, result.sdrSymbolSfx, pos)
    of 48: parseStr(s, result.sdrSecurityID, pos)
    of 22: parseStr(s, result.sdrIDSource, pos)
    of 167: parseStr(s, result.sdrSecurityType, pos)
    of 200: parseStr(s, result.sdrMaturityMonthYear, pos)
    of 205: parseUInt(s, result.sdrMaturityDay, pos)
    of 201: parseInt(s, result.sdrPutOrCall, pos)
    of 202: parseFloat(s, result.sdrStrikePrice, pos)
    of 206: parseChar(s, result.sdrOptAttribute, pos)
    of 231: parseStr(s, result.sdrContractMultiplier, pos)
    of 223: parseStr(s, result.sdrCouponRate, pos)
    of 207: parseStr(s, result.sdrSecurityExchange, pos)
    of 106: parseStr(s, result.sdrIssuer, pos)
    of 348: parseUInt(s, result.sdrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.sdrEncodedIssuer, pos)
    of 107: parseStr(s, result.sdrSecurityDesc, pos)
    of 350: parseUInt(s, result.sdrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.sdrEncodedSecurityDesc, pos)
    of 15: parseStr(s, result.sdrCurrency, pos)
    of 58: parseStr(s, result.sdrText, pos)
    of 354: parseUInt(s, result.sdrEncodedTextLen, pos)
    of 355: parseStr(s, result.sdrEncodedText, pos)
    of 336: parseStr(s, result.sdrTradingSessionID, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.sdrNoRelatedSym, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseSecurityDefinition(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("d", "SecurityDefinition"))
  result.msgType = SecurityDefinition
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 320: parseStr(s, result.sdSecurityReqID, pos)
    of 322: parseStr(s, result.sdSecurityResponseID, pos)
    of 323: parseInt(s, result.sdSecurityResponseType, pos)
    of 393: parseInt(s, result.sdTotalNumSecurities, pos)
    of 55: parseStr(s, result.sdSymbol, pos)
    of 65: parseStr(s, result.sdSymbolSfx, pos)
    of 48: parseStr(s, result.sdSecurityID, pos)
    of 22: parseStr(s, result.sdIDSource, pos)
    of 167: parseStr(s, result.sdSecurityType, pos)
    of 200: parseStr(s, result.sdMaturityMonthYear, pos)
    of 205: parseUInt(s, result.sdMaturityDay, pos)
    of 201: parseInt(s, result.sdPutOrCall, pos)
    of 202: parseFloat(s, result.sdStrikePrice, pos)
    of 206: parseChar(s, result.sdOptAttribute, pos)
    of 231: parseStr(s, result.sdContractMultiplier, pos)
    of 223: parseStr(s, result.sdCouponRate, pos)
    of 207: parseStr(s, result.sdSecurityExchange, pos)
    of 106: parseStr(s, result.sdIssuer, pos)
    of 348: parseUInt(s, result.sdEncodedIssuerLen, pos)
    of 349: parseStr(s, result.sdEncodedIssuer, pos)
    of 107: parseStr(s, result.sdSecurityDesc, pos)
    of 350: parseUInt(s, result.sdEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.sdEncodedSecurityDesc, pos)
    of 15: parseStr(s, result.sdCurrency, pos)
    of 336: parseStr(s, result.sdTradingSessionID, pos)
    of 58: parseStr(s, result.sdText, pos)
    of 354: parseUInt(s, result.sdEncodedTextLen, pos)
    of 355: parseStr(s, result.sdEncodedText, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.sdNoRelatedSym, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseSecurityStatusRequest(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("e", "SecurityStatusRequest"))
  result.msgType = SecurityStatusRequest
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 324: parseStr(s, result.ssrSecurityStatusReqID, pos)
    of 55: parseStr(s, result.ssrSymbol, pos)
    of 65: parseStr(s, result.ssrSymbolSfx, pos)
    of 48: parseStr(s, result.ssrSecurityID, pos)
    of 22: parseStr(s, result.ssrIDSource, pos)
    of 167: parseStr(s, result.ssrSecurityType, pos)
    of 200: parseStr(s, result.ssrMaturityMonthYear, pos)
    of 205: parseUInt(s, result.ssrMaturityDay, pos)
    of 201: parseInt(s, result.ssrPutOrCall, pos)
    of 202: parseFloat(s, result.ssrStrikePrice, pos)
    of 206: parseChar(s, result.ssrOptAttribute, pos)
    of 231: parseStr(s, result.ssrContractMultiplier, pos)
    of 223: parseStr(s, result.ssrCouponRate, pos)
    of 207: parseStr(s, result.ssrSecurityExchange, pos)
    of 106: parseStr(s, result.ssrIssuer, pos)
    of 348: parseUInt(s, result.ssrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.ssrEncodedIssuer, pos)
    of 107: parseStr(s, result.ssrSecurityDesc, pos)
    of 350: parseUInt(s, result.ssrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.ssrEncodedSecurityDesc, pos)
    of 15: parseStr(s, result.ssrCurrency, pos)
    of 263: parseChar(s, result.ssrSubscriptionRequestType, pos)
    of 336: parseStr(s, result.ssrTradingSessionID, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseSecurityStatus(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("f", "SecurityStatus"))
  result.msgType = SecurityStatus
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 324: parseStr(s, result.ssSecurityStatusReqID, pos)
    of 55: parseStr(s, result.ssSymbol, pos)
    of 65: parseStr(s, result.ssSymbolSfx, pos)
    of 48: parseStr(s, result.ssSecurityID, pos)
    of 22: parseStr(s, result.ssIDSource, pos)
    of 167: parseStr(s, result.ssSecurityType, pos)
    of 200: parseStr(s, result.ssMaturityMonthYear, pos)
    of 205: parseUInt(s, result.ssMaturityDay, pos)
    of 201: parseInt(s, result.ssPutOrCall, pos)
    of 202: parseFloat(s, result.ssStrikePrice, pos)
    of 206: parseChar(s, result.ssOptAttribute, pos)
    of 231: parseStr(s, result.ssContractMultiplier, pos)
    of 223: parseStr(s, result.ssCouponRate, pos)
    of 207: parseStr(s, result.ssSecurityExchange, pos)
    of 106: parseStr(s, result.ssIssuer, pos)
    of 348: parseUInt(s, result.ssEncodedIssuerLen, pos)
    of 349: parseStr(s, result.ssEncodedIssuer, pos)
    of 107: parseStr(s, result.ssSecurityDesc, pos)
    of 350: parseUInt(s, result.ssEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.ssEncodedSecurityDesc, pos)
    of 15: parseStr(s, result.ssCurrency, pos)
    of 336: parseStr(s, result.ssTradingSessionID, pos)
    of 325: parseBool(s, result.ssUnsolicitedIndicator, pos)
    of 326: parseInt(s, result.ssSecurityTradingStatus, pos)
    of 291: parseChar(s, result.ssFinancialStatus, pos)
    of 292: parseChar(s, result.ssCorporateAction, pos)
    of 327: parseChar(s, result.ssHaltReasonChar, pos)
    of 328: parseBool(s, result.ssInViewOfCommon, pos)
    of 329: parseBool(s, result.ssDueToRelated, pos)
    of 330: parseInt(s, result.ssBuyVolume, pos)
    of 331: parseInt(s, result.ssSellVolume, pos)
    of 332: parseFloat(s, result.ssHighPx, pos)
    of 333: parseFloat(s, result.ssLowPx, pos)
    of 31: parseFloat(s, result.ssLastPx, pos)
    of 60: parseStr(s, result.ssTransactTime, pos)
    of 334: parseInt(s, result.ssAdjustment, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseTradingSessionStatusRequest(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("g", "TradingSessionStatusRequest"))
  result.msgType = TradingSessionStatusRequest
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 335: parseStr(s, result.tssrTradSesReqID, pos)
    of 336: parseStr(s, result.tssrTradingSessionID, pos)
    of 338: parseInt(s, result.tssrTradSesMethod, pos)
    of 339: parseInt(s, result.tssrTradSesMode, pos)
    of 263: parseChar(s, result.tssrSubscriptionRequestType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseTradingSessionStatus(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("h", "TradingSessionStatus"))
  result.msgType = TradingSessionStatus
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 335: parseStr(s, result.tssTradSesReqID, pos)
    of 336: parseStr(s, result.tssTradingSessionID, pos)
    of 338: parseInt(s, result.tssTradSesMethod, pos)
    of 339: parseInt(s, result.tssTradSesMode, pos)
    of 325: parseBool(s, result.tssUnsolicitedIndicator, pos)
    of 340: parseInt(s, result.tssTradSesStatus, pos)
    of 341: parseStr(s, result.tssTradSesStartTime, pos)
    of 342: parseStr(s, result.tssTradSesOpenTime, pos)
    of 343: parseStr(s, result.tssTradSesPreCloseTime, pos)
    of 344: parseStr(s, result.tssTradSesCloseTime, pos)
    of 345: parseStr(s, result.tssTradSesEndTime, pos)
    of 387: parseInt(s, result.tssTotalVolumeTraded, pos)
    of 58: parseStr(s, result.tssText, pos)
    of 354: parseUInt(s, result.tssEncodedTextLen, pos)
    of 355: parseStr(s, result.tssEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseMassQuote(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("i", "MassQuote"))
  result.msgType = MassQuote
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 131: parseStr(s, result.mqQuoteReqID, pos)
    of 117: parseStr(s, result.mqQuoteID, pos)
    of 301: parseInt(s, result.mqQuoteResponseLevel, pos)
    of 293: parseInt(s, result.mqDefBidSize, pos)
    of 294: parseInt(s, result.mqDefOfferSize, pos)
    of 296: skipValue(s, pos); parseNoQuoteSets(s, result.mqNoQuoteSets, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseBusinessMessageReject(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("j", "BusinessMessageReject"))
  result.msgType = BusinessMessageReject
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 45: parseInt(s, result.bmrRefSeqNum, pos)
    of 372: parseStr(s, result.bmrRefMsgType, pos)
    of 379: parseStr(s, result.bmrBusinessRejectRefID, pos)
    of 380: parseInt(s, result.bmrBusinessRejectReason, pos)
    of 58: parseStr(s, result.bmrText, pos)
    of 354: parseUInt(s, result.bmrEncodedTextLen, pos)
    of 355: parseStr(s, result.bmrEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseBidRequest(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("k", "BidRequest"))
  result.msgType = BidRequest
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 390: parseStr(s, result.brBidID, pos)
    of 391: parseStr(s, result.brClientBidID, pos)
    of 374: parseChar(s, result.brBidRequestTransType, pos)
    of 392: parseStr(s, result.brListName, pos)
    of 393: parseInt(s, result.brTotalNumSecurities, pos)
    of 394: parseInt(s, result.brBidType, pos)
    of 395: parseInt(s, result.brNumTickets, pos)
    of 15: parseStr(s, result.brCurrency, pos)
    of 396: parseUInt(s, result.brSideValue1, pos)
    of 397: parseUInt(s, result.brSideValue2, pos)
    of 398: skipValue(s, pos); parseNoBidDescriptors(s, result.brNoBidDescriptors, pos)
    of 420: skipValue(s, pos); parseNoBidComponents(s, result.brNoBidComponents, pos)
    of 409: parseInt(s, result.brLiquidityIndType, pos)
    of 410: parseStr(s, result.brWtAverageLiquidity, pos)
    of 411: parseBool(s, result.brExchangeForPhysical, pos)
    of 412: parseUInt(s, result.brOutMainCntryUIndex, pos)
    of 413: parseStr(s, result.brCrossPercent, pos)
    of 414: parseInt(s, result.brProgRptReqs, pos)
    of 415: parseInt(s, result.brProgPeriodInterval, pos)
    of 416: parseInt(s, result.brIncTaxInd, pos)
    of 121: parseBool(s, result.brForexReq, pos)
    of 417: parseInt(s, result.brNumBidders, pos)
    of 75: parseStr(s, result.brTradeDate, pos)
    of 418: parseChar(s, result.brTradeType, pos)
    of 419: parseChar(s, result.brBasisPxType, pos)
    of 443: parseStr(s, result.brStrikeTime, pos)
    of 58: parseStr(s, result.brText, pos)
    of 354: parseUInt(s, result.brEncodedTextLen, pos)
    of 355: parseStr(s, result.brEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseBidResponse(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("l", "BidResponse"))
  result.msgType = BidResponse
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 390: parseStr(s, result.brBidID, pos)
    of 391: parseStr(s, result.brClientBidID, pos)
    of 420: skipValue(s, pos); parseNoBidComponents(s, result.brNoBidComponents, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseListStrikePrice(s: string, result: var Fix42, pos: var int) =
  var
    t: int
  # result = Fix42(msgType: ("m", "ListStrikePrice"))
  result.msgType = ListStrikePrice
  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t
    of 49: parseStr(s, result.senderCompID, pos)
    of 56: parseStr(s, result.targetCompID, pos)
    of 115: parseStr(s, result.onBehalfOfCompID, pos)
    of 128: parseStr(s, result.deliverToCompID, pos)
    of 90: parseUInt(s, result.secureDataLen, pos)
    of 91: parseStr(s, result.secureData, pos)
    of 34: parseInt(s, result.msgSeqNum, pos)
    of 50: parseStr(s, result.senderSubID, pos)
    of 142: parseStr(s, result.senderLocationID, pos)
    of 57: parseStr(s, result.targetSubID, pos)
    of 143: parseStr(s, result.targetLocationID, pos)
    of 116: parseStr(s, result.onBehalfOfSubID, pos)
    of 144: parseStr(s, result.onBehalfOfLocationID, pos)
    of 129: parseStr(s, result.deliverToSubID, pos)
    of 145: parseStr(s, result.deliverToLocationID, pos)
    of 43: parseBool(s, result.possDupFlag, pos)
    of 97: parseBool(s, result.possResend, pos)
    of 52: parseStr(s, result.sendingTime, pos)
    of 122: parseStr(s, result.origSendingTime, pos)
    of 212: parseUInt(s, result.xmlDataLen, pos)
    of 213: parseStr(s, result.xmlData, pos)
    of 347: parseStr(s, result.messageEncoding, pos)
    of 369: parseInt(s, result.lastMsgSeqNumProcessed, pos)
    of 370: parseStr(s, result.onBehalfOfSendingTime, pos)
    of 66: parseStr(s, result.lspListID, pos)
    of 422: parseInt(s, result.lspTotNoStrikes, pos)
    of 428: skipValue(s, pos); parseNoStrikes(s, result.lspNoStrikes, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseFix42*(s: string): Fix42 =
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
      of "6": parseIOI(s, result, pos)
      of "7": parseAdvertisement(s, result, pos)
      of "8": parseExecutionReport(s, result, pos)
      of "9": parseOrderCancelReject(s, result, pos)
      of "A": parseLogon(s, result, pos)
      of "B": parseNews(s, result, pos)
      of "C": parseEmail(s, result, pos)
      of "D": parseNewOrderSingle(s, result, pos)
      of "E": parseNewOrderList(s, result, pos)
      of "F": parseOrderCancelRequest(s, result, pos)
      of "G": parseOrderCancelReplaceRequest(s, result, pos)
      of "H": parseOrderStatusRequest(s, result, pos)
      of "J": parseAllocation(s, result, pos)
      of "K": parseListCancelRequest(s, result, pos)
      of "L": parseListExecute(s, result, pos)
      of "M": parseListStatusRequest(s, result, pos)
      of "N": parseListStatus(s, result, pos)
      of "P": parseAllocationInstructionAck(s, result, pos)
      of "Q": parseDontKnowTrade(s, result, pos)
      of "R": parseQuoteRequest(s, result, pos)
      of "S": parseQuote(s, result, pos)
      of "T": parseSettlementInstructions(s, result, pos)
      of "V": parseMarketDataRequest(s, result, pos)
      of "W": parseMarketDataSnapshotFullRefresh(s, result, pos)
      of "X": parseMarketDataIncrementalRefresh(s, result, pos)
      of "Y": parseMarketDataRequestReject(s, result, pos)
      of "Z": parseQuoteCancel(s, result, pos)
      of "a": parseQuoteStatusRequest(s, result, pos)
      of "b": parseQuoteAcknowledgement(s, result, pos)
      of "c": parseSecurityDefinitionRequest(s, result, pos)
      of "d": parseSecurityDefinition(s, result, pos)
      of "e": parseSecurityStatusRequest(s, result, pos)
      of "f": parseSecurityStatus(s, result, pos)
      of "g": parseTradingSessionStatusRequest(s, result, pos)
      of "h": parseTradingSessionStatus(s, result, pos)
      of "i": parseMassQuote(s, result, pos)
      of "j": parseBusinessMessageReject(s, result, pos)
      of "k": parseBidRequest(s, result, pos)
      of "l": parseBidResponse(s, result, pos)
      of "m": parseListStrikePrice(s, result, pos)
    else: raise newException(ValueError, "unexpected header field: " & $t)

