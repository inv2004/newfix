include parsefix

type
  NoIOIQualifiers = object
    iOIQualifier: char

  NoRoutingIDs = object
    routingType: int
    routingID: string

  NoContraBrokers = object
    contraBroker: string
    contraTrader: string
    contraTradeQty: uint
    contraTradeTime: string

  NoMsgTypes = object
    refMsgType: string
    msgDirection: char

  NoRelatedSym = object
    relatdSym: string
    symbolSfx: string
    securityID: string
    iDSource: string
    securityType: string
    maturityMonthYear: string
    maturityDay: uint
    putOrCall: int
    strikePrice: float
    optAttribute: char
    contractMultiplier: string
    couponRate: string
    securityExchange: string
    issuer: string
    encodedIssuerLen: uint
    encodedIssuer: string
    securityDesc: string
    encodedSecurityDescLen: uint
    encodedSecurityDesc: string
    symbol: string
    prevClosePx: float
    quoteRequestType: int
    tradingSessionID: string
    side: char
    orderQty: uint
    futSettDate: string
    ordType: char
    futSettDate2: string
    orderQty2: uint
    expireTime: string
    transactTime: string
    currency: string
    underlyingSymbol: string
    underlyingSymbolSfx: string
    underlyingSecurityID: string
    underlyingIDSource: string
    underlyingSecurityType: string
    underlyingMaturityMonthYear: string
    underlyingMaturityDay: uint
    underlyingPutOrCall: int
    underlyingStrikePrice: float
    underlyingOptAttribute: char
    underlyingContractMultiplier: string
    underlyingCouponRate: string
    underlyingSecurityExchange: string
    underlyingIssuer: string
    encodedUnderlyingIssuerLen: uint
    encodedUnderlyingIssuer: string
    underlyingSecurityDesc: string
    encodedUnderlyingSecurityDescLen: uint
    encodedUnderlyingSecurityDesc: string
    ratioQty: uint
    underlyingCurrency: string

  LinesOfText = object
    text: string
    encodedTextLen: uint
    encodedText: string

  NoAllocs = object
    allocAccount: string
    allocShares: uint
    allocPrice: float
    processCode: char
    brokerOfCredit: string
    notifyBrokerOfCredit: bool
    allocHandlInst: int
    allocText: string
    encodedAllocTextLen: uint
    encodedAllocText: string
    execBroker: string
    clientID: string
    commission: uint
    commType: char
    allocAvgPx: float
    allocNetMoney: uint
    settlCurrAmt: uint
    settlCurrency: string
    settlCurrFxRate: string
    settlCurrFxRateCalc: char
    accruedInterestAmt: uint
    settlInstMode: char
    noMiscFees: seq[NoMiscFees]

  NoTradingSessions = object
    tradingSessionID: string

  NoOrders = object
    clOrdID: string
    listSeqNo: int
    settlInstMode: char
    clientID: string
    execBroker: string
    account: string
    noAllocs: seq[NoAllocs]
    settlmntTyp: char
    futSettDate: string
    handlInst: char
    execInst: string
    minQty: uint
    maxFloor: uint
    exDestination: string
    noTradingSessions: seq[NoTradingSessions]
    processCode: char
    symbol: string
    symbolSfx: string
    securityID: string
    iDSource: string
    securityType: string
    maturityMonthYear: string
    maturityDay: uint
    putOrCall: int
    strikePrice: float
    optAttribute: char
    contractMultiplier: string
    couponRate: string
    securityExchange: string
    issuer: string
    encodedIssuerLen: uint
    encodedIssuer: string
    securityDesc: string
    encodedSecurityDescLen: uint
    encodedSecurityDesc: string
    prevClosePx: float
    side: char
    sideValueInd: int
    locateReqd: bool
    transactTime: string
    orderQty: uint
    cashOrderQty: uint
    ordType: char
    price: float
    stopPx: float
    currency: string
    complianceID: string
    solicitedFlag: bool
    iOIid: string
    quoteID: string
    timeInForce: char
    effectiveTime: string
    expireDate: string
    expireTime: string
    gTBookingInst: int
    commission: uint
    commType: char
    rule80A: char
    forexReq: bool
    settlCurrency: string
    text: string
    encodedTextLen: uint
    encodedText: string
    futSettDate2: string
    orderQty2: uint
    openClose: char
    coveredOrUncovered: int
    customerOrFirm: int
    maxShow: uint
    pegDifference: float
    discretionInst: char
    discretionOffset: float
    clearingFirm: string
    clearingAccount: string
    orderID: string
    secondaryOrderID: string
    listID: string
    waveNo: string
    cumQty: uint
    ordStatus: char
    leavesQty: uint
    cxlQty: uint
    avgPx: float
    ordRejReason: int

  NoExecs = object
    lastShares: uint
    execID: string
    lastPx: float
    lastCapacity: char

  NoMiscFees = object
    miscFeeAmt: uint
    miscFeeCurr: string
    miscFeeType: char

  NoMDEntryTypes = object
    mDEntryType: char

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
    quoteCondition: string
    tradeCondition: string
    mDEntryOriginator: string
    locationID: string
    deskID: string
    openCloseSettleFlag: char
    timeInForce: char
    expireDate: string
    expireTime: string
    minQty: uint
    execInst: string
    sellerDays: int
    orderID: string
    quoteEntryID: string
    mDEntryBuyer: string
    mDEntrySeller: string
    numberOfOrders: int
    mDEntryPositionNo: int
    text: string
    encodedTextLen: uint
    encodedText: string
    mDUpdateAction: char
    deleteReason: char
    mDEntryID: string
    mDEntryRefID: string
    symbol: string
    symbolSfx: string
    securityID: string
    iDSource: string
    securityType: string
    maturityMonthYear: string
    maturityDay: uint
    putOrCall: int
    strikePrice: float
    optAttribute: char
    contractMultiplier: string
    couponRate: string
    securityExchange: string
    issuer: string
    encodedIssuerLen: uint
    encodedIssuer: string
    securityDesc: string
    encodedSecurityDescLen: uint
    encodedSecurityDesc: string
    financialStatus: char
    corporateAction: char
    totalVolumeTraded: uint

  NoQuoteSets = object
    quoteSetID: string
    underlyingSymbol: string
    underlyingSymbolSfx: string
    underlyingSecurityID: string
    underlyingIDSource: string
    underlyingSecurityType: string
    underlyingMaturityMonthYear: string
    underlyingMaturityDay: uint
    underlyingPutOrCall: int
    underlyingStrikePrice: float
    underlyingOptAttribute: char
    underlyingContractMultiplier: string
    underlyingCouponRate: string
    underlyingSecurityExchange: string
    underlyingIssuer: string
    encodedUnderlyingIssuerLen: uint
    encodedUnderlyingIssuer: string
    underlyingSecurityDesc: string
    encodedUnderlyingSecurityDescLen: uint
    encodedUnderlyingSecurityDesc: string
    totQuoteEntries: int
    noQuoteEntries: seq[NoQuoteEntries]
    quoteSetValidUntilTime: string

  NoQuoteEntries = object
    symbol: string
    symbolSfx: string
    securityID: string
    iDSource: string
    securityType: string
    maturityMonthYear: string
    maturityDay: uint
    putOrCall: int
    strikePrice: float
    optAttribute: char
    contractMultiplier: string
    couponRate: string
    securityExchange: string
    issuer: string
    encodedIssuerLen: uint
    encodedIssuer: string
    securityDesc: string
    encodedSecurityDescLen: uint
    encodedSecurityDesc: string
    underlyingSymbol: string
    quoteEntryID: string
    quoteEntryRejectReason: int
    bidPx: float
    offerPx: float
    bidSize: uint
    offerSize: uint
    validUntilTime: string
    bidSpotRate: float
    offerSpotRate: float
    bidForwardPoints: float
    offerForwardPoints: float
    transactTime: string
    tradingSessionID: string
    futSettDate: string
    ordType: char
    futSettDate2: string
    orderQty2: uint
    currency: string

  NoBidDescriptors = object
    bidDescriptorType: int
    bidDescriptor: string
    sideValueInd: int
    liquidityValue: uint
    liquidityNumSecurities: int
    liquidityPctLow: string
    liquidityPctHigh: string
    eFPTrackingError: string
    fairValue: uint
    outsideIndexPct: string
    valueOfFutures: uint

  NoBidComponents = object
    listID: string
    side: char
    tradingSessionID: string
    netGrossInd: int
    settlmntTyp: char
    futSettDate: string
    account: string
    commission: uint
    commType: char
    country: string
    price: float
    priceType: int
    fairValue: uint
    text: string
    encodedTextLen: uint
    encodedText: string

  NoStrikes = object
    symbol: string
    symbolSfx: string
    securityID: string
    iDSource: string
    securityType: string
    maturityMonthYear: string
    maturityDay: uint
    putOrCall: int
    strikePrice: float
    optAttribute: char
    contractMultiplier: string
    couponRate: string
    securityExchange: string
    issuer: string
    encodedIssuerLen: uint
    encodedIssuer: string
    securityDesc: string
    encodedSecurityDescLen: uint
    encodedSecurityDesc: string
    prevClosePx: float
    clOrdID: string
    side: char
    price: float
    currency: string
    text: string
    encodedTextLen: uint
    encodedText: string

  MsgTypeKind = enum
    mt0, mt1, mt2, mt3, mt4, mt5, mt6, mt7, mt8, mt9, mtA, mtB, mtC, mtD, mtE, mtF, mtG, mtH, mtJ, mtK, mtL, mtM, mtN, mtP, mtQ, mtR, mtS, mtT, mtV, mtW, mtX, mtY, mtZ, mtALow, mtBLow, mtCLow, mtDLow, mtELow, mtFLow, mtGLow, mtHLow, mtILow, mtJLow, mtKLow, mtLLow, mtMLow

  FIX42 = object
    beginString: string
    bodyLength: int
    senderCompID: string
    targetCompID: string
    onBehalfOfCompID: string
    deliverToCompID: string
    secureDataLen: uint
    secureData: string
    msgSeqNum: int
    senderSubID: string
    senderLocationID: string
    targetSubID: string
    targetLocationID: string
    onBehalfOfSubID: string
    onBehalfOfLocationID: string
    deliverToSubID: string
    deliverToLocationID: string
    possDupFlag: bool
    possResend: bool
    sendingTime: string
    origSendingTime: string
    xmlDataLen: uint
    xmlData: string
    messageEncoding: string
    lastMsgSeqNumProcessed: int
    onBehalfOfSendingTime: string
    case msgType: MsgTypeKind
    of mt0:
      t0TestReqID: string
    of mt1:
      t1TestReqID: string
    of mt2:
      t2BeginSeqNo: int
      t2EndSeqNo: int
    of mt3:
      t3RefSeqNum: int
      t3RefTagID: int
      t3RefMsgType: string
      t3SessionRejectReason: int
      t3Text: string
      t3EncodedTextLen: uint
      t3EncodedText: string
    of mt4:
      t4GapFillFlag: bool
      t4NewSeqNo: int
    of mt5:
      t5Text: string
      t5EncodedTextLen: uint
      t5EncodedText: string
    of mt6:
      t6IOIid: string
      t6IOITransType: char
      t6IOIRefID: string
      t6Symbol: string
      t6SymbolSfx: string
      t6SecurityID: string
      t6IDSource: string
      t6SecurityType: string
      t6MaturityMonthYear: string
      t6MaturityDay: uint
      t6PutOrCall: int
      t6StrikePrice: float
      t6OptAttribute: char
      t6ContractMultiplier: string
      t6CouponRate: string
      t6SecurityExchange: string
      t6Issuer: string
      t6EncodedIssuerLen: uint
      t6EncodedIssuer: string
      t6SecurityDesc: string
      t6EncodedSecurityDescLen: uint
      t6EncodedSecurityDesc: string
      t6Side: char
      t6IOIShares: string
      t6Price: float
      t6Currency: string
      t6ValidUntilTime: string
      t6IOIQltyInd: char
      t6IOINaturalFlag: bool
      t6NoIOIQualifiers: seq[NoIOIQualifiers]
      t6Text: string
      t6EncodedTextLen: uint
      t6EncodedText: string
      t6TransactTime: string
      t6URLLink: string
      t6NoRoutingIDs: seq[NoRoutingIDs]
      t6SpreadToBenchmark: float
      t6Benchmark: char
    of mt7:
      t7AdvId: string
      t7AdvTransType: string
      t7AdvRefID: string
      t7Symbol: string
      t7SymbolSfx: string
      t7SecurityID: string
      t7IDSource: string
      t7SecurityType: string
      t7MaturityMonthYear: string
      t7MaturityDay: uint
      t7PutOrCall: int
      t7StrikePrice: float
      t7OptAttribute: char
      t7ContractMultiplier: string
      t7CouponRate: string
      t7SecurityExchange: string
      t7Issuer: string
      t7EncodedIssuerLen: uint
      t7EncodedIssuer: string
      t7SecurityDesc: string
      t7EncodedSecurityDescLen: uint
      t7EncodedSecurityDesc: string
      t7AdvSide: char
      t7Shares: uint
      t7Price: float
      t7Currency: string
      t7TradeDate: string
      t7TransactTime: string
      t7Text: string
      t7EncodedTextLen: uint
      t7EncodedText: string
      t7URLLink: string
      t7LastMkt: string
      t7TradingSessionID: string
    of mt8:
      t8OrderID: string
      t8SecondaryOrderID: string
      t8ClOrdID: string
      t8OrigClOrdID: string
      t8ClientID: string
      t8ExecBroker: string
      t8NoContraBrokers: seq[NoContraBrokers]
      t8ListID: string
      t8ExecID: string
      t8ExecTransType: char
      t8ExecRefID: string
      t8ExecType: char
      t8OrdStatus: char
      t8OrdRejReason: int
      t8ExecRestatementReason: int
      t8Account: string
      t8SettlmntTyp: char
      t8FutSettDate: string
      t8Symbol: string
      t8SymbolSfx: string
      t8SecurityID: string
      t8IDSource: string
      t8SecurityType: string
      t8MaturityMonthYear: string
      t8MaturityDay: uint
      t8PutOrCall: int
      t8StrikePrice: float
      t8OptAttribute: char
      t8ContractMultiplier: string
      t8CouponRate: string
      t8SecurityExchange: string
      t8Issuer: string
      t8EncodedIssuerLen: uint
      t8EncodedIssuer: string
      t8SecurityDesc: string
      t8EncodedSecurityDescLen: uint
      t8EncodedSecurityDesc: string
      t8Side: char
      t8OrderQty: uint
      t8CashOrderQty: uint
      t8OrdType: char
      t8Price: float
      t8StopPx: float
      t8PegDifference: float
      t8DiscretionInst: char
      t8DiscretionOffset: float
      t8Currency: string
      t8ComplianceID: string
      t8SolicitedFlag: bool
      t8TimeInForce: char
      t8EffectiveTime: string
      t8ExpireDate: string
      t8ExpireTime: string
      t8ExecInst: string
      t8Rule80A: char
      t8LastShares: uint
      t8LastPx: float
      t8LastSpotRate: float
      t8LastForwardPoints: float
      t8LastMkt: string
      t8TradingSessionID: string
      t8LastCapacity: char
      t8LeavesQty: uint
      t8CumQty: uint
      t8AvgPx: float
      t8DayOrderQty: uint
      t8DayCumQty: uint
      t8DayAvgPx: float
      t8GTBookingInst: int
      t8TradeDate: string
      t8TransactTime: string
      t8ReportToExch: bool
      t8Commission: uint
      t8CommType: char
      t8GrossTradeAmt: uint
      t8SettlCurrAmt: uint
      t8SettlCurrency: string
      t8SettlCurrFxRate: string
      t8SettlCurrFxRateCalc: char
      t8HandlInst: char
      t8MinQty: uint
      t8MaxFloor: uint
      t8OpenClose: char
      t8MaxShow: uint
      t8Text: string
      t8EncodedTextLen: uint
      t8EncodedText: string
      t8FutSettDate2: string
      t8OrderQty2: uint
      t8ClearingFirm: string
      t8ClearingAccount: string
      t8MultiLegReportingType: char
    of mt9:
      t9OrderID: string
      t9SecondaryOrderID: string
      t9ClOrdID: string
      t9OrigClOrdID: string
      t9OrdStatus: char
      t9ClientID: string
      t9ExecBroker: string
      t9ListID: string
      t9Account: string
      t9TransactTime: string
      t9CxlRejResponseTo: char
      t9CxlRejReason: int
      t9Text: string
      t9EncodedTextLen: uint
      t9EncodedText: string
    of mtA:
      aEncryptMethod: int
      aHeartBtInt: int
      aRawDataLength: uint
      aRawData: string
      aResetSeqNumFlag: bool
      aMaxMessageSize: int
      aNoMsgTypes: seq[NoMsgTypes]
    of mtB:
      bOrigTime: string
      bUrgency: char
      bHeadline: string
      bEncodedHeadlineLen: uint
      bEncodedHeadline: string
      bNoRoutingIDs: seq[NoRoutingIDs]
      bNoRelatedSym: seq[NoRelatedSym]
      bLinesOfText: seq[LinesOfText]
      bURLLink: string
      bRawDataLength: uint
      bRawData: string
    of mtC:
      cEmailThreadID: string
      cEmailType: char
      cOrigTime: string
      cSubject: string
      cEncodedSubjectLen: uint
      cEncodedSubject: string
      cNoRoutingIDs: seq[NoRoutingIDs]
      cNoRelatedSym: seq[NoRelatedSym]
      cOrderID: string
      cClOrdID: string
      cLinesOfText: seq[LinesOfText]
      cRawDataLength: uint
      cRawData: string
    of mtD:
      dClOrdID: string
      dClientID: string
      dExecBroker: string
      dAccount: string
      dNoAllocs: seq[NoAllocs]
      dSettlmntTyp: char
      dFutSettDate: string
      dHandlInst: char
      dExecInst: string
      dMinQty: uint
      dMaxFloor: uint
      dExDestination: string
      dNoTradingSessions: seq[NoTradingSessions]
      dProcessCode: char
      dSymbol: string
      dSymbolSfx: string
      dSecurityID: string
      dIDSource: string
      dSecurityType: string
      dMaturityMonthYear: string
      dMaturityDay: uint
      dPutOrCall: int
      dStrikePrice: float
      dOptAttribute: char
      dContractMultiplier: string
      dCouponRate: string
      dSecurityExchange: string
      dIssuer: string
      dEncodedIssuerLen: uint
      dEncodedIssuer: string
      dSecurityDesc: string
      dEncodedSecurityDescLen: uint
      dEncodedSecurityDesc: string
      dPrevClosePx: float
      dSide: char
      dLocateReqd: bool
      dTransactTime: string
      dOrderQty: uint
      dCashOrderQty: uint
      dOrdType: char
      dPrice: float
      dStopPx: float
      dCurrency: string
      dComplianceID: string
      dSolicitedFlag: bool
      dIOIid: string
      dQuoteID: string
      dTimeInForce: char
      dEffectiveTime: string
      dExpireDate: string
      dExpireTime: string
      dGTBookingInst: int
      dCommission: uint
      dCommType: char
      dRule80A: char
      dForexReq: bool
      dSettlCurrency: string
      dText: string
      dEncodedTextLen: uint
      dEncodedText: string
      dFutSettDate2: string
      dOrderQty2: uint
      dOpenClose: char
      dCoveredOrUncovered: int
      dCustomerOrFirm: int
      dMaxShow: uint
      dPegDifference: float
      dDiscretionInst: char
      dDiscretionOffset: float
      dClearingFirm: string
      dClearingAccount: string
    of mtE:
      eListID: string
      eBidID: string
      eClientBidID: string
      eProgRptReqs: int
      eBidType: int
      eProgPeriodInterval: int
      eListExecInstType: char
      eListExecInst: string
      eEncodedListExecInstLen: uint
      eEncodedListExecInst: string
      eTotNoOrders: int
      eNoOrders: seq[NoOrders]
    of mtF:
      fOrigClOrdID: string
      fOrderID: string
      fClOrdID: string
      fListID: string
      fAccount: string
      fClientID: string
      fExecBroker: string
      fSymbol: string
      fSymbolSfx: string
      fSecurityID: string
      fIDSource: string
      fSecurityType: string
      fMaturityMonthYear: string
      fMaturityDay: uint
      fPutOrCall: int
      fStrikePrice: float
      fOptAttribute: char
      fContractMultiplier: string
      fCouponRate: string
      fSecurityExchange: string
      fIssuer: string
      fEncodedIssuerLen: uint
      fEncodedIssuer: string
      fSecurityDesc: string
      fEncodedSecurityDescLen: uint
      fEncodedSecurityDesc: string
      fSide: char
      fTransactTime: string
      fOrderQty: uint
      fCashOrderQty: uint
      fComplianceID: string
      fSolicitedFlag: bool
      fText: string
      fEncodedTextLen: uint
      fEncodedText: string
    of mtG:
      gOrderID: string
      gClientID: string
      gExecBroker: string
      gOrigClOrdID: string
      gClOrdID: string
      gListID: string
      gAccount: string
      gNoAllocs: seq[NoAllocs]
      gSettlmntTyp: char
      gFutSettDate: string
      gHandlInst: char
      gExecInst: string
      gMinQty: uint
      gMaxFloor: uint
      gExDestination: string
      gNoTradingSessions: seq[NoTradingSessions]
      gSymbol: string
      gSymbolSfx: string
      gSecurityID: string
      gIDSource: string
      gSecurityType: string
      gMaturityMonthYear: string
      gMaturityDay: uint
      gPutOrCall: int
      gStrikePrice: float
      gOptAttribute: char
      gContractMultiplier: string
      gCouponRate: string
      gSecurityExchange: string
      gIssuer: string
      gEncodedIssuerLen: uint
      gEncodedIssuer: string
      gSecurityDesc: string
      gEncodedSecurityDescLen: uint
      gEncodedSecurityDesc: string
      gSide: char
      gTransactTime: string
      gOrderQty: uint
      gCashOrderQty: uint
      gOrdType: char
      gPrice: float
      gStopPx: float
      gPegDifference: float
      gDiscretionInst: char
      gDiscretionOffset: float
      gComplianceID: string
      gSolicitedFlag: bool
      gCurrency: string
      gTimeInForce: char
      gEffectiveTime: string
      gExpireDate: string
      gExpireTime: string
      gGTBookingInst: int
      gCommission: uint
      gCommType: char
      gRule80A: char
      gForexReq: bool
      gSettlCurrency: string
      gText: string
      gEncodedTextLen: uint
      gEncodedText: string
      gFutSettDate2: string
      gOrderQty2: uint
      gOpenClose: char
      gCoveredOrUncovered: int
      gCustomerOrFirm: int
      gMaxShow: uint
      gLocateReqd: bool
      gClearingFirm: string
      gClearingAccount: string
    of mtH:
      hOrderID: string
      hClOrdID: string
      hClientID: string
      hAccount: string
      hExecBroker: string
      hSymbol: string
      hSymbolSfx: string
      hSecurityID: string
      hIDSource: string
      hSecurityType: string
      hMaturityMonthYear: string
      hMaturityDay: uint
      hPutOrCall: int
      hStrikePrice: float
      hOptAttribute: char
      hContractMultiplier: string
      hCouponRate: string
      hSecurityExchange: string
      hIssuer: string
      hEncodedIssuerLen: uint
      hEncodedIssuer: string
      hSecurityDesc: string
      hEncodedSecurityDescLen: uint
      hEncodedSecurityDesc: string
      hSide: char
    of mtJ:
      jAllocID: string
      jAllocTransType: char
      jRefAllocID: string
      jAllocLinkID: string
      jAllocLinkType: int
      jNoOrders: seq[NoOrders]
      jNoExecs: seq[NoExecs]
      jSide: char
      jSymbol: string
      jSymbolSfx: string
      jSecurityID: string
      jIDSource: string
      jSecurityType: string
      jMaturityMonthYear: string
      jMaturityDay: uint
      jPutOrCall: int
      jStrikePrice: float
      jOptAttribute: char
      jContractMultiplier: string
      jCouponRate: string
      jSecurityExchange: string
      jIssuer: string
      jEncodedIssuerLen: uint
      jEncodedIssuer: string
      jSecurityDesc: string
      jEncodedSecurityDescLen: uint
      jEncodedSecurityDesc: string
      jShares: uint
      jLastMkt: string
      jTradingSessionID: string
      jAvgPx: float
      jCurrency: string
      jAvgPrxPrecision: int
      jTradeDate: string
      jTransactTime: string
      jSettlmntTyp: char
      jFutSettDate: string
      jGrossTradeAmt: uint
      jNetMoney: uint
      jOpenClose: char
      jText: string
      jEncodedTextLen: uint
      jEncodedText: string
      jNumDaysInterest: int
      jAccruedInterestRate: string
      jNoAllocs: seq[NoAllocs]
    of mtK:
      kListID: string
      kTransactTime: string
      kText: string
      kEncodedTextLen: uint
      kEncodedText: string
    of mtL:
      lListID: string
      lClientBidID: string
      lBidID: string
      lTransactTime: string
      lText: string
      lEncodedTextLen: uint
      lEncodedText: string
    of mtM:
      mListID: string
      mText: string
      mEncodedTextLen: uint
      mEncodedText: string
    of mtN:
      nListID: string
      nListStatusType: int
      nNoRpts: int
      nListOrderStatus: int
      nRptSeq: int
      nListStatusText: string
      nEncodedListStatusTextLen: uint
      nEncodedListStatusText: string
      nTransactTime: string
      nTotNoOrders: int
      nNoOrders: seq[NoOrders]
    of mtP:
      pClientID: string
      pExecBroker: string
      pAllocID: string
      pTradeDate: string
      pTransactTime: string
      pAllocStatus: int
      pAllocRejCode: int
      pText: string
      pEncodedTextLen: uint
      pEncodedText: string
    of mtQ:
      qOrderID: string
      qExecID: string
      qDKReason: char
      qSymbol: string
      qSymbolSfx: string
      qSecurityID: string
      qIDSource: string
      qSecurityType: string
      qMaturityMonthYear: string
      qMaturityDay: uint
      qPutOrCall: int
      qStrikePrice: float
      qOptAttribute: char
      qContractMultiplier: string
      qCouponRate: string
      qSecurityExchange: string
      qIssuer: string
      qEncodedIssuerLen: uint
      qEncodedIssuer: string
      qSecurityDesc: string
      qEncodedSecurityDescLen: uint
      qEncodedSecurityDesc: string
      qSide: char
      qOrderQty: uint
      qCashOrderQty: uint
      qLastShares: uint
      qLastPx: float
      qText: string
      qEncodedTextLen: uint
      qEncodedText: string
    of mtR:
      rQuoteReqID: string
      rNoRelatedSym: seq[NoRelatedSym]
    of mtS:
      sQuoteReqID: string
      sQuoteID: string
      sQuoteResponseLevel: int
      sTradingSessionID: string
      sSymbol: string
      sSymbolSfx: string
      sSecurityID: string
      sIDSource: string
      sSecurityType: string
      sMaturityMonthYear: string
      sMaturityDay: uint
      sPutOrCall: int
      sStrikePrice: float
      sOptAttribute: char
      sContractMultiplier: string
      sCouponRate: string
      sSecurityExchange: string
      sIssuer: string
      sEncodedIssuerLen: uint
      sEncodedIssuer: string
      sSecurityDesc: string
      sEncodedSecurityDescLen: uint
      sEncodedSecurityDesc: string
      sBidPx: float
      sOfferPx: float
      sBidSize: uint
      sOfferSize: uint
      sValidUntilTime: string
      sBidSpotRate: float
      sOfferSpotRate: float
      sBidForwardPoints: float
      sOfferForwardPoints: float
      sTransactTime: string
      sFutSettDate: string
      sOrdType: char
      sFutSettDate2: string
      sOrderQty2: uint
      sCurrency: string
    of mtT:
      tSettlInstID: string
      tSettlInstTransType: char
      tSettlInstRefID: string
      tSettlInstMode: char
      tSettlInstSource: char
      tAllocAccount: string
      tSettlLocation: string
      tTradeDate: string
      tAllocID: string
      tLastMkt: string
      tTradingSessionID: string
      tSide: char
      tSecurityType: string
      tEffectiveTime: string
      tTransactTime: string
      tClientID: string
      tExecBroker: string
      tStandInstDbType: int
      tStandInstDbName: string
      tStandInstDbID: string
      tSettlDeliveryType: int
      tSettlDepositoryCode: string
      tSettlBrkrCode: string
      tSettlInstCode: string
      tSecuritySettlAgentName: string
      tSecuritySettlAgentCode: string
      tSecuritySettlAgentAcctNum: string
      tSecuritySettlAgentAcctName: string
      tSecuritySettlAgentContactName: string
      tSecuritySettlAgentContactPhone: string
      tCashSettlAgentName: string
      tCashSettlAgentCode: string
      tCashSettlAgentAcctNum: string
      tCashSettlAgentAcctName: string
      tCashSettlAgentContactName: string
      tCashSettlAgentContactPhone: string
    of mtV:
      vMDReqID: string
      vSubscriptionRequestType: char
      vMarketDepth: int
      vMDUpdateType: int
      vAggregatedBook: bool
      vNoMDEntryTypes: seq[NoMDEntryTypes]
      vNoRelatedSym: seq[NoRelatedSym]
    of mtW:
      wMDReqID: string
      wSymbol: string
      wSymbolSfx: string
      wSecurityID: string
      wIDSource: string
      wSecurityType: string
      wMaturityMonthYear: string
      wMaturityDay: uint
      wPutOrCall: int
      wStrikePrice: float
      wOptAttribute: char
      wContractMultiplier: string
      wCouponRate: string
      wSecurityExchange: string
      wIssuer: string
      wEncodedIssuerLen: uint
      wEncodedIssuer: string
      wSecurityDesc: string
      wEncodedSecurityDescLen: uint
      wEncodedSecurityDesc: string
      wFinancialStatus: char
      wCorporateAction: char
      wTotalVolumeTraded: uint
      wNoMDEntries: seq[NoMDEntries]
    of mtX:
      xMDReqID: string
      xNoMDEntries: seq[NoMDEntries]
    of mtY:
      yMDReqID: string
      yMDReqRejReason: char
      yText: string
      yEncodedTextLen: uint
      yEncodedText: string
    of mtZ:
      zQuoteReqID: string
      zQuoteID: string
      zQuoteCancelType: int
      zQuoteResponseLevel: int
      zTradingSessionID: string
      zNoQuoteEntries: seq[NoQuoteEntries]
    of mtALow:
      alowQuoteID: string
      alowSymbol: string
      alowSymbolSfx: string
      alowSecurityID: string
      alowIDSource: string
      alowSecurityType: string
      alowMaturityMonthYear: string
      alowMaturityDay: uint
      alowPutOrCall: int
      alowStrikePrice: float
      alowOptAttribute: char
      alowContractMultiplier: string
      alowCouponRate: string
      alowSecurityExchange: string
      alowIssuer: string
      alowEncodedIssuerLen: uint
      alowEncodedIssuer: string
      alowSecurityDesc: string
      alowEncodedSecurityDescLen: uint
      alowEncodedSecurityDesc: string
      alowSide: char
      alowTradingSessionID: string
    of mtBLow:
      blowQuoteReqID: string
      blowQuoteID: string
      blowQuoteAckStatus: int
      blowQuoteRejectReason: int
      blowQuoteResponseLevel: int
      blowTradingSessionID: string
      blowText: string
      blowNoQuoteSets: seq[NoQuoteSets]
    of mtCLow:
      clowSecurityReqID: string
      clowSecurityRequestType: int
      clowSymbol: string
      clowSymbolSfx: string
      clowSecurityID: string
      clowIDSource: string
      clowSecurityType: string
      clowMaturityMonthYear: string
      clowMaturityDay: uint
      clowPutOrCall: int
      clowStrikePrice: float
      clowOptAttribute: char
      clowContractMultiplier: string
      clowCouponRate: string
      clowSecurityExchange: string
      clowIssuer: string
      clowEncodedIssuerLen: uint
      clowEncodedIssuer: string
      clowSecurityDesc: string
      clowEncodedSecurityDescLen: uint
      clowEncodedSecurityDesc: string
      clowCurrency: string
      clowText: string
      clowEncodedTextLen: uint
      clowEncodedText: string
      clowTradingSessionID: string
      clowNoRelatedSym: seq[NoRelatedSym]
    of mtDLow:
      dlowSecurityReqID: string
      dlowSecurityResponseID: string
      dlowSecurityResponseType: int
      dlowTotalNumSecurities: int
      dlowSymbol: string
      dlowSymbolSfx: string
      dlowSecurityID: string
      dlowIDSource: string
      dlowSecurityType: string
      dlowMaturityMonthYear: string
      dlowMaturityDay: uint
      dlowPutOrCall: int
      dlowStrikePrice: float
      dlowOptAttribute: char
      dlowContractMultiplier: string
      dlowCouponRate: string
      dlowSecurityExchange: string
      dlowIssuer: string
      dlowEncodedIssuerLen: uint
      dlowEncodedIssuer: string
      dlowSecurityDesc: string
      dlowEncodedSecurityDescLen: uint
      dlowEncodedSecurityDesc: string
      dlowCurrency: string
      dlowTradingSessionID: string
      dlowText: string
      dlowEncodedTextLen: uint
      dlowEncodedText: string
      dlowNoRelatedSym: seq[NoRelatedSym]
    of mtELow:
      elowSecurityStatusReqID: string
      elowSymbol: string
      elowSymbolSfx: string
      elowSecurityID: string
      elowIDSource: string
      elowSecurityType: string
      elowMaturityMonthYear: string
      elowMaturityDay: uint
      elowPutOrCall: int
      elowStrikePrice: float
      elowOptAttribute: char
      elowContractMultiplier: string
      elowCouponRate: string
      elowSecurityExchange: string
      elowIssuer: string
      elowEncodedIssuerLen: uint
      elowEncodedIssuer: string
      elowSecurityDesc: string
      elowEncodedSecurityDescLen: uint
      elowEncodedSecurityDesc: string
      elowCurrency: string
      elowSubscriptionRequestType: char
      elowTradingSessionID: string
    of mtFLow:
      flowSecurityStatusReqID: string
      flowSymbol: string
      flowSymbolSfx: string
      flowSecurityID: string
      flowIDSource: string
      flowSecurityType: string
      flowMaturityMonthYear: string
      flowMaturityDay: uint
      flowPutOrCall: int
      flowStrikePrice: float
      flowOptAttribute: char
      flowContractMultiplier: string
      flowCouponRate: string
      flowSecurityExchange: string
      flowIssuer: string
      flowEncodedIssuerLen: uint
      flowEncodedIssuer: string
      flowSecurityDesc: string
      flowEncodedSecurityDescLen: uint
      flowEncodedSecurityDesc: string
      flowCurrency: string
      flowTradingSessionID: string
      flowUnsolicitedIndicator: bool
      flowSecurityTradingStatus: int
      flowFinancialStatus: char
      flowCorporateAction: char
      flowHaltReasonChar: char
      flowInViewOfCommon: bool
      flowDueToRelated: bool
      flowBuyVolume: uint
      flowSellVolume: uint
      flowHighPx: float
      flowLowPx: float
      flowLastPx: float
      flowTransactTime: string
      flowAdjustment: int
    of mtGLow:
      glowTradSesReqID: string
      glowTradingSessionID: string
      glowTradSesMethod: int
      glowTradSesMode: int
      glowSubscriptionRequestType: char
    of mtHLow:
      hlowTradSesReqID: string
      hlowTradingSessionID: string
      hlowTradSesMethod: int
      hlowTradSesMode: int
      hlowUnsolicitedIndicator: bool
      hlowTradSesStatus: int
      hlowTradSesStartTime: string
      hlowTradSesOpenTime: string
      hlowTradSesPreCloseTime: string
      hlowTradSesCloseTime: string
      hlowTradSesEndTime: string
      hlowTotalVolumeTraded: uint
      hlowText: string
      hlowEncodedTextLen: uint
      hlowEncodedText: string
    of mtILow:
      ilowQuoteReqID: string
      ilowQuoteID: string
      ilowQuoteResponseLevel: int
      ilowDefBidSize: uint
      ilowDefOfferSize: uint
      ilowNoQuoteSets: seq[NoQuoteSets]
    of mtJLow:
      jlowRefSeqNum: int
      jlowRefMsgType: string
      jlowBusinessRejectRefID: string
      jlowBusinessRejectReason: int
      jlowText: string
      jlowEncodedTextLen: uint
      jlowEncodedText: string
    of mtKLow:
      klowBidID: string
      klowClientBidID: string
      klowBidRequestTransType: char
      klowListName: string
      klowTotalNumSecurities: int
      klowBidType: int
      klowNumTickets: int
      klowCurrency: string
      klowSideValue1: uint
      klowSideValue2: uint
      klowNoBidDescriptors: seq[NoBidDescriptors]
      klowNoBidComponents: seq[NoBidComponents]
      klowLiquidityIndType: int
      klowWtAverageLiquidity: string
      klowExchangeForPhysical: bool
      klowOutMainCntryUIndex: uint
      klowCrossPercent: string
      klowProgRptReqs: int
      klowProgPeriodInterval: int
      klowIncTaxInd: int
      klowForexReq: bool
      klowNumBidders: int
      klowTradeDate: string
      klowTradeType: char
      klowBasisPxType: char
      klowStrikeTime: string
      klowText: string
      klowEncodedTextLen: uint
      klowEncodedText: string
    of mtLLow:
      llowBidID: string
      llowClientBidID: string
      llowNoBidComponents: seq[NoBidComponents]
    of mtMLow:
      mlowListID: string
      mlowTotNoStrikes: int
      mlowNoStrikes: seq[NoStrikes]
    signatureLength: uint
    signature: string
    checkSum: string

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
    t, sep: uint16
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
    t, sep: uint16
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
    t, sep: uint16
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
    of 437: parseUInt(s, v.contraTradeQty, pos)
    of 438: parseStr(s, v.contraTradeTime, pos)
    else:
      r.add v
      pos = j
      return

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
    of 385: parseChar(s, v.msgDirection, pos)
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
    of 38: parseUInt(s, v.orderQty, pos)
    of 64: parseStr(s, v.futSettDate, pos)
    of 40: parseChar(s, v.ordType, pos)
    of 193: parseStr(s, v.futSettDate2, pos)
    of 192: parseUInt(s, v.orderQty2, pos)
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
    of 319: parseUInt(s, v.ratioQty, pos)
    of 318: parseStr(s, v.underlyingCurrency, pos)
    else:
      r.add v
      pos = j
      return

proc parseLinesOfText(s: string, r: var seq[LinesOfText], pos: var int) =
  var
    t, sep: uint16
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
    t, sep: uint16
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
    of 80: parseUInt(s, v.allocShares, pos)
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
    t, sep: uint16
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
    t, sep: uint16
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
    of 110: parseUInt(s, v.minQty, pos)
    of 111: parseUInt(s, v.maxFloor, pos)
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
    of 38: parseUInt(s, v.orderQty, pos)
    of 152: parseUInt(s, v.cashOrderQty, pos)
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
    of 192: parseUInt(s, v.orderQty2, pos)
    of 77: parseChar(s, v.openClose, pos)
    of 203: parseInt(s, v.coveredOrUncovered, pos)
    of 204: parseInt(s, v.customerOrFirm, pos)
    of 210: parseUInt(s, v.maxShow, pos)
    of 211: parseFloat(s, v.pegDifference, pos)
    of 388: parseChar(s, v.discretionInst, pos)
    of 389: parseFloat(s, v.discretionOffset, pos)
    of 439: parseStr(s, v.clearingFirm, pos)
    of 440: parseStr(s, v.clearingAccount, pos)
    of 37: parseStr(s, v.orderID, pos)
    of 198: parseStr(s, v.secondaryOrderID, pos)
    of 66: parseStr(s, v.listID, pos)
    of 105: parseStr(s, v.waveNo, pos)
    of 14: parseUInt(s, v.cumQty, pos)
    of 39: parseChar(s, v.ordStatus, pos)
    of 151: parseUInt(s, v.leavesQty, pos)
    of 84: parseUInt(s, v.cxlQty, pos)
    of 6: parseFloat(s, v.avgPx, pos)
    of 103: parseInt(s, v.ordRejReason, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoExecs(s: string, r: var seq[NoExecs], pos: var int) =
  var
    t, sep: uint16
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
    of 32: parseUInt(s, v.lastShares, pos)
    of 17: parseStr(s, v.execID, pos)
    of 31: parseFloat(s, v.lastPx, pos)
    of 29: parseChar(s, v.lastCapacity, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoMiscFees(s: string, r: var seq[NoMiscFees], pos: var int) =
  var
    t, sep: uint16
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
    t, sep: uint16
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
    of 276: parseStr(s, v.quoteCondition, pos)
    of 277: parseStr(s, v.tradeCondition, pos)
    of 282: parseStr(s, v.mDEntryOriginator, pos)
    of 283: parseStr(s, v.locationID, pos)
    of 284: parseStr(s, v.deskID, pos)
    of 286: parseChar(s, v.openCloseSettleFlag, pos)
    of 59: parseChar(s, v.timeInForce, pos)
    of 432: parseStr(s, v.expireDate, pos)
    of 126: parseStr(s, v.expireTime, pos)
    of 110: parseUInt(s, v.minQty, pos)
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
    of 387: parseUInt(s, v.totalVolumeTraded, pos)
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
    of 134: parseUInt(s, v.bidSize, pos)
    of 135: parseUInt(s, v.offerSize, pos)
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
    of 192: parseUInt(s, v.orderQty2, pos)
    of 15: parseStr(s, v.currency, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoBidDescriptors(s: string, r: var seq[NoBidDescriptors], pos: var int) =
  var
    t, sep: uint16
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
    t, sep: uint16
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
    t, sep: uint16
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

proc parsemt0(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mt0)
  result.msgType = mt0
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
    of 112: parseStr(s, result.t0TestReqID, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt1(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mt1)
  result.msgType = mt1
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
    of 112: parseStr(s, result.t1TestReqID, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt2(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mt2)
  result.msgType = mt2
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
    of 7: parseInt(s, result.t2BeginSeqNo, pos)
    of 16: parseInt(s, result.t2EndSeqNo, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt3(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mt3)
  result.msgType = mt3
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
    of 45: parseInt(s, result.t3RefSeqNum, pos)
    of 371: parseInt(s, result.t3RefTagID, pos)
    of 372: parseStr(s, result.t3RefMsgType, pos)
    of 373: parseInt(s, result.t3SessionRejectReason, pos)
    of 58: parseStr(s, result.t3Text, pos)
    of 354: parseUInt(s, result.t3EncodedTextLen, pos)
    of 355: parseStr(s, result.t3EncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt4(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mt4)
  result.msgType = mt4
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
    of 123: parseBool(s, result.t4GapFillFlag, pos)
    of 36: parseInt(s, result.t4NewSeqNo, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt5(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mt5)
  result.msgType = mt5
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
    of 58: parseStr(s, result.t5Text, pos)
    of 354: parseUInt(s, result.t5EncodedTextLen, pos)
    of 355: parseStr(s, result.t5EncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt6(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mt6)
  result.msgType = mt6
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
    of 23: parseStr(s, result.t6IOIid, pos)
    of 28: parseChar(s, result.t6IOITransType, pos)
    of 26: parseStr(s, result.t6IOIRefID, pos)
    of 55: parseStr(s, result.t6Symbol, pos)
    of 65: parseStr(s, result.t6SymbolSfx, pos)
    of 48: parseStr(s, result.t6SecurityID, pos)
    of 22: parseStr(s, result.t6IDSource, pos)
    of 167: parseStr(s, result.t6SecurityType, pos)
    of 200: parseStr(s, result.t6MaturityMonthYear, pos)
    of 205: parseUInt(s, result.t6MaturityDay, pos)
    of 201: parseInt(s, result.t6PutOrCall, pos)
    of 202: parseFloat(s, result.t6StrikePrice, pos)
    of 206: parseChar(s, result.t6OptAttribute, pos)
    of 231: parseStr(s, result.t6ContractMultiplier, pos)
    of 223: parseStr(s, result.t6CouponRate, pos)
    of 207: parseStr(s, result.t6SecurityExchange, pos)
    of 106: parseStr(s, result.t6Issuer, pos)
    of 348: parseUInt(s, result.t6EncodedIssuerLen, pos)
    of 349: parseStr(s, result.t6EncodedIssuer, pos)
    of 107: parseStr(s, result.t6SecurityDesc, pos)
    of 350: parseUInt(s, result.t6EncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.t6EncodedSecurityDesc, pos)
    of 54: parseChar(s, result.t6Side, pos)
    of 27: parseStr(s, result.t6IOIShares, pos)
    of 44: parseFloat(s, result.t6Price, pos)
    of 15: parseStr(s, result.t6Currency, pos)
    of 62: parseStr(s, result.t6ValidUntilTime, pos)
    of 25: parseChar(s, result.t6IOIQltyInd, pos)
    of 130: parseBool(s, result.t6IOINaturalFlag, pos)
    of 199: skipValue(s, pos); parseNoIOIQualifiers(s, result.t6NoIOIQualifiers, pos)
    of 58: parseStr(s, result.t6Text, pos)
    of 354: parseUInt(s, result.t6EncodedTextLen, pos)
    of 355: parseStr(s, result.t6EncodedText, pos)
    of 60: parseStr(s, result.t6TransactTime, pos)
    of 149: parseStr(s, result.t6URLLink, pos)
    of 215: skipValue(s, pos); parseNoRoutingIDs(s, result.t6NoRoutingIDs, pos)
    of 218: parseFloat(s, result.t6SpreadToBenchmark, pos)
    of 219: parseChar(s, result.t6Benchmark, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt7(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mt7)
  result.msgType = mt7
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
    of 2: parseStr(s, result.t7AdvId, pos)
    of 5: parseStr(s, result.t7AdvTransType, pos)
    of 3: parseStr(s, result.t7AdvRefID, pos)
    of 55: parseStr(s, result.t7Symbol, pos)
    of 65: parseStr(s, result.t7SymbolSfx, pos)
    of 48: parseStr(s, result.t7SecurityID, pos)
    of 22: parseStr(s, result.t7IDSource, pos)
    of 167: parseStr(s, result.t7SecurityType, pos)
    of 200: parseStr(s, result.t7MaturityMonthYear, pos)
    of 205: parseUInt(s, result.t7MaturityDay, pos)
    of 201: parseInt(s, result.t7PutOrCall, pos)
    of 202: parseFloat(s, result.t7StrikePrice, pos)
    of 206: parseChar(s, result.t7OptAttribute, pos)
    of 231: parseStr(s, result.t7ContractMultiplier, pos)
    of 223: parseStr(s, result.t7CouponRate, pos)
    of 207: parseStr(s, result.t7SecurityExchange, pos)
    of 106: parseStr(s, result.t7Issuer, pos)
    of 348: parseUInt(s, result.t7EncodedIssuerLen, pos)
    of 349: parseStr(s, result.t7EncodedIssuer, pos)
    of 107: parseStr(s, result.t7SecurityDesc, pos)
    of 350: parseUInt(s, result.t7EncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.t7EncodedSecurityDesc, pos)
    of 4: parseChar(s, result.t7AdvSide, pos)
    of 53: parseUInt(s, result.t7Shares, pos)
    of 44: parseFloat(s, result.t7Price, pos)
    of 15: parseStr(s, result.t7Currency, pos)
    of 75: parseStr(s, result.t7TradeDate, pos)
    of 60: parseStr(s, result.t7TransactTime, pos)
    of 58: parseStr(s, result.t7Text, pos)
    of 354: parseUInt(s, result.t7EncodedTextLen, pos)
    of 355: parseStr(s, result.t7EncodedText, pos)
    of 149: parseStr(s, result.t7URLLink, pos)
    of 30: parseStr(s, result.t7LastMkt, pos)
    of 336: parseStr(s, result.t7TradingSessionID, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt8(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mt8)
  result.msgType = mt8
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
    of 37: parseStr(s, result.t8OrderID, pos)
    of 198: parseStr(s, result.t8SecondaryOrderID, pos)
    of 11: parseStr(s, result.t8ClOrdID, pos)
    of 41: parseStr(s, result.t8OrigClOrdID, pos)
    of 109: parseStr(s, result.t8ClientID, pos)
    of 76: parseStr(s, result.t8ExecBroker, pos)
    of 382: skipValue(s, pos); parseNoContraBrokers(s, result.t8NoContraBrokers, pos)
    of 66: parseStr(s, result.t8ListID, pos)
    of 17: parseStr(s, result.t8ExecID, pos)
    of 20: parseChar(s, result.t8ExecTransType, pos)
    of 19: parseStr(s, result.t8ExecRefID, pos)
    of 150: parseChar(s, result.t8ExecType, pos)
    of 39: parseChar(s, result.t8OrdStatus, pos)
    of 103: parseInt(s, result.t8OrdRejReason, pos)
    of 378: parseInt(s, result.t8ExecRestatementReason, pos)
    of 1: parseStr(s, result.t8Account, pos)
    of 63: parseChar(s, result.t8SettlmntTyp, pos)
    of 64: parseStr(s, result.t8FutSettDate, pos)
    of 55: parseStr(s, result.t8Symbol, pos)
    of 65: parseStr(s, result.t8SymbolSfx, pos)
    of 48: parseStr(s, result.t8SecurityID, pos)
    of 22: parseStr(s, result.t8IDSource, pos)
    of 167: parseStr(s, result.t8SecurityType, pos)
    of 200: parseStr(s, result.t8MaturityMonthYear, pos)
    of 205: parseUInt(s, result.t8MaturityDay, pos)
    of 201: parseInt(s, result.t8PutOrCall, pos)
    of 202: parseFloat(s, result.t8StrikePrice, pos)
    of 206: parseChar(s, result.t8OptAttribute, pos)
    of 231: parseStr(s, result.t8ContractMultiplier, pos)
    of 223: parseStr(s, result.t8CouponRate, pos)
    of 207: parseStr(s, result.t8SecurityExchange, pos)
    of 106: parseStr(s, result.t8Issuer, pos)
    of 348: parseUInt(s, result.t8EncodedIssuerLen, pos)
    of 349: parseStr(s, result.t8EncodedIssuer, pos)
    of 107: parseStr(s, result.t8SecurityDesc, pos)
    of 350: parseUInt(s, result.t8EncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.t8EncodedSecurityDesc, pos)
    of 54: parseChar(s, result.t8Side, pos)
    of 38: parseUInt(s, result.t8OrderQty, pos)
    of 152: parseUInt(s, result.t8CashOrderQty, pos)
    of 40: parseChar(s, result.t8OrdType, pos)
    of 44: parseFloat(s, result.t8Price, pos)
    of 99: parseFloat(s, result.t8StopPx, pos)
    of 211: parseFloat(s, result.t8PegDifference, pos)
    of 388: parseChar(s, result.t8DiscretionInst, pos)
    of 389: parseFloat(s, result.t8DiscretionOffset, pos)
    of 15: parseStr(s, result.t8Currency, pos)
    of 376: parseStr(s, result.t8ComplianceID, pos)
    of 377: parseBool(s, result.t8SolicitedFlag, pos)
    of 59: parseChar(s, result.t8TimeInForce, pos)
    of 168: parseStr(s, result.t8EffectiveTime, pos)
    of 432: parseStr(s, result.t8ExpireDate, pos)
    of 126: parseStr(s, result.t8ExpireTime, pos)
    of 18: parseStr(s, result.t8ExecInst, pos)
    of 47: parseChar(s, result.t8Rule80A, pos)
    of 32: parseUInt(s, result.t8LastShares, pos)
    of 31: parseFloat(s, result.t8LastPx, pos)
    of 194: parseFloat(s, result.t8LastSpotRate, pos)
    of 195: parseFloat(s, result.t8LastForwardPoints, pos)
    of 30: parseStr(s, result.t8LastMkt, pos)
    of 336: parseStr(s, result.t8TradingSessionID, pos)
    of 29: parseChar(s, result.t8LastCapacity, pos)
    of 151: parseUInt(s, result.t8LeavesQty, pos)
    of 14: parseUInt(s, result.t8CumQty, pos)
    of 6: parseFloat(s, result.t8AvgPx, pos)
    of 424: parseUInt(s, result.t8DayOrderQty, pos)
    of 425: parseUInt(s, result.t8DayCumQty, pos)
    of 426: parseFloat(s, result.t8DayAvgPx, pos)
    of 427: parseInt(s, result.t8GTBookingInst, pos)
    of 75: parseStr(s, result.t8TradeDate, pos)
    of 60: parseStr(s, result.t8TransactTime, pos)
    of 113: parseBool(s, result.t8ReportToExch, pos)
    of 12: parseUInt(s, result.t8Commission, pos)
    of 13: parseChar(s, result.t8CommType, pos)
    of 381: parseUInt(s, result.t8GrossTradeAmt, pos)
    of 119: parseUInt(s, result.t8SettlCurrAmt, pos)
    of 120: parseStr(s, result.t8SettlCurrency, pos)
    of 155: parseStr(s, result.t8SettlCurrFxRate, pos)
    of 156: parseChar(s, result.t8SettlCurrFxRateCalc, pos)
    of 21: parseChar(s, result.t8HandlInst, pos)
    of 110: parseUInt(s, result.t8MinQty, pos)
    of 111: parseUInt(s, result.t8MaxFloor, pos)
    of 77: parseChar(s, result.t8OpenClose, pos)
    of 210: parseUInt(s, result.t8MaxShow, pos)
    of 58: parseStr(s, result.t8Text, pos)
    of 354: parseUInt(s, result.t8EncodedTextLen, pos)
    of 355: parseStr(s, result.t8EncodedText, pos)
    of 193: parseStr(s, result.t8FutSettDate2, pos)
    of 192: parseUInt(s, result.t8OrderQty2, pos)
    of 439: parseStr(s, result.t8ClearingFirm, pos)
    of 440: parseStr(s, result.t8ClearingAccount, pos)
    of 442: parseChar(s, result.t8MultiLegReportingType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt9(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mt9)
  result.msgType = mt9
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
    of 37: parseStr(s, result.t9OrderID, pos)
    of 198: parseStr(s, result.t9SecondaryOrderID, pos)
    of 11: parseStr(s, result.t9ClOrdID, pos)
    of 41: parseStr(s, result.t9OrigClOrdID, pos)
    of 39: parseChar(s, result.t9OrdStatus, pos)
    of 109: parseStr(s, result.t9ClientID, pos)
    of 76: parseStr(s, result.t9ExecBroker, pos)
    of 66: parseStr(s, result.t9ListID, pos)
    of 1: parseStr(s, result.t9Account, pos)
    of 60: parseStr(s, result.t9TransactTime, pos)
    of 434: parseChar(s, result.t9CxlRejResponseTo, pos)
    of 102: parseInt(s, result.t9CxlRejReason, pos)
    of 58: parseStr(s, result.t9Text, pos)
    of 354: parseUInt(s, result.t9EncodedTextLen, pos)
    of 355: parseStr(s, result.t9EncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtA(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtA)
  result.msgType = mtA
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
    of 98: parseInt(s, result.aEncryptMethod, pos)
    of 108: parseInt(s, result.aHeartBtInt, pos)
    of 95: parseUInt(s, result.aRawDataLength, pos)
    of 96: parseStr(s, result.aRawData, pos)
    of 141: parseBool(s, result.aResetSeqNumFlag, pos)
    of 383: parseInt(s, result.aMaxMessageSize, pos)
    of 384: skipValue(s, pos); parseNoMsgTypes(s, result.aNoMsgTypes, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtB(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtB)
  result.msgType = mtB
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
    of 42: parseStr(s, result.bOrigTime, pos)
    of 61: parseChar(s, result.bUrgency, pos)
    of 148: parseStr(s, result.bHeadline, pos)
    of 358: parseUInt(s, result.bEncodedHeadlineLen, pos)
    of 359: parseStr(s, result.bEncodedHeadline, pos)
    of 215: skipValue(s, pos); parseNoRoutingIDs(s, result.bNoRoutingIDs, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.bNoRelatedSym, pos)
    of 33: skipValue(s, pos); parseLinesOfText(s, result.bLinesOfText, pos)
    of 149: parseStr(s, result.bURLLink, pos)
    of 95: parseUInt(s, result.bRawDataLength, pos)
    of 96: parseStr(s, result.bRawData, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtC(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtC)
  result.msgType = mtC
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
    of 164: parseStr(s, result.cEmailThreadID, pos)
    of 94: parseChar(s, result.cEmailType, pos)
    of 42: parseStr(s, result.cOrigTime, pos)
    of 147: parseStr(s, result.cSubject, pos)
    of 356: parseUInt(s, result.cEncodedSubjectLen, pos)
    of 357: parseStr(s, result.cEncodedSubject, pos)
    of 215: skipValue(s, pos); parseNoRoutingIDs(s, result.cNoRoutingIDs, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.cNoRelatedSym, pos)
    of 37: parseStr(s, result.cOrderID, pos)
    of 11: parseStr(s, result.cClOrdID, pos)
    of 33: skipValue(s, pos); parseLinesOfText(s, result.cLinesOfText, pos)
    of 95: parseUInt(s, result.cRawDataLength, pos)
    of 96: parseStr(s, result.cRawData, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtD(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtD)
  result.msgType = mtD
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
    of 11: parseStr(s, result.dClOrdID, pos)
    of 109: parseStr(s, result.dClientID, pos)
    of 76: parseStr(s, result.dExecBroker, pos)
    of 1: parseStr(s, result.dAccount, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.dNoAllocs, pos)
    of 63: parseChar(s, result.dSettlmntTyp, pos)
    of 64: parseStr(s, result.dFutSettDate, pos)
    of 21: parseChar(s, result.dHandlInst, pos)
    of 18: parseStr(s, result.dExecInst, pos)
    of 110: parseUInt(s, result.dMinQty, pos)
    of 111: parseUInt(s, result.dMaxFloor, pos)
    of 100: parseStr(s, result.dExDestination, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.dNoTradingSessions, pos)
    of 81: parseChar(s, result.dProcessCode, pos)
    of 55: parseStr(s, result.dSymbol, pos)
    of 65: parseStr(s, result.dSymbolSfx, pos)
    of 48: parseStr(s, result.dSecurityID, pos)
    of 22: parseStr(s, result.dIDSource, pos)
    of 167: parseStr(s, result.dSecurityType, pos)
    of 200: parseStr(s, result.dMaturityMonthYear, pos)
    of 205: parseUInt(s, result.dMaturityDay, pos)
    of 201: parseInt(s, result.dPutOrCall, pos)
    of 202: parseFloat(s, result.dStrikePrice, pos)
    of 206: parseChar(s, result.dOptAttribute, pos)
    of 231: parseStr(s, result.dContractMultiplier, pos)
    of 223: parseStr(s, result.dCouponRate, pos)
    of 207: parseStr(s, result.dSecurityExchange, pos)
    of 106: parseStr(s, result.dIssuer, pos)
    of 348: parseUInt(s, result.dEncodedIssuerLen, pos)
    of 349: parseStr(s, result.dEncodedIssuer, pos)
    of 107: parseStr(s, result.dSecurityDesc, pos)
    of 350: parseUInt(s, result.dEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.dEncodedSecurityDesc, pos)
    of 140: parseFloat(s, result.dPrevClosePx, pos)
    of 54: parseChar(s, result.dSide, pos)
    of 114: parseBool(s, result.dLocateReqd, pos)
    of 60: parseStr(s, result.dTransactTime, pos)
    of 38: parseUInt(s, result.dOrderQty, pos)
    of 152: parseUInt(s, result.dCashOrderQty, pos)
    of 40: parseChar(s, result.dOrdType, pos)
    of 44: parseFloat(s, result.dPrice, pos)
    of 99: parseFloat(s, result.dStopPx, pos)
    of 15: parseStr(s, result.dCurrency, pos)
    of 376: parseStr(s, result.dComplianceID, pos)
    of 377: parseBool(s, result.dSolicitedFlag, pos)
    of 23: parseStr(s, result.dIOIid, pos)
    of 117: parseStr(s, result.dQuoteID, pos)
    of 59: parseChar(s, result.dTimeInForce, pos)
    of 168: parseStr(s, result.dEffectiveTime, pos)
    of 432: parseStr(s, result.dExpireDate, pos)
    of 126: parseStr(s, result.dExpireTime, pos)
    of 427: parseInt(s, result.dGTBookingInst, pos)
    of 12: parseUInt(s, result.dCommission, pos)
    of 13: parseChar(s, result.dCommType, pos)
    of 47: parseChar(s, result.dRule80A, pos)
    of 121: parseBool(s, result.dForexReq, pos)
    of 120: parseStr(s, result.dSettlCurrency, pos)
    of 58: parseStr(s, result.dText, pos)
    of 354: parseUInt(s, result.dEncodedTextLen, pos)
    of 355: parseStr(s, result.dEncodedText, pos)
    of 193: parseStr(s, result.dFutSettDate2, pos)
    of 192: parseUInt(s, result.dOrderQty2, pos)
    of 77: parseChar(s, result.dOpenClose, pos)
    of 203: parseInt(s, result.dCoveredOrUncovered, pos)
    of 204: parseInt(s, result.dCustomerOrFirm, pos)
    of 210: parseUInt(s, result.dMaxShow, pos)
    of 211: parseFloat(s, result.dPegDifference, pos)
    of 388: parseChar(s, result.dDiscretionInst, pos)
    of 389: parseFloat(s, result.dDiscretionOffset, pos)
    of 439: parseStr(s, result.dClearingFirm, pos)
    of 440: parseStr(s, result.dClearingAccount, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtE(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtE)
  result.msgType = mtE
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
    of 66: parseStr(s, result.eListID, pos)
    of 390: parseStr(s, result.eBidID, pos)
    of 391: parseStr(s, result.eClientBidID, pos)
    of 414: parseInt(s, result.eProgRptReqs, pos)
    of 394: parseInt(s, result.eBidType, pos)
    of 415: parseInt(s, result.eProgPeriodInterval, pos)
    of 433: parseChar(s, result.eListExecInstType, pos)
    of 69: parseStr(s, result.eListExecInst, pos)
    of 352: parseUInt(s, result.eEncodedListExecInstLen, pos)
    of 353: parseStr(s, result.eEncodedListExecInst, pos)
    of 68: parseInt(s, result.eTotNoOrders, pos)
    of 73: skipValue(s, pos); parseNoOrders(s, result.eNoOrders, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtF(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtF)
  result.msgType = mtF
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
    of 41: parseStr(s, result.fOrigClOrdID, pos)
    of 37: parseStr(s, result.fOrderID, pos)
    of 11: parseStr(s, result.fClOrdID, pos)
    of 66: parseStr(s, result.fListID, pos)
    of 1: parseStr(s, result.fAccount, pos)
    of 109: parseStr(s, result.fClientID, pos)
    of 76: parseStr(s, result.fExecBroker, pos)
    of 55: parseStr(s, result.fSymbol, pos)
    of 65: parseStr(s, result.fSymbolSfx, pos)
    of 48: parseStr(s, result.fSecurityID, pos)
    of 22: parseStr(s, result.fIDSource, pos)
    of 167: parseStr(s, result.fSecurityType, pos)
    of 200: parseStr(s, result.fMaturityMonthYear, pos)
    of 205: parseUInt(s, result.fMaturityDay, pos)
    of 201: parseInt(s, result.fPutOrCall, pos)
    of 202: parseFloat(s, result.fStrikePrice, pos)
    of 206: parseChar(s, result.fOptAttribute, pos)
    of 231: parseStr(s, result.fContractMultiplier, pos)
    of 223: parseStr(s, result.fCouponRate, pos)
    of 207: parseStr(s, result.fSecurityExchange, pos)
    of 106: parseStr(s, result.fIssuer, pos)
    of 348: parseUInt(s, result.fEncodedIssuerLen, pos)
    of 349: parseStr(s, result.fEncodedIssuer, pos)
    of 107: parseStr(s, result.fSecurityDesc, pos)
    of 350: parseUInt(s, result.fEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.fEncodedSecurityDesc, pos)
    of 54: parseChar(s, result.fSide, pos)
    of 60: parseStr(s, result.fTransactTime, pos)
    of 38: parseUInt(s, result.fOrderQty, pos)
    of 152: parseUInt(s, result.fCashOrderQty, pos)
    of 376: parseStr(s, result.fComplianceID, pos)
    of 377: parseBool(s, result.fSolicitedFlag, pos)
    of 58: parseStr(s, result.fText, pos)
    of 354: parseUInt(s, result.fEncodedTextLen, pos)
    of 355: parseStr(s, result.fEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtG(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtG)
  result.msgType = mtG
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
    of 37: parseStr(s, result.gOrderID, pos)
    of 109: parseStr(s, result.gClientID, pos)
    of 76: parseStr(s, result.gExecBroker, pos)
    of 41: parseStr(s, result.gOrigClOrdID, pos)
    of 11: parseStr(s, result.gClOrdID, pos)
    of 66: parseStr(s, result.gListID, pos)
    of 1: parseStr(s, result.gAccount, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.gNoAllocs, pos)
    of 63: parseChar(s, result.gSettlmntTyp, pos)
    of 64: parseStr(s, result.gFutSettDate, pos)
    of 21: parseChar(s, result.gHandlInst, pos)
    of 18: parseStr(s, result.gExecInst, pos)
    of 110: parseUInt(s, result.gMinQty, pos)
    of 111: parseUInt(s, result.gMaxFloor, pos)
    of 100: parseStr(s, result.gExDestination, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.gNoTradingSessions, pos)
    of 55: parseStr(s, result.gSymbol, pos)
    of 65: parseStr(s, result.gSymbolSfx, pos)
    of 48: parseStr(s, result.gSecurityID, pos)
    of 22: parseStr(s, result.gIDSource, pos)
    of 167: parseStr(s, result.gSecurityType, pos)
    of 200: parseStr(s, result.gMaturityMonthYear, pos)
    of 205: parseUInt(s, result.gMaturityDay, pos)
    of 201: parseInt(s, result.gPutOrCall, pos)
    of 202: parseFloat(s, result.gStrikePrice, pos)
    of 206: parseChar(s, result.gOptAttribute, pos)
    of 231: parseStr(s, result.gContractMultiplier, pos)
    of 223: parseStr(s, result.gCouponRate, pos)
    of 207: parseStr(s, result.gSecurityExchange, pos)
    of 106: parseStr(s, result.gIssuer, pos)
    of 348: parseUInt(s, result.gEncodedIssuerLen, pos)
    of 349: parseStr(s, result.gEncodedIssuer, pos)
    of 107: parseStr(s, result.gSecurityDesc, pos)
    of 350: parseUInt(s, result.gEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.gEncodedSecurityDesc, pos)
    of 54: parseChar(s, result.gSide, pos)
    of 60: parseStr(s, result.gTransactTime, pos)
    of 38: parseUInt(s, result.gOrderQty, pos)
    of 152: parseUInt(s, result.gCashOrderQty, pos)
    of 40: parseChar(s, result.gOrdType, pos)
    of 44: parseFloat(s, result.gPrice, pos)
    of 99: parseFloat(s, result.gStopPx, pos)
    of 211: parseFloat(s, result.gPegDifference, pos)
    of 388: parseChar(s, result.gDiscretionInst, pos)
    of 389: parseFloat(s, result.gDiscretionOffset, pos)
    of 376: parseStr(s, result.gComplianceID, pos)
    of 377: parseBool(s, result.gSolicitedFlag, pos)
    of 15: parseStr(s, result.gCurrency, pos)
    of 59: parseChar(s, result.gTimeInForce, pos)
    of 168: parseStr(s, result.gEffectiveTime, pos)
    of 432: parseStr(s, result.gExpireDate, pos)
    of 126: parseStr(s, result.gExpireTime, pos)
    of 427: parseInt(s, result.gGTBookingInst, pos)
    of 12: parseUInt(s, result.gCommission, pos)
    of 13: parseChar(s, result.gCommType, pos)
    of 47: parseChar(s, result.gRule80A, pos)
    of 121: parseBool(s, result.gForexReq, pos)
    of 120: parseStr(s, result.gSettlCurrency, pos)
    of 58: parseStr(s, result.gText, pos)
    of 354: parseUInt(s, result.gEncodedTextLen, pos)
    of 355: parseStr(s, result.gEncodedText, pos)
    of 193: parseStr(s, result.gFutSettDate2, pos)
    of 192: parseUInt(s, result.gOrderQty2, pos)
    of 77: parseChar(s, result.gOpenClose, pos)
    of 203: parseInt(s, result.gCoveredOrUncovered, pos)
    of 204: parseInt(s, result.gCustomerOrFirm, pos)
    of 210: parseUInt(s, result.gMaxShow, pos)
    of 114: parseBool(s, result.gLocateReqd, pos)
    of 439: parseStr(s, result.gClearingFirm, pos)
    of 440: parseStr(s, result.gClearingAccount, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtH(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtH)
  result.msgType = mtH
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
    of 37: parseStr(s, result.hOrderID, pos)
    of 11: parseStr(s, result.hClOrdID, pos)
    of 109: parseStr(s, result.hClientID, pos)
    of 1: parseStr(s, result.hAccount, pos)
    of 76: parseStr(s, result.hExecBroker, pos)
    of 55: parseStr(s, result.hSymbol, pos)
    of 65: parseStr(s, result.hSymbolSfx, pos)
    of 48: parseStr(s, result.hSecurityID, pos)
    of 22: parseStr(s, result.hIDSource, pos)
    of 167: parseStr(s, result.hSecurityType, pos)
    of 200: parseStr(s, result.hMaturityMonthYear, pos)
    of 205: parseUInt(s, result.hMaturityDay, pos)
    of 201: parseInt(s, result.hPutOrCall, pos)
    of 202: parseFloat(s, result.hStrikePrice, pos)
    of 206: parseChar(s, result.hOptAttribute, pos)
    of 231: parseStr(s, result.hContractMultiplier, pos)
    of 223: parseStr(s, result.hCouponRate, pos)
    of 207: parseStr(s, result.hSecurityExchange, pos)
    of 106: parseStr(s, result.hIssuer, pos)
    of 348: parseUInt(s, result.hEncodedIssuerLen, pos)
    of 349: parseStr(s, result.hEncodedIssuer, pos)
    of 107: parseStr(s, result.hSecurityDesc, pos)
    of 350: parseUInt(s, result.hEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.hEncodedSecurityDesc, pos)
    of 54: parseChar(s, result.hSide, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtJ(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtJ)
  result.msgType = mtJ
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
    of 70: parseStr(s, result.jAllocID, pos)
    of 71: parseChar(s, result.jAllocTransType, pos)
    of 72: parseStr(s, result.jRefAllocID, pos)
    of 196: parseStr(s, result.jAllocLinkID, pos)
    of 197: parseInt(s, result.jAllocLinkType, pos)
    of 73: skipValue(s, pos); parseNoOrders(s, result.jNoOrders, pos)
    of 124: skipValue(s, pos); parseNoExecs(s, result.jNoExecs, pos)
    of 54: parseChar(s, result.jSide, pos)
    of 55: parseStr(s, result.jSymbol, pos)
    of 65: parseStr(s, result.jSymbolSfx, pos)
    of 48: parseStr(s, result.jSecurityID, pos)
    of 22: parseStr(s, result.jIDSource, pos)
    of 167: parseStr(s, result.jSecurityType, pos)
    of 200: parseStr(s, result.jMaturityMonthYear, pos)
    of 205: parseUInt(s, result.jMaturityDay, pos)
    of 201: parseInt(s, result.jPutOrCall, pos)
    of 202: parseFloat(s, result.jStrikePrice, pos)
    of 206: parseChar(s, result.jOptAttribute, pos)
    of 231: parseStr(s, result.jContractMultiplier, pos)
    of 223: parseStr(s, result.jCouponRate, pos)
    of 207: parseStr(s, result.jSecurityExchange, pos)
    of 106: parseStr(s, result.jIssuer, pos)
    of 348: parseUInt(s, result.jEncodedIssuerLen, pos)
    of 349: parseStr(s, result.jEncodedIssuer, pos)
    of 107: parseStr(s, result.jSecurityDesc, pos)
    of 350: parseUInt(s, result.jEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.jEncodedSecurityDesc, pos)
    of 53: parseUInt(s, result.jShares, pos)
    of 30: parseStr(s, result.jLastMkt, pos)
    of 336: parseStr(s, result.jTradingSessionID, pos)
    of 6: parseFloat(s, result.jAvgPx, pos)
    of 15: parseStr(s, result.jCurrency, pos)
    of 74: parseInt(s, result.jAvgPrxPrecision, pos)
    of 75: parseStr(s, result.jTradeDate, pos)
    of 60: parseStr(s, result.jTransactTime, pos)
    of 63: parseChar(s, result.jSettlmntTyp, pos)
    of 64: parseStr(s, result.jFutSettDate, pos)
    of 381: parseUInt(s, result.jGrossTradeAmt, pos)
    of 118: parseUInt(s, result.jNetMoney, pos)
    of 77: parseChar(s, result.jOpenClose, pos)
    of 58: parseStr(s, result.jText, pos)
    of 354: parseUInt(s, result.jEncodedTextLen, pos)
    of 355: parseStr(s, result.jEncodedText, pos)
    of 157: parseInt(s, result.jNumDaysInterest, pos)
    of 158: parseStr(s, result.jAccruedInterestRate, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.jNoAllocs, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtK(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtK)
  result.msgType = mtK
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
    of 66: parseStr(s, result.kListID, pos)
    of 60: parseStr(s, result.kTransactTime, pos)
    of 58: parseStr(s, result.kText, pos)
    of 354: parseUInt(s, result.kEncodedTextLen, pos)
    of 355: parseStr(s, result.kEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtL(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtL)
  result.msgType = mtL
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
    of 66: parseStr(s, result.lListID, pos)
    of 391: parseStr(s, result.lClientBidID, pos)
    of 390: parseStr(s, result.lBidID, pos)
    of 60: parseStr(s, result.lTransactTime, pos)
    of 58: parseStr(s, result.lText, pos)
    of 354: parseUInt(s, result.lEncodedTextLen, pos)
    of 355: parseStr(s, result.lEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtM(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtM)
  result.msgType = mtM
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
    of 66: parseStr(s, result.mListID, pos)
    of 58: parseStr(s, result.mText, pos)
    of 354: parseUInt(s, result.mEncodedTextLen, pos)
    of 355: parseStr(s, result.mEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtN(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtN)
  result.msgType = mtN
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
    of 66: parseStr(s, result.nListID, pos)
    of 429: parseInt(s, result.nListStatusType, pos)
    of 82: parseInt(s, result.nNoRpts, pos)
    of 431: parseInt(s, result.nListOrderStatus, pos)
    of 83: parseInt(s, result.nRptSeq, pos)
    of 444: parseStr(s, result.nListStatusText, pos)
    of 445: parseUInt(s, result.nEncodedListStatusTextLen, pos)
    of 446: parseStr(s, result.nEncodedListStatusText, pos)
    of 60: parseStr(s, result.nTransactTime, pos)
    of 68: parseInt(s, result.nTotNoOrders, pos)
    of 73: skipValue(s, pos); parseNoOrders(s, result.nNoOrders, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtP(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtP)
  result.msgType = mtP
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
    of 109: parseStr(s, result.pClientID, pos)
    of 76: parseStr(s, result.pExecBroker, pos)
    of 70: parseStr(s, result.pAllocID, pos)
    of 75: parseStr(s, result.pTradeDate, pos)
    of 60: parseStr(s, result.pTransactTime, pos)
    of 87: parseInt(s, result.pAllocStatus, pos)
    of 88: parseInt(s, result.pAllocRejCode, pos)
    of 58: parseStr(s, result.pText, pos)
    of 354: parseUInt(s, result.pEncodedTextLen, pos)
    of 355: parseStr(s, result.pEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtQ(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtQ)
  result.msgType = mtQ
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
    of 37: parseStr(s, result.qOrderID, pos)
    of 17: parseStr(s, result.qExecID, pos)
    of 127: parseChar(s, result.qDKReason, pos)
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
    of 54: parseChar(s, result.qSide, pos)
    of 38: parseUInt(s, result.qOrderQty, pos)
    of 152: parseUInt(s, result.qCashOrderQty, pos)
    of 32: parseUInt(s, result.qLastShares, pos)
    of 31: parseFloat(s, result.qLastPx, pos)
    of 58: parseStr(s, result.qText, pos)
    of 354: parseUInt(s, result.qEncodedTextLen, pos)
    of 355: parseStr(s, result.qEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtR(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtR)
  result.msgType = mtR
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
    of 131: parseStr(s, result.rQuoteReqID, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.rNoRelatedSym, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtS(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtS)
  result.msgType = mtS
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
    of 131: parseStr(s, result.sQuoteReqID, pos)
    of 117: parseStr(s, result.sQuoteID, pos)
    of 301: parseInt(s, result.sQuoteResponseLevel, pos)
    of 336: parseStr(s, result.sTradingSessionID, pos)
    of 55: parseStr(s, result.sSymbol, pos)
    of 65: parseStr(s, result.sSymbolSfx, pos)
    of 48: parseStr(s, result.sSecurityID, pos)
    of 22: parseStr(s, result.sIDSource, pos)
    of 167: parseStr(s, result.sSecurityType, pos)
    of 200: parseStr(s, result.sMaturityMonthYear, pos)
    of 205: parseUInt(s, result.sMaturityDay, pos)
    of 201: parseInt(s, result.sPutOrCall, pos)
    of 202: parseFloat(s, result.sStrikePrice, pos)
    of 206: parseChar(s, result.sOptAttribute, pos)
    of 231: parseStr(s, result.sContractMultiplier, pos)
    of 223: parseStr(s, result.sCouponRate, pos)
    of 207: parseStr(s, result.sSecurityExchange, pos)
    of 106: parseStr(s, result.sIssuer, pos)
    of 348: parseUInt(s, result.sEncodedIssuerLen, pos)
    of 349: parseStr(s, result.sEncodedIssuer, pos)
    of 107: parseStr(s, result.sSecurityDesc, pos)
    of 350: parseUInt(s, result.sEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.sEncodedSecurityDesc, pos)
    of 132: parseFloat(s, result.sBidPx, pos)
    of 133: parseFloat(s, result.sOfferPx, pos)
    of 134: parseUInt(s, result.sBidSize, pos)
    of 135: parseUInt(s, result.sOfferSize, pos)
    of 62: parseStr(s, result.sValidUntilTime, pos)
    of 188: parseFloat(s, result.sBidSpotRate, pos)
    of 190: parseFloat(s, result.sOfferSpotRate, pos)
    of 189: parseFloat(s, result.sBidForwardPoints, pos)
    of 191: parseFloat(s, result.sOfferForwardPoints, pos)
    of 60: parseStr(s, result.sTransactTime, pos)
    of 64: parseStr(s, result.sFutSettDate, pos)
    of 40: parseChar(s, result.sOrdType, pos)
    of 193: parseStr(s, result.sFutSettDate2, pos)
    of 192: parseUInt(s, result.sOrderQty2, pos)
    of 15: parseStr(s, result.sCurrency, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtT(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtT)
  result.msgType = mtT
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
    of 162: parseStr(s, result.tSettlInstID, pos)
    of 163: parseChar(s, result.tSettlInstTransType, pos)
    of 214: parseStr(s, result.tSettlInstRefID, pos)
    of 160: parseChar(s, result.tSettlInstMode, pos)
    of 165: parseChar(s, result.tSettlInstSource, pos)
    of 79: parseStr(s, result.tAllocAccount, pos)
    of 166: parseStr(s, result.tSettlLocation, pos)
    of 75: parseStr(s, result.tTradeDate, pos)
    of 70: parseStr(s, result.tAllocID, pos)
    of 30: parseStr(s, result.tLastMkt, pos)
    of 336: parseStr(s, result.tTradingSessionID, pos)
    of 54: parseChar(s, result.tSide, pos)
    of 167: parseStr(s, result.tSecurityType, pos)
    of 168: parseStr(s, result.tEffectiveTime, pos)
    of 60: parseStr(s, result.tTransactTime, pos)
    of 109: parseStr(s, result.tClientID, pos)
    of 76: parseStr(s, result.tExecBroker, pos)
    of 169: parseInt(s, result.tStandInstDbType, pos)
    of 170: parseStr(s, result.tStandInstDbName, pos)
    of 171: parseStr(s, result.tStandInstDbID, pos)
    of 172: parseInt(s, result.tSettlDeliveryType, pos)
    of 173: parseStr(s, result.tSettlDepositoryCode, pos)
    of 174: parseStr(s, result.tSettlBrkrCode, pos)
    of 175: parseStr(s, result.tSettlInstCode, pos)
    of 176: parseStr(s, result.tSecuritySettlAgentName, pos)
    of 177: parseStr(s, result.tSecuritySettlAgentCode, pos)
    of 178: parseStr(s, result.tSecuritySettlAgentAcctNum, pos)
    of 179: parseStr(s, result.tSecuritySettlAgentAcctName, pos)
    of 180: parseStr(s, result.tSecuritySettlAgentContactName, pos)
    of 181: parseStr(s, result.tSecuritySettlAgentContactPhone, pos)
    of 182: parseStr(s, result.tCashSettlAgentName, pos)
    of 183: parseStr(s, result.tCashSettlAgentCode, pos)
    of 184: parseStr(s, result.tCashSettlAgentAcctNum, pos)
    of 185: parseStr(s, result.tCashSettlAgentAcctName, pos)
    of 186: parseStr(s, result.tCashSettlAgentContactName, pos)
    of 187: parseStr(s, result.tCashSettlAgentContactPhone, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtV(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtV)
  result.msgType = mtV
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
    of 262: parseStr(s, result.vMDReqID, pos)
    of 263: parseChar(s, result.vSubscriptionRequestType, pos)
    of 264: parseInt(s, result.vMarketDepth, pos)
    of 265: parseInt(s, result.vMDUpdateType, pos)
    of 266: parseBool(s, result.vAggregatedBook, pos)
    of 267: skipValue(s, pos); parseNoMDEntryTypes(s, result.vNoMDEntryTypes, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.vNoRelatedSym, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtW(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtW)
  result.msgType = mtW
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
    of 262: parseStr(s, result.wMDReqID, pos)
    of 55: parseStr(s, result.wSymbol, pos)
    of 65: parseStr(s, result.wSymbolSfx, pos)
    of 48: parseStr(s, result.wSecurityID, pos)
    of 22: parseStr(s, result.wIDSource, pos)
    of 167: parseStr(s, result.wSecurityType, pos)
    of 200: parseStr(s, result.wMaturityMonthYear, pos)
    of 205: parseUInt(s, result.wMaturityDay, pos)
    of 201: parseInt(s, result.wPutOrCall, pos)
    of 202: parseFloat(s, result.wStrikePrice, pos)
    of 206: parseChar(s, result.wOptAttribute, pos)
    of 231: parseStr(s, result.wContractMultiplier, pos)
    of 223: parseStr(s, result.wCouponRate, pos)
    of 207: parseStr(s, result.wSecurityExchange, pos)
    of 106: parseStr(s, result.wIssuer, pos)
    of 348: parseUInt(s, result.wEncodedIssuerLen, pos)
    of 349: parseStr(s, result.wEncodedIssuer, pos)
    of 107: parseStr(s, result.wSecurityDesc, pos)
    of 350: parseUInt(s, result.wEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.wEncodedSecurityDesc, pos)
    of 291: parseChar(s, result.wFinancialStatus, pos)
    of 292: parseChar(s, result.wCorporateAction, pos)
    of 387: parseUInt(s, result.wTotalVolumeTraded, pos)
    of 268: skipValue(s, pos); parseNoMDEntries(s, result.wNoMDEntries, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtX(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtX)
  result.msgType = mtX
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
    of 262: parseStr(s, result.xMDReqID, pos)
    of 268: skipValue(s, pos); parseNoMDEntries(s, result.xNoMDEntries, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtY(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtY)
  result.msgType = mtY
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
    of 262: parseStr(s, result.yMDReqID, pos)
    of 281: parseChar(s, result.yMDReqRejReason, pos)
    of 58: parseStr(s, result.yText, pos)
    of 354: parseUInt(s, result.yEncodedTextLen, pos)
    of 355: parseStr(s, result.yEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtZ(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtZ)
  result.msgType = mtZ
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
    of 131: parseStr(s, result.zQuoteReqID, pos)
    of 117: parseStr(s, result.zQuoteID, pos)
    of 298: parseInt(s, result.zQuoteCancelType, pos)
    of 301: parseInt(s, result.zQuoteResponseLevel, pos)
    of 336: parseStr(s, result.zTradingSessionID, pos)
    of 295: skipValue(s, pos); parseNoQuoteEntries(s, result.zNoQuoteEntries, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtALow(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtALow)
  result.msgType = mtALow
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
    of 117: parseStr(s, result.alowQuoteID, pos)
    of 55: parseStr(s, result.alowSymbol, pos)
    of 65: parseStr(s, result.alowSymbolSfx, pos)
    of 48: parseStr(s, result.alowSecurityID, pos)
    of 22: parseStr(s, result.alowIDSource, pos)
    of 167: parseStr(s, result.alowSecurityType, pos)
    of 200: parseStr(s, result.alowMaturityMonthYear, pos)
    of 205: parseUInt(s, result.alowMaturityDay, pos)
    of 201: parseInt(s, result.alowPutOrCall, pos)
    of 202: parseFloat(s, result.alowStrikePrice, pos)
    of 206: parseChar(s, result.alowOptAttribute, pos)
    of 231: parseStr(s, result.alowContractMultiplier, pos)
    of 223: parseStr(s, result.alowCouponRate, pos)
    of 207: parseStr(s, result.alowSecurityExchange, pos)
    of 106: parseStr(s, result.alowIssuer, pos)
    of 348: parseUInt(s, result.alowEncodedIssuerLen, pos)
    of 349: parseStr(s, result.alowEncodedIssuer, pos)
    of 107: parseStr(s, result.alowSecurityDesc, pos)
    of 350: parseUInt(s, result.alowEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.alowEncodedSecurityDesc, pos)
    of 54: parseChar(s, result.alowSide, pos)
    of 336: parseStr(s, result.alowTradingSessionID, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtBLow(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtBLow)
  result.msgType = mtBLow
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
    of 131: parseStr(s, result.blowQuoteReqID, pos)
    of 117: parseStr(s, result.blowQuoteID, pos)
    of 297: parseInt(s, result.blowQuoteAckStatus, pos)
    of 300: parseInt(s, result.blowQuoteRejectReason, pos)
    of 301: parseInt(s, result.blowQuoteResponseLevel, pos)
    of 336: parseStr(s, result.blowTradingSessionID, pos)
    of 58: parseStr(s, result.blowText, pos)
    of 296: skipValue(s, pos); parseNoQuoteSets(s, result.blowNoQuoteSets, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtCLow(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtCLow)
  result.msgType = mtCLow
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
    of 320: parseStr(s, result.clowSecurityReqID, pos)
    of 321: parseInt(s, result.clowSecurityRequestType, pos)
    of 55: parseStr(s, result.clowSymbol, pos)
    of 65: parseStr(s, result.clowSymbolSfx, pos)
    of 48: parseStr(s, result.clowSecurityID, pos)
    of 22: parseStr(s, result.clowIDSource, pos)
    of 167: parseStr(s, result.clowSecurityType, pos)
    of 200: parseStr(s, result.clowMaturityMonthYear, pos)
    of 205: parseUInt(s, result.clowMaturityDay, pos)
    of 201: parseInt(s, result.clowPutOrCall, pos)
    of 202: parseFloat(s, result.clowStrikePrice, pos)
    of 206: parseChar(s, result.clowOptAttribute, pos)
    of 231: parseStr(s, result.clowContractMultiplier, pos)
    of 223: parseStr(s, result.clowCouponRate, pos)
    of 207: parseStr(s, result.clowSecurityExchange, pos)
    of 106: parseStr(s, result.clowIssuer, pos)
    of 348: parseUInt(s, result.clowEncodedIssuerLen, pos)
    of 349: parseStr(s, result.clowEncodedIssuer, pos)
    of 107: parseStr(s, result.clowSecurityDesc, pos)
    of 350: parseUInt(s, result.clowEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.clowEncodedSecurityDesc, pos)
    of 15: parseStr(s, result.clowCurrency, pos)
    of 58: parseStr(s, result.clowText, pos)
    of 354: parseUInt(s, result.clowEncodedTextLen, pos)
    of 355: parseStr(s, result.clowEncodedText, pos)
    of 336: parseStr(s, result.clowTradingSessionID, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.clowNoRelatedSym, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtDLow(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtDLow)
  result.msgType = mtDLow
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
    of 320: parseStr(s, result.dlowSecurityReqID, pos)
    of 322: parseStr(s, result.dlowSecurityResponseID, pos)
    of 323: parseInt(s, result.dlowSecurityResponseType, pos)
    of 393: parseInt(s, result.dlowTotalNumSecurities, pos)
    of 55: parseStr(s, result.dlowSymbol, pos)
    of 65: parseStr(s, result.dlowSymbolSfx, pos)
    of 48: parseStr(s, result.dlowSecurityID, pos)
    of 22: parseStr(s, result.dlowIDSource, pos)
    of 167: parseStr(s, result.dlowSecurityType, pos)
    of 200: parseStr(s, result.dlowMaturityMonthYear, pos)
    of 205: parseUInt(s, result.dlowMaturityDay, pos)
    of 201: parseInt(s, result.dlowPutOrCall, pos)
    of 202: parseFloat(s, result.dlowStrikePrice, pos)
    of 206: parseChar(s, result.dlowOptAttribute, pos)
    of 231: parseStr(s, result.dlowContractMultiplier, pos)
    of 223: parseStr(s, result.dlowCouponRate, pos)
    of 207: parseStr(s, result.dlowSecurityExchange, pos)
    of 106: parseStr(s, result.dlowIssuer, pos)
    of 348: parseUInt(s, result.dlowEncodedIssuerLen, pos)
    of 349: parseStr(s, result.dlowEncodedIssuer, pos)
    of 107: parseStr(s, result.dlowSecurityDesc, pos)
    of 350: parseUInt(s, result.dlowEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.dlowEncodedSecurityDesc, pos)
    of 15: parseStr(s, result.dlowCurrency, pos)
    of 336: parseStr(s, result.dlowTradingSessionID, pos)
    of 58: parseStr(s, result.dlowText, pos)
    of 354: parseUInt(s, result.dlowEncodedTextLen, pos)
    of 355: parseStr(s, result.dlowEncodedText, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.dlowNoRelatedSym, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtELow(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtELow)
  result.msgType = mtELow
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
    of 324: parseStr(s, result.elowSecurityStatusReqID, pos)
    of 55: parseStr(s, result.elowSymbol, pos)
    of 65: parseStr(s, result.elowSymbolSfx, pos)
    of 48: parseStr(s, result.elowSecurityID, pos)
    of 22: parseStr(s, result.elowIDSource, pos)
    of 167: parseStr(s, result.elowSecurityType, pos)
    of 200: parseStr(s, result.elowMaturityMonthYear, pos)
    of 205: parseUInt(s, result.elowMaturityDay, pos)
    of 201: parseInt(s, result.elowPutOrCall, pos)
    of 202: parseFloat(s, result.elowStrikePrice, pos)
    of 206: parseChar(s, result.elowOptAttribute, pos)
    of 231: parseStr(s, result.elowContractMultiplier, pos)
    of 223: parseStr(s, result.elowCouponRate, pos)
    of 207: parseStr(s, result.elowSecurityExchange, pos)
    of 106: parseStr(s, result.elowIssuer, pos)
    of 348: parseUInt(s, result.elowEncodedIssuerLen, pos)
    of 349: parseStr(s, result.elowEncodedIssuer, pos)
    of 107: parseStr(s, result.elowSecurityDesc, pos)
    of 350: parseUInt(s, result.elowEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.elowEncodedSecurityDesc, pos)
    of 15: parseStr(s, result.elowCurrency, pos)
    of 263: parseChar(s, result.elowSubscriptionRequestType, pos)
    of 336: parseStr(s, result.elowTradingSessionID, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtFLow(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtFLow)
  result.msgType = mtFLow
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
    of 324: parseStr(s, result.flowSecurityStatusReqID, pos)
    of 55: parseStr(s, result.flowSymbol, pos)
    of 65: parseStr(s, result.flowSymbolSfx, pos)
    of 48: parseStr(s, result.flowSecurityID, pos)
    of 22: parseStr(s, result.flowIDSource, pos)
    of 167: parseStr(s, result.flowSecurityType, pos)
    of 200: parseStr(s, result.flowMaturityMonthYear, pos)
    of 205: parseUInt(s, result.flowMaturityDay, pos)
    of 201: parseInt(s, result.flowPutOrCall, pos)
    of 202: parseFloat(s, result.flowStrikePrice, pos)
    of 206: parseChar(s, result.flowOptAttribute, pos)
    of 231: parseStr(s, result.flowContractMultiplier, pos)
    of 223: parseStr(s, result.flowCouponRate, pos)
    of 207: parseStr(s, result.flowSecurityExchange, pos)
    of 106: parseStr(s, result.flowIssuer, pos)
    of 348: parseUInt(s, result.flowEncodedIssuerLen, pos)
    of 349: parseStr(s, result.flowEncodedIssuer, pos)
    of 107: parseStr(s, result.flowSecurityDesc, pos)
    of 350: parseUInt(s, result.flowEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.flowEncodedSecurityDesc, pos)
    of 15: parseStr(s, result.flowCurrency, pos)
    of 336: parseStr(s, result.flowTradingSessionID, pos)
    of 325: parseBool(s, result.flowUnsolicitedIndicator, pos)
    of 326: parseInt(s, result.flowSecurityTradingStatus, pos)
    of 291: parseChar(s, result.flowFinancialStatus, pos)
    of 292: parseChar(s, result.flowCorporateAction, pos)
    of 327: parseChar(s, result.flowHaltReasonChar, pos)
    of 328: parseBool(s, result.flowInViewOfCommon, pos)
    of 329: parseBool(s, result.flowDueToRelated, pos)
    of 330: parseUInt(s, result.flowBuyVolume, pos)
    of 331: parseUInt(s, result.flowSellVolume, pos)
    of 332: parseFloat(s, result.flowHighPx, pos)
    of 333: parseFloat(s, result.flowLowPx, pos)
    of 31: parseFloat(s, result.flowLastPx, pos)
    of 60: parseStr(s, result.flowTransactTime, pos)
    of 334: parseInt(s, result.flowAdjustment, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtGLow(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtGLow)
  result.msgType = mtGLow
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
    of 335: parseStr(s, result.glowTradSesReqID, pos)
    of 336: parseStr(s, result.glowTradingSessionID, pos)
    of 338: parseInt(s, result.glowTradSesMethod, pos)
    of 339: parseInt(s, result.glowTradSesMode, pos)
    of 263: parseChar(s, result.glowSubscriptionRequestType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtHLow(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtHLow)
  result.msgType = mtHLow
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
    of 335: parseStr(s, result.hlowTradSesReqID, pos)
    of 336: parseStr(s, result.hlowTradingSessionID, pos)
    of 338: parseInt(s, result.hlowTradSesMethod, pos)
    of 339: parseInt(s, result.hlowTradSesMode, pos)
    of 325: parseBool(s, result.hlowUnsolicitedIndicator, pos)
    of 340: parseInt(s, result.hlowTradSesStatus, pos)
    of 341: parseStr(s, result.hlowTradSesStartTime, pos)
    of 342: parseStr(s, result.hlowTradSesOpenTime, pos)
    of 343: parseStr(s, result.hlowTradSesPreCloseTime, pos)
    of 344: parseStr(s, result.hlowTradSesCloseTime, pos)
    of 345: parseStr(s, result.hlowTradSesEndTime, pos)
    of 387: parseUInt(s, result.hlowTotalVolumeTraded, pos)
    of 58: parseStr(s, result.hlowText, pos)
    of 354: parseUInt(s, result.hlowEncodedTextLen, pos)
    of 355: parseStr(s, result.hlowEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtILow(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtILow)
  result.msgType = mtILow
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
    of 131: parseStr(s, result.ilowQuoteReqID, pos)
    of 117: parseStr(s, result.ilowQuoteID, pos)
    of 301: parseInt(s, result.ilowQuoteResponseLevel, pos)
    of 293: parseUInt(s, result.ilowDefBidSize, pos)
    of 294: parseUInt(s, result.ilowDefOfferSize, pos)
    of 296: skipValue(s, pos); parseNoQuoteSets(s, result.ilowNoQuoteSets, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtJLow(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtJLow)
  result.msgType = mtJLow
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
    of 45: parseInt(s, result.jlowRefSeqNum, pos)
    of 372: parseStr(s, result.jlowRefMsgType, pos)
    of 379: parseStr(s, result.jlowBusinessRejectRefID, pos)
    of 380: parseInt(s, result.jlowBusinessRejectReason, pos)
    of 58: parseStr(s, result.jlowText, pos)
    of 354: parseUInt(s, result.jlowEncodedTextLen, pos)
    of 355: parseStr(s, result.jlowEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtKLow(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtKLow)
  result.msgType = mtKLow
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
    of 390: parseStr(s, result.klowBidID, pos)
    of 391: parseStr(s, result.klowClientBidID, pos)
    of 374: parseChar(s, result.klowBidRequestTransType, pos)
    of 392: parseStr(s, result.klowListName, pos)
    of 393: parseInt(s, result.klowTotalNumSecurities, pos)
    of 394: parseInt(s, result.klowBidType, pos)
    of 395: parseInt(s, result.klowNumTickets, pos)
    of 15: parseStr(s, result.klowCurrency, pos)
    of 396: parseUInt(s, result.klowSideValue1, pos)
    of 397: parseUInt(s, result.klowSideValue2, pos)
    of 398: skipValue(s, pos); parseNoBidDescriptors(s, result.klowNoBidDescriptors, pos)
    of 420: skipValue(s, pos); parseNoBidComponents(s, result.klowNoBidComponents, pos)
    of 409: parseInt(s, result.klowLiquidityIndType, pos)
    of 410: parseStr(s, result.klowWtAverageLiquidity, pos)
    of 411: parseBool(s, result.klowExchangeForPhysical, pos)
    of 412: parseUInt(s, result.klowOutMainCntryUIndex, pos)
    of 413: parseStr(s, result.klowCrossPercent, pos)
    of 414: parseInt(s, result.klowProgRptReqs, pos)
    of 415: parseInt(s, result.klowProgPeriodInterval, pos)
    of 416: parseInt(s, result.klowIncTaxInd, pos)
    of 121: parseBool(s, result.klowForexReq, pos)
    of 417: parseInt(s, result.klowNumBidders, pos)
    of 75: parseStr(s, result.klowTradeDate, pos)
    of 418: parseChar(s, result.klowTradeType, pos)
    of 419: parseChar(s, result.klowBasisPxType, pos)
    of 443: parseStr(s, result.klowStrikeTime, pos)
    of 58: parseStr(s, result.klowText, pos)
    of 354: parseUInt(s, result.klowEncodedTextLen, pos)
    of 355: parseStr(s, result.klowEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtLLow(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtLLow)
  result.msgType = mtLLow
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
    of 390: parseStr(s, result.llowBidID, pos)
    of 391: parseStr(s, result.llowClientBidID, pos)
    of 420: skipValue(s, pos); parseNoBidComponents(s, result.llowNoBidComponents, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtMLow(s: string, result: var FIX42, pos: var int) =
  var
    t: uint16
  # result = FIX42(msgType: mtMLow)
  result.msgType = mtMLow
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
    of 66: parseStr(s, result.mlowListID, pos)
    of 422: parseInt(s, result.mlowTotNoStrikes, pos)
    of 428: skipValue(s, pos); parseNoStrikes(s, result.mlowNoStrikes, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseFIX42(s: string): FIX42 =
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
      of "6": parsemt6(s, result, pos)
      of "7": parsemt7(s, result, pos)
      of "8": parsemt8(s, result, pos)
      of "9": parsemt9(s, result, pos)
      of "A": parsemtA(s, result, pos)
      of "B": parsemtB(s, result, pos)
      of "C": parsemtC(s, result, pos)
      of "D": parsemtD(s, result, pos)
      of "E": parsemtE(s, result, pos)
      of "F": parsemtF(s, result, pos)
      of "G": parsemtG(s, result, pos)
      of "H": parsemtH(s, result, pos)
      of "J": parsemtJ(s, result, pos)
      of "K": parsemtK(s, result, pos)
      of "L": parsemtL(s, result, pos)
      of "M": parsemtM(s, result, pos)
      of "N": parsemtN(s, result, pos)
      of "P": parsemtP(s, result, pos)
      of "Q": parsemtQ(s, result, pos)
      of "R": parsemtR(s, result, pos)
      of "S": parsemtS(s, result, pos)
      of "T": parsemtT(s, result, pos)
      of "V": parsemtV(s, result, pos)
      of "W": parsemtW(s, result, pos)
      of "X": parsemtX(s, result, pos)
      of "Y": parsemtY(s, result, pos)
      of "Z": parsemtZ(s, result, pos)
      of "a": parsemtALow(s, result, pos)
      of "b": parsemtBLow(s, result, pos)
      of "c": parsemtCLow(s, result, pos)
      of "d": parsemtDLow(s, result, pos)
      of "e": parsemtELow(s, result, pos)
      of "f": parsemtFLow(s, result, pos)
      of "g": parsemtGLow(s, result, pos)
      of "h": parsemtHLow(s, result, pos)
      of "i": parsemtILow(s, result, pos)
      of "j": parsemtJLow(s, result, pos)
      of "k": parsemtKLow(s, result, pos)
      of "l": parsemtLLow(s, result, pos)
      of "m": parsemtMLow(s, result, pos)
    else: raise newException(ValueError, "unexpected header field: " & $t)

