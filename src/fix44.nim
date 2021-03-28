include parsefix

type
  NoHops* = object
    hopCompID*: string
    hopSendingTime*: string
    hopRefID*: uint

  NoIOIQualifiers* = object
    iOIQualifier*: char

  NoRoutingIDs* = object
    routingType*: int
    routingID*: string

  NoContraBrokers* = object
    contraBroker*: string
    contraTrader*: string
    contraTradeQty*: uint
    contraTradeTime*: string
    contraLegRefID*: string

  NoMsgTypes* = object
    refMsgType*: string
    msgDirection*: char

  NoRelatedSym* = object
    symbol*: string
    symbolSfx*: string
    securityID*: string
    securityIDSource*: string
    noSecurityAltID*: seq[NoSecurityAltID]
    product*: int
    cFICode*: string
    securityType*: string
    securitySubType*: string
    maturityMonthYear*: string
    maturityDate*: string
    putOrCall*: int
    couponPaymentDate*: string
    issueDate*: string
    repoCollateralSecurityType*: string
    repurchaseTerm*: int
    repurchaseRate*: float
    factor*: string
    creditRating*: string
    instrRegistry*: string
    countryOfIssue*: string
    stateOrProvinceOfIssue*: string
    localeOfIssue*: string
    redemptionDate*: string
    strikePrice*: float
    strikeCurrency*: string
    optAttribute*: char
    contractMultiplier*: string
    couponRate*: float
    securityExchange*: string
    issuer*: string
    encodedIssuerLen*: uint
    encodedIssuer*: string
    securityDesc*: string
    encodedSecurityDescLen*: uint
    encodedSecurityDesc*: string
    pool*: string
    contractSettlMonth*: string
    cPProgram*: int
    cPRegType*: string
    noEvents*: seq[NoEvents]
    datedDate*: string
    interestAccrualDate*: string
    agreementDesc*: string
    agreementID*: string
    agreementDate*: string
    agreementCurrency*: string
    terminationType*: int
    startDate*: string
    endDate*: string
    deliveryType*: int
    marginRatio*: float
    noUnderlyings*: seq[NoUnderlyings]
    prevClosePx*: float
    quoteRequestType*: int
    quoteType*: int
    tradingSessionID*: string
    tradingSessionSubID*: string
    tradeOriginationDate*: string
    side*: char
    qtyType*: int
    orderQty*: uint
    cashOrderQty*: uint
    orderPercent*: float
    roundingDirection*: char
    roundingModulus*: string
    settlType*: char
    settlDate*: string
    settlDate2*: string
    orderQty2*: uint
    currency*: string
    noStipulations*: seq[NoStipulations]
    account*: string
    acctIDSource*: int
    accountType*: int
    noLegs*: seq[NoLegs]
    noQuoteQualifiers*: seq[NoQuoteQualifiers]
    quotePriceType*: int
    ordType*: char
    validUntilTime*: string
    expireTime*: string
    transactTime*: string
    spread*: float
    benchmarkCurveCurrency*: string
    benchmarkCurveName*: string
    benchmarkCurvePoint*: string
    benchmarkPrice*: float
    benchmarkPriceType*: int
    benchmarkSecurityID*: string
    benchmarkSecurityIDSource*: string
    priceType*: int
    price*: float
    price2*: float
    yieldType*: string
    `yield`*: float
    yieldCalcDate*: string
    yieldRedemptionDate*: string
    yieldRedemptionPrice*: float
    yieldRedemptionPriceType*: int
    noPartyIDs*: seq[NoPartyIDs]
    deliveryForm*: int
    pctAtRisk*: float
    noInstrAttrib*: seq[NoInstrAttrib]
    roundLot*: uint
    minTradeVol*: uint
    expirationCycle*: int
    text*: string
    encodedTextLen*: uint
    encodedText*: string

  NoLinesOfText* = object
    text*: string
    encodedTextLen*: uint
    encodedText*: string

  NoTradingSessions* = object
    tradingSessionID*: string
    tradingSessionSubID*: string

  NoOrders* = object
    clOrdID*: string
    secondaryClOrdID*: string
    listSeqNo*: int
    clOrdLinkID*: string
    settlInstMode*: char
    noPartyIDs*: seq[NoPartyIDs]
    tradeOriginationDate*: string
    tradeDate*: string
    account*: string
    acctIDSource*: int
    accountType*: int
    dayBookingInst*: char
    bookingUnit*: char
    allocID*: string
    preallocMethod*: char
    noAllocs*: seq[NoAllocs]
    settlType*: char
    settlDate*: string
    cashMargin*: char
    clearingFeeIndicator*: string
    handlInst*: char
    execInst*: string
    minQty*: uint
    maxFloor*: uint
    exDestination*: string
    noTradingSessions*: seq[NoTradingSessions]
    processCode*: char
    symbol*: string
    symbolSfx*: string
    securityID*: string
    securityIDSource*: string
    noSecurityAltID*: seq[NoSecurityAltID]
    product*: int
    cFICode*: string
    securityType*: string
    securitySubType*: string
    maturityMonthYear*: string
    maturityDate*: string
    putOrCall*: int
    couponPaymentDate*: string
    issueDate*: string
    repoCollateralSecurityType*: string
    repurchaseTerm*: int
    repurchaseRate*: float
    factor*: string
    creditRating*: string
    instrRegistry*: string
    countryOfIssue*: string
    stateOrProvinceOfIssue*: string
    localeOfIssue*: string
    redemptionDate*: string
    strikePrice*: float
    strikeCurrency*: string
    optAttribute*: char
    contractMultiplier*: string
    couponRate*: float
    securityExchange*: string
    issuer*: string
    encodedIssuerLen*: uint
    encodedIssuer*: string
    securityDesc*: string
    encodedSecurityDescLen*: uint
    encodedSecurityDesc*: string
    pool*: string
    contractSettlMonth*: string
    cPProgram*: int
    cPRegType*: string
    noEvents*: seq[NoEvents]
    datedDate*: string
    interestAccrualDate*: string
    noUnderlyings*: seq[NoUnderlyings]
    prevClosePx*: float
    side*: char
    sideValueInd*: int
    locateReqd*: bool
    transactTime*: string
    noStipulations*: seq[NoStipulations]
    qtyType*: int
    orderQty*: uint
    cashOrderQty*: uint
    orderPercent*: float
    roundingDirection*: char
    roundingModulus*: string
    ordType*: char
    priceType*: int
    price*: float
    stopPx*: float
    spread*: float
    benchmarkCurveCurrency*: string
    benchmarkCurveName*: string
    benchmarkCurvePoint*: string
    benchmarkPrice*: float
    benchmarkPriceType*: int
    benchmarkSecurityID*: string
    benchmarkSecurityIDSource*: string
    yieldType*: string
    `yield`*: float
    yieldCalcDate*: string
    yieldRedemptionDate*: string
    yieldRedemptionPrice*: float
    yieldRedemptionPriceType*: int
    currency*: string
    complianceID*: string
    solicitedFlag*: bool
    iOIID*: string
    quoteID*: string
    timeInForce*: char
    effectiveTime*: string
    expireDate*: string
    expireTime*: string
    gTBookingInst*: int
    commission*: uint
    commType*: char
    commCurrency*: string
    fundRenewWaiv*: char
    orderCapacity*: char
    orderRestrictions*: string
    custOrderCapacity*: int
    forexReq*: bool
    settlCurrency*: string
    bookingType*: int
    text*: string
    encodedTextLen*: uint
    encodedText*: string
    settlDate2*: string
    orderQty2*: uint
    price2*: float
    positionEffect*: char
    coveredOrUncovered*: int
    maxShow*: uint
    pegOffsetValue*: string
    pegMoveType*: int
    pegOffsetType*: int
    pegLimitType*: int
    pegRoundDirection*: int
    pegScope*: int
    discretionInst*: char
    discretionOffsetValue*: string
    discretionMoveType*: int
    discretionOffsetType*: int
    discretionLimitType*: int
    discretionRoundDirection*: int
    discretionScope*: int
    targetStrategy*: int
    targetStrategyParameters*: string
    participationRate*: float
    designation*: string
    orderID*: string
    secondaryOrderID*: string
    listID*: string
    noNested2PartyIDs*: seq[NoNested2PartyIDs]
    orderAvgPx*: float
    orderBookingQty*: uint
    cumQty*: uint
    ordStatus*: char
    workingIndicator*: bool
    leavesQty*: uint
    cxlQty*: uint
    avgPx*: float
    ordRejReason*: int

  NoExecs* = object
    lastQty*: uint
    execID*: string
    secondaryExecID*: string
    lastPx*: float
    lastParPx*: float
    lastCapacity*: char

  NoSettlInst* = object
    settlInstID*: string
    settlInstTransType*: char
    settlInstRefID*: string
    noPartyIDs*: seq[NoPartyIDs]
    side*: char
    product*: int
    securityType*: string
    cFICode*: string
    effectiveTime*: string
    expireTime*: string
    lastUpdateTime*: string
    settlDeliveryType*: int
    standInstDbType*: int
    standInstDbName*: string
    standInstDbID*: string
    noDlvyInst*: seq[NoDlvyInst]
    paymentMethod*: int
    paymentRef*: string
    cardHolderName*: string
    cardNumber*: string
    cardStartDate*: string
    cardExpDate*: string
    cardIssNum*: string
    paymentDate*: string
    paymentRemitterID*: string

  NoMDEntryTypes* = object
    mDEntryType*: char

  NoMDEntries* = object
    mDEntryType*: char
    mDEntryPx*: float
    currency*: string
    mDEntrySize*: uint
    mDEntryDate*: string
    mDEntryTime*: string
    tickDirection*: char
    mDMkt*: string
    tradingSessionID*: string
    tradingSessionSubID*: string
    quoteCondition*: string
    tradeCondition*: string
    mDEntryOriginator*: string
    locationID*: string
    deskID*: string
    openCloseSettlFlag*: string
    timeInForce*: char
    expireDate*: string
    expireTime*: string
    minQty*: uint
    execInst*: string
    sellerDays*: int
    orderID*: string
    quoteEntryID*: string
    mDEntryBuyer*: string
    mDEntrySeller*: string
    numberOfOrders*: int
    mDEntryPositionNo*: int
    scope*: string
    priceDelta*: string
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
    securityIDSource*: string
    noSecurityAltID*: seq[NoSecurityAltID]
    product*: int
    cFICode*: string
    securityType*: string
    securitySubType*: string
    maturityMonthYear*: string
    maturityDate*: string
    putOrCall*: int
    couponPaymentDate*: string
    issueDate*: string
    repoCollateralSecurityType*: string
    repurchaseTerm*: int
    repurchaseRate*: float
    factor*: string
    creditRating*: string
    instrRegistry*: string
    countryOfIssue*: string
    stateOrProvinceOfIssue*: string
    localeOfIssue*: string
    redemptionDate*: string
    strikePrice*: float
    strikeCurrency*: string
    optAttribute*: char
    contractMultiplier*: string
    couponRate*: float
    securityExchange*: string
    issuer*: string
    encodedIssuerLen*: uint
    encodedIssuer*: string
    securityDesc*: string
    encodedSecurityDescLen*: uint
    encodedSecurityDesc*: string
    pool*: string
    contractSettlMonth*: string
    cPProgram*: int
    cPRegType*: string
    noEvents*: seq[NoEvents]
    datedDate*: string
    interestAccrualDate*: string
    noUnderlyings*: seq[NoUnderlyings]
    noLegs*: seq[NoLegs]
    financialStatus*: string
    corporateAction*: string
    netChgPrevDay*: float

  NoAltMDSource* = object
    altMDSourceID*: string

  NoQuoteSets* = object
    quoteSetID*: string
    underlyingSymbol*: string
    underlyingSymbolSfx*: string
    underlyingSecurityID*: string
    underlyingSecurityIDSource*: string
    noUnderlyingSecurityAltID*: seq[NoUnderlyingSecurityAltID]
    underlyingProduct*: int
    underlyingCFICode*: string
    underlyingSecurityType*: string
    underlyingSecuritySubType*: string
    underlyingMaturityMonthYear*: string
    underlyingMaturityDate*: string
    underlyingPutOrCall*: int
    underlyingCouponPaymentDate*: string
    underlyingIssueDate*: string
    underlyingRepoCollateralSecurityType*: string
    underlyingRepurchaseTerm*: int
    underlyingRepurchaseRate*: float
    underlyingFactor*: string
    underlyingCreditRating*: string
    underlyingInstrRegistry*: string
    underlyingCountryOfIssue*: string
    underlyingStateOrProvinceOfIssue*: string
    underlyingLocaleOfIssue*: string
    underlyingRedemptionDate*: string
    underlyingStrikePrice*: float
    underlyingStrikeCurrency*: string
    underlyingOptAttribute*: char
    underlyingContractMultiplier*: string
    underlyingCouponRate*: float
    underlyingSecurityExchange*: string
    underlyingIssuer*: string
    encodedUnderlyingIssuerLen*: uint
    encodedUnderlyingIssuer*: string
    underlyingSecurityDesc*: string
    encodedUnderlyingSecurityDescLen*: uint
    encodedUnderlyingSecurityDesc*: string
    underlyingCPProgram*: string
    underlyingCPRegType*: string
    underlyingCurrency*: string
    underlyingQty*: uint
    underlyingPx*: float
    underlyingDirtyPrice*: float
    underlyingEndPrice*: float
    underlyingStartValue*: uint
    underlyingCurrentValue*: uint
    underlyingEndValue*: uint
    noUnderlyingStips*: seq[NoUnderlyingStips]
    totNoQuoteEntries*: int
    lastFragment*: bool
    noQuoteEntries*: seq[NoQuoteEntries]
    quoteSetValidUntilTime*: string

  NoQuoteEntries* = object
    symbol*: string
    symbolSfx*: string
    securityID*: string
    securityIDSource*: string
    noSecurityAltID*: seq[NoSecurityAltID]
    product*: int
    cFICode*: string
    securityType*: string
    securitySubType*: string
    maturityMonthYear*: string
    maturityDate*: string
    putOrCall*: int
    couponPaymentDate*: string
    issueDate*: string
    repoCollateralSecurityType*: string
    repurchaseTerm*: int
    repurchaseRate*: float
    factor*: string
    creditRating*: string
    instrRegistry*: string
    countryOfIssue*: string
    stateOrProvinceOfIssue*: string
    localeOfIssue*: string
    redemptionDate*: string
    strikePrice*: float
    strikeCurrency*: string
    optAttribute*: char
    contractMultiplier*: string
    couponRate*: float
    securityExchange*: string
    issuer*: string
    encodedIssuerLen*: uint
    encodedIssuer*: string
    securityDesc*: string
    encodedSecurityDescLen*: uint
    encodedSecurityDesc*: string
    pool*: string
    contractSettlMonth*: string
    cPProgram*: int
    cPRegType*: string
    noEvents*: seq[NoEvents]
    datedDate*: string
    interestAccrualDate*: string
    agreementDesc*: string
    agreementID*: string
    agreementDate*: string
    agreementCurrency*: string
    terminationType*: int
    startDate*: string
    endDate*: string
    deliveryType*: int
    marginRatio*: float
    noUnderlyings*: seq[NoUnderlyings]
    noLegs*: seq[NoLegs]
    quoteEntryID*: string
    bidPx*: float
    offerPx*: float
    bidSize*: uint
    offerSize*: uint
    validUntilTime*: string
    bidSpotRate*: float
    offerSpotRate*: float
    bidForwardPoints*: float
    offerForwardPoints*: float
    midPx*: float
    bidYield*: float
    midYield*: float
    offerYield*: float
    transactTime*: string
    tradingSessionID*: string
    tradingSessionSubID*: string
    settlDate*: string
    ordType*: char
    settlDate2*: string
    orderQty2*: uint
    bidForwardPoints2*: float
    offerForwardPoints2*: float
    currency*: string
    quoteEntryRejectReason*: int

  NoBidDescriptors* = object
    bidDescriptorType*: int
    bidDescriptor*: string
    sideValueInd*: int
    liquidityValue*: uint
    liquidityNumSecurities*: int
    liquidityPctLow*: float
    liquidityPctHigh*: float
    eFPTrackingError*: float
    fairValue*: uint
    outsideIndexPct*: float
    valueOfFutures*: uint

  NoBidComponents* = object
    listID*: string
    side*: char
    tradingSessionID*: string
    tradingSessionSubID*: string
    netGrossInd*: int
    settlType*: char
    settlDate*: string
    account*: string
    acctIDSource*: int
    commission*: uint
    commType*: char
    commCurrency*: string
    fundRenewWaiv*: char
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
    securityIDSource*: string
    noSecurityAltID*: seq[NoSecurityAltID]
    product*: int
    cFICode*: string
    securityType*: string
    securitySubType*: string
    maturityMonthYear*: string
    maturityDate*: string
    putOrCall*: int
    couponPaymentDate*: string
    issueDate*: string
    repoCollateralSecurityType*: string
    repurchaseTerm*: int
    repurchaseRate*: float
    factor*: string
    creditRating*: string
    instrRegistry*: string
    countryOfIssue*: string
    stateOrProvinceOfIssue*: string
    localeOfIssue*: string
    redemptionDate*: string
    strikePrice*: float
    strikeCurrency*: string
    optAttribute*: char
    contractMultiplier*: string
    couponRate*: float
    securityExchange*: string
    issuer*: string
    encodedIssuerLen*: uint
    encodedIssuer*: string
    securityDesc*: string
    encodedSecurityDescLen*: uint
    encodedSecurityDesc*: string
    pool*: string
    contractSettlMonth*: string
    cPProgram*: int
    cPRegType*: string
    noEvents*: seq[NoEvents]
    datedDate*: string
    interestAccrualDate*: string

  NoRegistDtls* = object
    registDtls*: string
    registEmail*: string
    mailingDtls*: string
    mailingInst*: string
    noNestedPartyIDs*: seq[NoNestedPartyIDs]
    ownerType*: int
    dateOfBirth*: string
    investorCountryOfResidence*: string

  NoDistribInsts* = object
    distribPaymentMethod*: int
    distribPercentage*: float
    cashDistribCurr*: string
    cashDistribAgentName*: string
    cashDistribAgentCode*: string
    cashDistribAgentAcctNumber*: string
    cashDistribPayRef*: string
    cashDistribAgentAcctName*: string

  NoAffectedOrders* = object
    origClOrdID*: string
    affectedOrderID*: string
    affectedSecondaryOrderID*: string

  NoSides* = object
    side*: char
    clOrdID*: string
    secondaryClOrdID*: string
    clOrdLinkID*: string
    noPartyIDs*: seq[NoPartyIDs]
    tradeOriginationDate*: string
    tradeDate*: string
    account*: string
    acctIDSource*: int
    accountType*: int
    dayBookingInst*: char
    bookingUnit*: char
    preallocMethod*: char
    allocID*: string
    noAllocs*: seq[NoAllocs]
    qtyType*: int
    orderQty*: uint
    cashOrderQty*: uint
    orderPercent*: float
    roundingDirection*: char
    roundingModulus*: string
    commission*: uint
    commType*: char
    commCurrency*: string
    fundRenewWaiv*: char
    orderCapacity*: char
    orderRestrictions*: string
    custOrderCapacity*: int
    forexReq*: bool
    settlCurrency*: string
    bookingType*: int
    text*: string
    encodedTextLen*: uint
    encodedText*: string
    positionEffect*: char
    coveredOrUncovered*: int
    cashMargin*: char
    clearingFeeIndicator*: string
    solicitedFlag*: bool
    sideComplianceID*: string
    origClOrdID*: string
    origOrdModTime*: string
    complianceID*: string
    orderID*: string
    secondaryOrderID*: string
    listID*: string
    processCode*: char
    oddLot*: bool
    noClearingInstructions*: seq[NoClearingInstructions]
    tradeInputSource*: string
    tradeInputDevice*: string
    orderInputDevice*: string
    currency*: string
    ordType*: char
    execInst*: string
    transBkdTime*: string
    tradingSessionID*: string
    tradingSessionSubID*: string
    timeBracket*: string
    grossTradeAmt*: uint
    numDaysInterest*: int
    exDate*: string
    accruedInterestRate*: float
    accruedInterestAmt*: uint
    interestAtMaturity*: uint
    endAccruedInterestAmt*: uint
    startCash*: uint
    endCash*: uint
    concession*: uint
    totalTakedown*: uint
    netMoney*: uint
    settlCurrAmt*: uint
    settlCurrFxRate*: string
    settlCurrFxRateCalc*: char
    sideMultiLegReportingType*: int
    noContAmts*: seq[NoContAmts]
    noStipulations*: seq[NoStipulations]
    noMiscFees*: seq[NoMiscFees]
    exchangeRule*: string
    tradeAllocIndicator*: int

  NoSecurityTypes* = object
    securityType*: string
    securitySubType*: string
    product*: int
    cFICode*: string

  NoInstrAttrib* = object
    instrAttribType*: int
    instrAttribValue*: string

  NoNested3PartySubIDs* = object
    nested3PartySubID*: string
    nested3PartySubIDType*: int

  NoNested3PartyIDs* = object
    nested3PartyID*: string
    nested3PartyIDSource*: char
    nested3PartyRole*: int
    noNested3PartySubIDs*: seq[NoNested3PartySubIDs]

  NoLegAllocs* = object
    legAllocAccount*: string
    legIndividualAllocID*: string
    noNested2PartyIDs*: seq[NoNested2PartyIDs]
    legAllocQty*: uint
    legAllocAcctIDSource*: string
    legSettlCurrency*: string

  NoDates* = object
    tradeDate*: string
    transactTime*: string

  NoPosAmt* = object
    posAmtType*: string
    posAmt*: uint

  NoTrdRegTimestamps* = object
    trdRegTimestamp*: string
    trdRegTimestampType*: int
    trdRegTimestampOrigin*: string

  NoContAmts* = object
    contAmtType*: int
    contAmtValue*: string
    contAmtCurr*: string

  NoAllocs* = object
    allocAccount*: string
    allocAcctIDSource*: int
    allocSettlCurrency*: string
    individualAllocID*: string
    noNestedPartyIDs*: seq[NoNestedPartyIDs]
    allocQty*: uint
    matchStatus*: char
    allocPrice*: float
    processCode*: char
    notifyBrokerOfCredit*: bool
    allocHandlInst*: int
    allocText*: string
    encodedAllocTextLen*: uint
    encodedAllocText*: string
    commission*: uint
    commType*: char
    commCurrency*: string
    fundRenewWaiv*: char
    allocAvgPx*: float
    allocNetMoney*: uint
    settlCurrAmt*: uint
    allocSettlCurrAmt*: uint
    settlCurrency*: string
    settlCurrFxRate*: string
    settlCurrFxRateCalc*: char
    allocAccruedInterestAmt*: uint
    allocInterestAtMaturity*: uint
    noMiscFees*: seq[NoMiscFees]
    noClearingInstructions*: seq[NoClearingInstructions]
    allocSettlInstType*: int
    settlDeliveryType*: int
    standInstDbType*: int
    standInstDbName*: string
    standInstDbID*: string
    noDlvyInst*: seq[NoDlvyInst]
    individualAllocRejCode*: int
    noNested3PartyIDs*: seq[NoNested3PartyIDs]
    noNested2PartyIDs*: seq[NoNested2PartyIDs]

  NoStipulations* = object
    stipulationType*: string
    stipulationValue*: string

  NoQuoteQualifiers* = object
    quoteQualifier*: char

  NoPartyIDs* = object
    partyID*: string
    partyIDSource*: char
    partyRole*: int
    noPartySubIDs*: seq[NoPartySubIDs]

  NoSecurityAltID* = object
    securityAltID*: string
    securityAltIDSource*: string

  NoEvents* = object
    eventType*: int
    eventDate*: string
    eventPx*: float
    eventText*: string

  NoUnderlyings* = object
    underlyingSymbol*: string
    underlyingSymbolSfx*: string
    underlyingSecurityID*: string
    underlyingSecurityIDSource*: string
    noUnderlyingSecurityAltID*: seq[NoUnderlyingSecurityAltID]
    underlyingProduct*: int
    underlyingCFICode*: string
    underlyingSecurityType*: string
    underlyingSecuritySubType*: string
    underlyingMaturityMonthYear*: string
    underlyingMaturityDate*: string
    underlyingPutOrCall*: int
    underlyingCouponPaymentDate*: string
    underlyingIssueDate*: string
    underlyingRepoCollateralSecurityType*: string
    underlyingRepurchaseTerm*: int
    underlyingRepurchaseRate*: float
    underlyingFactor*: string
    underlyingCreditRating*: string
    underlyingInstrRegistry*: string
    underlyingCountryOfIssue*: string
    underlyingStateOrProvinceOfIssue*: string
    underlyingLocaleOfIssue*: string
    underlyingRedemptionDate*: string
    underlyingStrikePrice*: float
    underlyingStrikeCurrency*: string
    underlyingOptAttribute*: char
    underlyingContractMultiplier*: string
    underlyingCouponRate*: float
    underlyingSecurityExchange*: string
    underlyingIssuer*: string
    encodedUnderlyingIssuerLen*: uint
    encodedUnderlyingIssuer*: string
    underlyingSecurityDesc*: string
    encodedUnderlyingSecurityDescLen*: uint
    encodedUnderlyingSecurityDesc*: string
    underlyingCPProgram*: string
    underlyingCPRegType*: string
    underlyingCurrency*: string
    underlyingQty*: uint
    underlyingPx*: float
    underlyingDirtyPrice*: float
    underlyingEndPrice*: float
    underlyingStartValue*: uint
    underlyingCurrentValue*: uint
    underlyingEndValue*: uint
    noUnderlyingStips*: seq[NoUnderlyingStips]
    prevClosePx*: float
    clOrdID*: string
    secondaryClOrdID*: string
    side*: char
    price*: float
    currency*: string
    text*: string
    encodedTextLen*: uint
    encodedText*: string
    underlyingSettlPrice*: float
    underlyingSettlPriceType*: int
    collAction*: int

  NoLegs* = object
    legSymbol*: string
    legSymbolSfx*: string
    legSecurityID*: string
    legSecurityIDSource*: string
    noLegSecurityAltID*: seq[NoLegSecurityAltID]
    legProduct*: int
    legCFICode*: string
    legSecurityType*: string
    legSecuritySubType*: string
    legMaturityMonthYear*: string
    legMaturityDate*: string
    legCouponPaymentDate*: string
    legIssueDate*: string
    legRepoCollateralSecurityType*: string
    legRepurchaseTerm*: int
    legRepurchaseRate*: float
    legFactor*: string
    legCreditRating*: string
    legInstrRegistry*: string
    legCountryOfIssue*: string
    legStateOrProvinceOfIssue*: string
    legLocaleOfIssue*: string
    legRedemptionDate*: string
    legStrikePrice*: float
    legStrikeCurrency*: string
    legOptAttribute*: char
    legContractMultiplier*: string
    legCouponRate*: float
    legSecurityExchange*: string
    legIssuer*: string
    encodedLegIssuerLen*: uint
    encodedLegIssuer*: string
    legSecurityDesc*: string
    encodedLegSecurityDescLen*: uint
    encodedLegSecurityDesc*: string
    legRatioQty*: string
    legSide*: char
    legCurrency*: string
    legPool*: string
    legDatedDate*: string
    legContractSettlMonth*: string
    legInterestAccrualDate*: string
    legIOIQty*: string
    noLegStipulations*: seq[NoLegStipulations]
    legQty*: uint
    legSwapType*: int
    legPositionEffect*: char
    legCoveredOrUncovered*: int
    noNestedPartyIDs*: seq[NoNestedPartyIDs]
    legRefID*: string
    legPrice*: float
    legSettlType*: char
    legSettlDate*: string
    legLastPx*: float
    legBenchmarkCurveCurrency*: string
    legBenchmarkCurveName*: string
    legBenchmarkCurvePoint*: string
    legBenchmarkPrice*: float
    legBenchmarkPriceType*: int
    legPriceType*: int
    legBidPx*: float
    legOfferPx*: float
    noLegAllocs*: seq[NoLegAllocs]

  NoCapacities* = object
    orderCapacity*: char
    orderRestrictions*: string
    orderCapacityQty*: uint

  NoPositions* = object
    posType*: string
    longQty*: uint
    shortQty*: uint
    posQtyStatus*: int
    noNestedPartyIDs*: seq[NoNestedPartyIDs]

  NoLegStipulations* = object
    legStipulationType*: string
    legStipulationValue*: string

  NoMiscFees* = object
    miscFeeAmt*: uint
    miscFeeCurr*: string
    miscFeeType*: char
    miscFeeBasis*: int

  NoClearingInstructions* = object
    clearingInstruction*: int

  NoDlvyInst* = object
    settlInstSource*: char
    dlvyInstType*: char
    noSettlPartyIDs*: seq[NoSettlPartyIDs]

  NoNestedPartySubIDs* = object
    nestedPartySubID*: string
    nestedPartySubIDType*: int

  NoNestedPartyIDs* = object
    nestedPartyID*: string
    nestedPartyIDSource*: char
    nestedPartyRole*: int
    noNestedPartySubIDs*: seq[NoNestedPartySubIDs]

  NoTrades* = object
    tradeReportID*: string
    secondaryTradeReportID*: string

  NoCollInquiryQualifier* = object
    collInquiryQualifier*: int

  NoSettlPartySubIDs* = object
    settlPartySubID*: string
    settlPartySubIDType*: int

  NoSettlPartyIDs* = object
    settlPartyID*: string
    settlPartyIDSource*: char
    settlPartyRole*: int
    noSettlPartySubIDs*: seq[NoSettlPartySubIDs]

  NoCompIDs* = object
    refCompID*: string
    refSubID*: string
    locationID*: string
    deskID*: string
    statusValue*: int
    statusText*: string

  NoPartySubIDs* = object
    partySubID*: string
    partySubIDType*: int

  NoLegSecurityAltID* = object
    legSecurityAltID*: string
    legSecurityAltIDSource*: string

  NoUnderlyingSecurityAltID* = object
    underlyingSecurityAltID*: string
    underlyingSecurityAltIDSource*: string

  NoUnderlyingStips* = object
    underlyingStipType*: string
    underlyingStipValue*: string

  NoNested2PartySubIDs* = object
    nested2PartySubID*: string
    nested2PartySubIDType*: int

  NoNested2PartyIDs* = object
    nested2PartyID*: string
    nested2PartyIDSource*: char
    nested2PartyRole*: int
    noNested2PartySubIDs*: seq[NoNested2PartySubIDs]

  MsgTypeKind* = enum
    mt0, mt1, mt2, mt3, mt4, mt5, mt6, mt7, mt8, mt9, mtA, mtB, mtC, mtD, mtE, mtF, mtG, mtH, mtJ, mtK, mtL, mtM, mtN, mtP, mtQ, mtR, mtS, mtT, mtV, mtW, mtX, mtY, mtZ, mtALow, mtBLow, mtCLow, mtDLow, mtELow, mtFLow, mtGLow, mtHLow, mtILow, mtJLow, mtKLow, mtLLow, mtMLow, mtNLow, mtOLow, mtPLow, mtQLow, mtRLow, mtSLow, mtTLow, mtULow, mtVLow, mtWLow, mtXLow, mtYLow, mtZLow, mtAA, mtAB, mtAC, mtAD, mtAE, mtAF, mtAG, mtAH, mtAI, mtAJ, mtAK, mtAL, mtAM, mtAN, mtAO, mtAP, mtAQ, mtAR, mtAS, mtAT, mtAU, mtAV, mtAW, mtAX, mtAY, mtAZ, mtBA, mtBB, mtBC, mtBD, mtBE, mtBF, mtBG, mtBH

  Fix44* = object
    beginString: string
    bodyLength: uint
    senderCompID: string
    targetCompID: string
    onBehalfOfCompID: string
    deliverToCompID: string
    secureDataLen: uint
    secureData: string
    msgSeqNum: uint
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
    lastMsgSeqNumProcessed: uint
    noHops: seq[NoHops]
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
      t3EncodedTextLen: uint
      t3EncodedText: string
    of mt4:
      t4GapFillFlag: bool
      t4NewSeqNo: uint
    of mt5:
      t5Text: string
      t5EncodedTextLen: uint
      t5EncodedText: string
    of mt6:
      t6IOIID: string
      t6IOITransType: char
      t6IOIRefID: string
      t6Symbol: string
      t6SymbolSfx: string
      t6SecurityID: string
      t6SecurityIDSource: string
      t6NoSecurityAltID: seq[NoSecurityAltID]
      t6Product: int
      t6CFICode: string
      t6SecurityType: string
      t6SecuritySubType: string
      t6MaturityMonthYear: string
      t6MaturityDate: string
      t6PutOrCall: int
      t6CouponPaymentDate: string
      t6IssueDate: string
      t6RepoCollateralSecurityType: string
      t6RepurchaseTerm: int
      t6RepurchaseRate: float
      t6Factor: string
      t6CreditRating: string
      t6InstrRegistry: string
      t6CountryOfIssue: string
      t6StateOrProvinceOfIssue: string
      t6LocaleOfIssue: string
      t6RedemptionDate: string
      t6StrikePrice: float
      t6StrikeCurrency: string
      t6OptAttribute: char
      t6ContractMultiplier: string
      t6CouponRate: float
      t6SecurityExchange: string
      t6Issuer: string
      t6EncodedIssuerLen: uint
      t6EncodedIssuer: string
      t6SecurityDesc: string
      t6EncodedSecurityDescLen: uint
      t6EncodedSecurityDesc: string
      t6Pool: string
      t6ContractSettlMonth: string
      t6CPProgram: int
      t6CPRegType: string
      t6NoEvents: seq[NoEvents]
      t6DatedDate: string
      t6InterestAccrualDate: string
      t6AgreementDesc: string
      t6AgreementID: string
      t6AgreementDate: string
      t6AgreementCurrency: string
      t6TerminationType: int
      t6StartDate: string
      t6EndDate: string
      t6DeliveryType: int
      t6MarginRatio: float
      t6NoUnderlyings: seq[NoUnderlyings]
      t6Side: char
      t6QtyType: int
      t6OrderQty: uint
      t6CashOrderQty: uint
      t6OrderPercent: float
      t6RoundingDirection: char
      t6RoundingModulus: string
      t6IOIQty: string
      t6Currency: string
      t6NoStipulations: seq[NoStipulations]
      t6NoLegs: seq[NoLegs]
      t6PriceType: int
      t6Price: float
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
      t6Spread: float
      t6BenchmarkCurveCurrency: string
      t6BenchmarkCurveName: string
      t6BenchmarkCurvePoint: string
      t6BenchmarkPrice: float
      t6BenchmarkPriceType: int
      t6BenchmarkSecurityID: string
      t6BenchmarkSecurityIDSource: string
      t6YieldType: string
      t6Yield: float
      t6YieldCalcDate: string
      t6YieldRedemptionDate: string
      t6YieldRedemptionPrice: float
      t6YieldRedemptionPriceType: int
    of mt7:
      t7AdvId: string
      t7AdvTransType: string
      t7AdvRefID: string
      t7Symbol: string
      t7SymbolSfx: string
      t7SecurityID: string
      t7SecurityIDSource: string
      t7NoSecurityAltID: seq[NoSecurityAltID]
      t7Product: int
      t7CFICode: string
      t7SecurityType: string
      t7SecuritySubType: string
      t7MaturityMonthYear: string
      t7MaturityDate: string
      t7PutOrCall: int
      t7CouponPaymentDate: string
      t7IssueDate: string
      t7RepoCollateralSecurityType: string
      t7RepurchaseTerm: int
      t7RepurchaseRate: float
      t7Factor: string
      t7CreditRating: string
      t7InstrRegistry: string
      t7CountryOfIssue: string
      t7StateOrProvinceOfIssue: string
      t7LocaleOfIssue: string
      t7RedemptionDate: string
      t7StrikePrice: float
      t7StrikeCurrency: string
      t7OptAttribute: char
      t7ContractMultiplier: string
      t7CouponRate: float
      t7SecurityExchange: string
      t7Issuer: string
      t7EncodedIssuerLen: uint
      t7EncodedIssuer: string
      t7SecurityDesc: string
      t7EncodedSecurityDescLen: uint
      t7EncodedSecurityDesc: string
      t7Pool: string
      t7ContractSettlMonth: string
      t7CPProgram: int
      t7CPRegType: string
      t7NoEvents: seq[NoEvents]
      t7DatedDate: string
      t7InterestAccrualDate: string
      t7NoLegs: seq[NoLegs]
      t7NoUnderlyings: seq[NoUnderlyings]
      t7AdvSide: char
      t7Quantity: uint
      t7QtyType: int
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
      t7TradingSessionSubID: string
    of mt8:
      t8OrderID: string
      t8SecondaryOrderID: string
      t8SecondaryClOrdID: string
      t8SecondaryExecID: string
      t8ClOrdID: string
      t8OrigClOrdID: string
      t8ClOrdLinkID: string
      t8QuoteRespID: string
      t8OrdStatusReqID: string
      t8MassStatusReqID: string
      t8TotNumReports: int
      t8LastRptRequested: bool
      t8NoPartyIDs: seq[NoPartyIDs]
      t8TradeOriginationDate: string
      t8NoContraBrokers: seq[NoContraBrokers]
      t8ListID: string
      t8CrossID: string
      t8OrigCrossID: string
      t8CrossType: int
      t8ExecID: string
      t8ExecRefID: string
      t8ExecType: char
      t8OrdStatus: char
      t8WorkingIndicator: bool
      t8OrdRejReason: int
      t8ExecRestatementReason: int
      t8Account: string
      t8AcctIDSource: int
      t8AccountType: int
      t8DayBookingInst: char
      t8BookingUnit: char
      t8PreallocMethod: char
      t8SettlType: char
      t8SettlDate: string
      t8CashMargin: char
      t8ClearingFeeIndicator: string
      t8Symbol: string
      t8SymbolSfx: string
      t8SecurityID: string
      t8SecurityIDSource: string
      t8NoSecurityAltID: seq[NoSecurityAltID]
      t8Product: int
      t8CFICode: string
      t8SecurityType: string
      t8SecuritySubType: string
      t8MaturityMonthYear: string
      t8MaturityDate: string
      t8PutOrCall: int
      t8CouponPaymentDate: string
      t8IssueDate: string
      t8RepoCollateralSecurityType: string
      t8RepurchaseTerm: int
      t8RepurchaseRate: float
      t8Factor: string
      t8CreditRating: string
      t8InstrRegistry: string
      t8CountryOfIssue: string
      t8StateOrProvinceOfIssue: string
      t8LocaleOfIssue: string
      t8RedemptionDate: string
      t8StrikePrice: float
      t8StrikeCurrency: string
      t8OptAttribute: char
      t8ContractMultiplier: string
      t8CouponRate: float
      t8SecurityExchange: string
      t8Issuer: string
      t8EncodedIssuerLen: uint
      t8EncodedIssuer: string
      t8SecurityDesc: string
      t8EncodedSecurityDescLen: uint
      t8EncodedSecurityDesc: string
      t8Pool: string
      t8ContractSettlMonth: string
      t8CPProgram: int
      t8CPRegType: string
      t8NoEvents: seq[NoEvents]
      t8DatedDate: string
      t8InterestAccrualDate: string
      t8AgreementDesc: string
      t8AgreementID: string
      t8AgreementDate: string
      t8AgreementCurrency: string
      t8TerminationType: int
      t8StartDate: string
      t8EndDate: string
      t8DeliveryType: int
      t8MarginRatio: float
      t8NoUnderlyings: seq[NoUnderlyings]
      t8Side: char
      t8NoStipulations: seq[NoStipulations]
      t8QtyType: int
      t8OrderQty: uint
      t8CashOrderQty: uint
      t8OrderPercent: float
      t8RoundingDirection: char
      t8RoundingModulus: string
      t8OrdType: char
      t8PriceType: int
      t8Price: float
      t8StopPx: float
      t8PegOffsetValue: string
      t8PegMoveType: int
      t8PegOffsetType: int
      t8PegLimitType: int
      t8PegRoundDirection: int
      t8PegScope: int
      t8DiscretionInst: char
      t8DiscretionOffsetValue: string
      t8DiscretionMoveType: int
      t8DiscretionOffsetType: int
      t8DiscretionLimitType: int
      t8DiscretionRoundDirection: int
      t8DiscretionScope: int
      t8PeggedPrice: float
      t8DiscretionPrice: float
      t8TargetStrategy: int
      t8TargetStrategyParameters: string
      t8ParticipationRate: float
      t8TargetStrategyPerformance: string
      t8Currency: string
      t8ComplianceID: string
      t8SolicitedFlag: bool
      t8TimeInForce: char
      t8EffectiveTime: string
      t8ExpireDate: string
      t8ExpireTime: string
      t8ExecInst: string
      t8OrderCapacity: char
      t8OrderRestrictions: string
      t8CustOrderCapacity: int
      t8LastQty: uint
      t8UnderlyingLastQty: uint
      t8LastPx: float
      t8UnderlyingLastPx: float
      t8LastParPx: float
      t8LastSpotRate: float
      t8LastForwardPoints: float
      t8LastMkt: string
      t8TradingSessionID: string
      t8TradingSessionSubID: string
      t8TimeBracket: string
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
      t8CommCurrency: string
      t8FundRenewWaiv: char
      t8Spread: float
      t8BenchmarkCurveCurrency: string
      t8BenchmarkCurveName: string
      t8BenchmarkCurvePoint: string
      t8BenchmarkPrice: float
      t8BenchmarkPriceType: int
      t8BenchmarkSecurityID: string
      t8BenchmarkSecurityIDSource: string
      t8YieldType: string
      t8Yield: float
      t8YieldCalcDate: string
      t8YieldRedemptionDate: string
      t8YieldRedemptionPrice: float
      t8YieldRedemptionPriceType: int
      t8GrossTradeAmt: uint
      t8NumDaysInterest: int
      t8ExDate: string
      t8AccruedInterestRate: float
      t8AccruedInterestAmt: uint
      t8InterestAtMaturity: uint
      t8EndAccruedInterestAmt: uint
      t8StartCash: uint
      t8EndCash: uint
      t8TradedFlatSwitch: bool
      t8BasisFeatureDate: string
      t8BasisFeaturePrice: float
      t8Concession: uint
      t8TotalTakedown: uint
      t8NetMoney: uint
      t8SettlCurrAmt: uint
      t8SettlCurrency: string
      t8SettlCurrFxRate: string
      t8SettlCurrFxRateCalc: char
      t8HandlInst: char
      t8MinQty: uint
      t8MaxFloor: uint
      t8PositionEffect: char
      t8MaxShow: uint
      t8BookingType: int
      t8Text: string
      t8EncodedTextLen: uint
      t8EncodedText: string
      t8SettlDate2: string
      t8OrderQty2: uint
      t8LastForwardPoints2: float
      t8MultiLegReportingType: char
      t8CancellationRights: char
      t8MoneyLaunderingStatus: char
      t8RegistID: string
      t8Designation: string
      t8TransBkdTime: string
      t8ExecValuationPoint: string
      t8ExecPriceType: char
      t8ExecPriceAdjustment: string
      t8PriorityIndicator: int
      t8PriceImprovement: float
      t8LastLiquidityInd: int
      t8NoContAmts: seq[NoContAmts]
      t8NoLegs: seq[NoLegs]
      t8CopyMsgIndicator: bool
      t8NoMiscFees: seq[NoMiscFees]
    of mt9:
      t9OrderID: string
      t9SecondaryOrderID: string
      t9SecondaryClOrdID: string
      t9ClOrdID: string
      t9ClOrdLinkID: string
      t9OrigClOrdID: string
      t9OrdStatus: char
      t9WorkingIndicator: bool
      t9OrigOrdModTime: string
      t9ListID: string
      t9Account: string
      t9AcctIDSource: int
      t9AccountType: int
      t9TradeOriginationDate: string
      t9TradeDate: string
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
      aNextExpectedMsgSeqNum: uint
      aMaxMessageSize: uint
      aNoMsgTypes: seq[NoMsgTypes]
      aTestMessageIndicator: bool
      aUsername: string
      aPassword: string
    of mtB:
      bOrigTime: string
      bUrgency: char
      bHeadline: string
      bEncodedHeadlineLen: uint
      bEncodedHeadline: string
      bNoRoutingIDs: seq[NoRoutingIDs]
      bNoRelatedSym: seq[NoRelatedSym]
      bNoLegs: seq[NoLegs]
      bNoUnderlyings: seq[NoUnderlyings]
      bNoLinesOfText: seq[NoLinesOfText]
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
      cNoUnderlyings: seq[NoUnderlyings]
      cNoLegs: seq[NoLegs]
      cOrderID: string
      cClOrdID: string
      cNoLinesOfText: seq[NoLinesOfText]
      cRawDataLength: uint
      cRawData: string
    of mtD:
      dClOrdID: string
      dSecondaryClOrdID: string
      dClOrdLinkID: string
      dNoPartyIDs: seq[NoPartyIDs]
      dTradeOriginationDate: string
      dTradeDate: string
      dAccount: string
      dAcctIDSource: int
      dAccountType: int
      dDayBookingInst: char
      dBookingUnit: char
      dPreallocMethod: char
      dAllocID: string
      dNoAllocs: seq[NoAllocs]
      dSettlType: char
      dSettlDate: string
      dCashMargin: char
      dClearingFeeIndicator: string
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
      dSecurityIDSource: string
      dNoSecurityAltID: seq[NoSecurityAltID]
      dProduct: int
      dCFICode: string
      dSecurityType: string
      dSecuritySubType: string
      dMaturityMonthYear: string
      dMaturityDate: string
      dPutOrCall: int
      dCouponPaymentDate: string
      dIssueDate: string
      dRepoCollateralSecurityType: string
      dRepurchaseTerm: int
      dRepurchaseRate: float
      dFactor: string
      dCreditRating: string
      dInstrRegistry: string
      dCountryOfIssue: string
      dStateOrProvinceOfIssue: string
      dLocaleOfIssue: string
      dRedemptionDate: string
      dStrikePrice: float
      dStrikeCurrency: string
      dOptAttribute: char
      dContractMultiplier: string
      dCouponRate: float
      dSecurityExchange: string
      dIssuer: string
      dEncodedIssuerLen: uint
      dEncodedIssuer: string
      dSecurityDesc: string
      dEncodedSecurityDescLen: uint
      dEncodedSecurityDesc: string
      dPool: string
      dContractSettlMonth: string
      dCPProgram: int
      dCPRegType: string
      dNoEvents: seq[NoEvents]
      dDatedDate: string
      dInterestAccrualDate: string
      dAgreementDesc: string
      dAgreementID: string
      dAgreementDate: string
      dAgreementCurrency: string
      dTerminationType: int
      dStartDate: string
      dEndDate: string
      dDeliveryType: int
      dMarginRatio: float
      dNoUnderlyings: seq[NoUnderlyings]
      dPrevClosePx: float
      dSide: char
      dLocateReqd: bool
      dTransactTime: string
      dNoStipulations: seq[NoStipulations]
      dQtyType: int
      dOrderQty: uint
      dCashOrderQty: uint
      dOrderPercent: float
      dRoundingDirection: char
      dRoundingModulus: string
      dOrdType: char
      dPriceType: int
      dPrice: float
      dStopPx: float
      dSpread: float
      dBenchmarkCurveCurrency: string
      dBenchmarkCurveName: string
      dBenchmarkCurvePoint: string
      dBenchmarkPrice: float
      dBenchmarkPriceType: int
      dBenchmarkSecurityID: string
      dBenchmarkSecurityIDSource: string
      dYieldType: string
      dYield: float
      dYieldCalcDate: string
      dYieldRedemptionDate: string
      dYieldRedemptionPrice: float
      dYieldRedemptionPriceType: int
      dCurrency: string
      dComplianceID: string
      dSolicitedFlag: bool
      dIOIID: string
      dQuoteID: string
      dTimeInForce: char
      dEffectiveTime: string
      dExpireDate: string
      dExpireTime: string
      dGTBookingInst: int
      dCommission: uint
      dCommType: char
      dCommCurrency: string
      dFundRenewWaiv: char
      dOrderCapacity: char
      dOrderRestrictions: string
      dCustOrderCapacity: int
      dForexReq: bool
      dSettlCurrency: string
      dBookingType: int
      dText: string
      dEncodedTextLen: uint
      dEncodedText: string
      dSettlDate2: string
      dOrderQty2: uint
      dPrice2: float
      dPositionEffect: char
      dCoveredOrUncovered: int
      dMaxShow: uint
      dPegOffsetValue: string
      dPegMoveType: int
      dPegOffsetType: int
      dPegLimitType: int
      dPegRoundDirection: int
      dPegScope: int
      dDiscretionInst: char
      dDiscretionOffsetValue: string
      dDiscretionMoveType: int
      dDiscretionOffsetType: int
      dDiscretionLimitType: int
      dDiscretionRoundDirection: int
      dDiscretionScope: int
      dTargetStrategy: int
      dTargetStrategyParameters: string
      dParticipationRate: float
      dCancellationRights: char
      dMoneyLaunderingStatus: char
      dRegistID: string
      dDesignation: string
    of mtE:
      eListID: string
      eBidID: string
      eClientBidID: string
      eProgRptReqs: int
      eBidType: int
      eProgPeriodInterval: int
      eCancellationRights: char
      eMoneyLaunderingStatus: char
      eRegistID: string
      eListExecInstType: char
      eListExecInst: string
      eEncodedListExecInstLen: uint
      eEncodedListExecInst: string
      eAllowableOneSidednessPct: float
      eAllowableOneSidednessValue: uint
      eAllowableOneSidednessCurr: string
      eTotNoOrders: int
      eLastFragment: bool
      eNoOrders: seq[NoOrders]
    of mtF:
      fOrigClOrdID: string
      fOrderID: string
      fClOrdID: string
      fSecondaryClOrdID: string
      fClOrdLinkID: string
      fListID: string
      fOrigOrdModTime: string
      fAccount: string
      fAcctIDSource: int
      fAccountType: int
      fNoPartyIDs: seq[NoPartyIDs]
      fSymbol: string
      fSymbolSfx: string
      fSecurityID: string
      fSecurityIDSource: string
      fNoSecurityAltID: seq[NoSecurityAltID]
      fProduct: int
      fCFICode: string
      fSecurityType: string
      fSecuritySubType: string
      fMaturityMonthYear: string
      fMaturityDate: string
      fPutOrCall: int
      fCouponPaymentDate: string
      fIssueDate: string
      fRepoCollateralSecurityType: string
      fRepurchaseTerm: int
      fRepurchaseRate: float
      fFactor: string
      fCreditRating: string
      fInstrRegistry: string
      fCountryOfIssue: string
      fStateOrProvinceOfIssue: string
      fLocaleOfIssue: string
      fRedemptionDate: string
      fStrikePrice: float
      fStrikeCurrency: string
      fOptAttribute: char
      fContractMultiplier: string
      fCouponRate: float
      fSecurityExchange: string
      fIssuer: string
      fEncodedIssuerLen: uint
      fEncodedIssuer: string
      fSecurityDesc: string
      fEncodedSecurityDescLen: uint
      fEncodedSecurityDesc: string
      fPool: string
      fContractSettlMonth: string
      fCPProgram: int
      fCPRegType: string
      fNoEvents: seq[NoEvents]
      fDatedDate: string
      fInterestAccrualDate: string
      fAgreementDesc: string
      fAgreementID: string
      fAgreementDate: string
      fAgreementCurrency: string
      fTerminationType: int
      fStartDate: string
      fEndDate: string
      fDeliveryType: int
      fMarginRatio: float
      fNoUnderlyings: seq[NoUnderlyings]
      fSide: char
      fTransactTime: string
      fOrderQty: uint
      fCashOrderQty: uint
      fOrderPercent: float
      fRoundingDirection: char
      fRoundingModulus: string
      fComplianceID: string
      fText: string
      fEncodedTextLen: uint
      fEncodedText: string
    of mtG:
      gOrderID: string
      gNoPartyIDs: seq[NoPartyIDs]
      gTradeOriginationDate: string
      gTradeDate: string
      gOrigClOrdID: string
      gClOrdID: string
      gSecondaryClOrdID: string
      gClOrdLinkID: string
      gListID: string
      gOrigOrdModTime: string
      gAccount: string
      gAcctIDSource: int
      gAccountType: int
      gDayBookingInst: char
      gBookingUnit: char
      gPreallocMethod: char
      gAllocID: string
      gNoAllocs: seq[NoAllocs]
      gSettlType: char
      gSettlDate: string
      gCashMargin: char
      gClearingFeeIndicator: string
      gHandlInst: char
      gExecInst: string
      gMinQty: uint
      gMaxFloor: uint
      gExDestination: string
      gNoTradingSessions: seq[NoTradingSessions]
      gSymbol: string
      gSymbolSfx: string
      gSecurityID: string
      gSecurityIDSource: string
      gNoSecurityAltID: seq[NoSecurityAltID]
      gProduct: int
      gCFICode: string
      gSecurityType: string
      gSecuritySubType: string
      gMaturityMonthYear: string
      gMaturityDate: string
      gPutOrCall: int
      gCouponPaymentDate: string
      gIssueDate: string
      gRepoCollateralSecurityType: string
      gRepurchaseTerm: int
      gRepurchaseRate: float
      gFactor: string
      gCreditRating: string
      gInstrRegistry: string
      gCountryOfIssue: string
      gStateOrProvinceOfIssue: string
      gLocaleOfIssue: string
      gRedemptionDate: string
      gStrikePrice: float
      gStrikeCurrency: string
      gOptAttribute: char
      gContractMultiplier: string
      gCouponRate: float
      gSecurityExchange: string
      gIssuer: string
      gEncodedIssuerLen: uint
      gEncodedIssuer: string
      gSecurityDesc: string
      gEncodedSecurityDescLen: uint
      gEncodedSecurityDesc: string
      gPool: string
      gContractSettlMonth: string
      gCPProgram: int
      gCPRegType: string
      gNoEvents: seq[NoEvents]
      gDatedDate: string
      gInterestAccrualDate: string
      gAgreementDesc: string
      gAgreementID: string
      gAgreementDate: string
      gAgreementCurrency: string
      gTerminationType: int
      gStartDate: string
      gEndDate: string
      gDeliveryType: int
      gMarginRatio: float
      gNoUnderlyings: seq[NoUnderlyings]
      gSide: char
      gTransactTime: string
      gQtyType: int
      gOrderQty: uint
      gCashOrderQty: uint
      gOrderPercent: float
      gRoundingDirection: char
      gRoundingModulus: string
      gOrdType: char
      gPriceType: int
      gPrice: float
      gStopPx: float
      gSpread: float
      gBenchmarkCurveCurrency: string
      gBenchmarkCurveName: string
      gBenchmarkCurvePoint: string
      gBenchmarkPrice: float
      gBenchmarkPriceType: int
      gBenchmarkSecurityID: string
      gBenchmarkSecurityIDSource: string
      gYieldType: string
      gYield: float
      gYieldCalcDate: string
      gYieldRedemptionDate: string
      gYieldRedemptionPrice: float
      gYieldRedemptionPriceType: int
      gPegOffsetValue: string
      gPegMoveType: int
      gPegOffsetType: int
      gPegLimitType: int
      gPegRoundDirection: int
      gPegScope: int
      gDiscretionInst: char
      gDiscretionOffsetValue: string
      gDiscretionMoveType: int
      gDiscretionOffsetType: int
      gDiscretionLimitType: int
      gDiscretionRoundDirection: int
      gDiscretionScope: int
      gTargetStrategy: int
      gTargetStrategyParameters: string
      gParticipationRate: float
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
      gCommCurrency: string
      gFundRenewWaiv: char
      gOrderCapacity: char
      gOrderRestrictions: string
      gCustOrderCapacity: int
      gForexReq: bool
      gSettlCurrency: string
      gBookingType: int
      gText: string
      gEncodedTextLen: uint
      gEncodedText: string
      gSettlDate2: string
      gOrderQty2: uint
      gPrice2: float
      gPositionEffect: char
      gCoveredOrUncovered: int
      gMaxShow: uint
      gLocateReqd: bool
      gCancellationRights: char
      gMoneyLaunderingStatus: char
      gRegistID: string
      gDesignation: string
    of mtH:
      hOrderID: string
      hClOrdID: string
      hSecondaryClOrdID: string
      hClOrdLinkID: string
      hNoPartyIDs: seq[NoPartyIDs]
      hOrdStatusReqID: string
      hAccount: string
      hAcctIDSource: int
      hSymbol: string
      hSymbolSfx: string
      hSecurityID: string
      hSecurityIDSource: string
      hNoSecurityAltID: seq[NoSecurityAltID]
      hProduct: int
      hCFICode: string
      hSecurityType: string
      hSecuritySubType: string
      hMaturityMonthYear: string
      hMaturityDate: string
      hPutOrCall: int
      hCouponPaymentDate: string
      hIssueDate: string
      hRepoCollateralSecurityType: string
      hRepurchaseTerm: int
      hRepurchaseRate: float
      hFactor: string
      hCreditRating: string
      hInstrRegistry: string
      hCountryOfIssue: string
      hStateOrProvinceOfIssue: string
      hLocaleOfIssue: string
      hRedemptionDate: string
      hStrikePrice: float
      hStrikeCurrency: string
      hOptAttribute: char
      hContractMultiplier: string
      hCouponRate: float
      hSecurityExchange: string
      hIssuer: string
      hEncodedIssuerLen: uint
      hEncodedIssuer: string
      hSecurityDesc: string
      hEncodedSecurityDescLen: uint
      hEncodedSecurityDesc: string
      hPool: string
      hContractSettlMonth: string
      hCPProgram: int
      hCPRegType: string
      hNoEvents: seq[NoEvents]
      hDatedDate: string
      hInterestAccrualDate: string
      hAgreementDesc: string
      hAgreementID: string
      hAgreementDate: string
      hAgreementCurrency: string
      hTerminationType: int
      hStartDate: string
      hEndDate: string
      hDeliveryType: int
      hMarginRatio: float
      hNoUnderlyings: seq[NoUnderlyings]
      hSide: char
    of mtJ:
      jAllocID: string
      jAllocTransType: char
      jAllocType: int
      jSecondaryAllocID: string
      jRefAllocID: string
      jAllocCancReplaceReason: int
      jAllocIntermedReqType: int
      jAllocLinkID: string
      jAllocLinkType: int
      jBookingRefID: string
      jAllocNoOrdersType: int
      jNoOrders: seq[NoOrders]
      jNoExecs: seq[NoExecs]
      jPreviouslyReported: bool
      jReversalIndicator: bool
      jMatchType: string
      jSide: char
      jSymbol: string
      jSymbolSfx: string
      jSecurityID: string
      jSecurityIDSource: string
      jNoSecurityAltID: seq[NoSecurityAltID]
      jProduct: int
      jCFICode: string
      jSecurityType: string
      jSecuritySubType: string
      jMaturityMonthYear: string
      jMaturityDate: string
      jPutOrCall: int
      jCouponPaymentDate: string
      jIssueDate: string
      jRepoCollateralSecurityType: string
      jRepurchaseTerm: int
      jRepurchaseRate: float
      jFactor: string
      jCreditRating: string
      jInstrRegistry: string
      jCountryOfIssue: string
      jStateOrProvinceOfIssue: string
      jLocaleOfIssue: string
      jRedemptionDate: string
      jStrikePrice: float
      jStrikeCurrency: string
      jOptAttribute: char
      jContractMultiplier: string
      jCouponRate: float
      jSecurityExchange: string
      jIssuer: string
      jEncodedIssuerLen: uint
      jEncodedIssuer: string
      jSecurityDesc: string
      jEncodedSecurityDescLen: uint
      jEncodedSecurityDesc: string
      jPool: string
      jContractSettlMonth: string
      jCPProgram: int
      jCPRegType: string
      jNoEvents: seq[NoEvents]
      jDatedDate: string
      jInterestAccrualDate: string
      jDeliveryForm: int
      jPctAtRisk: float
      jNoInstrAttrib: seq[NoInstrAttrib]
      jAgreementDesc: string
      jAgreementID: string
      jAgreementDate: string
      jAgreementCurrency: string
      jTerminationType: int
      jStartDate: string
      jEndDate: string
      jDeliveryType: int
      jMarginRatio: float
      jNoUnderlyings: seq[NoUnderlyings]
      jNoLegs: seq[NoLegs]
      jQuantity: uint
      jQtyType: int
      jLastMkt: string
      jTradeOriginationDate: string
      jTradingSessionID: string
      jTradingSessionSubID: string
      jPriceType: int
      jAvgPx: float
      jAvgParPx: float
      jSpread: float
      jBenchmarkCurveCurrency: string
      jBenchmarkCurveName: string
      jBenchmarkCurvePoint: string
      jBenchmarkPrice: float
      jBenchmarkPriceType: int
      jBenchmarkSecurityID: string
      jBenchmarkSecurityIDSource: string
      jCurrency: string
      jAvgPxPrecision: int
      jNoPartyIDs: seq[NoPartyIDs]
      jTradeDate: string
      jTransactTime: string
      jSettlType: char
      jSettlDate: string
      jBookingType: int
      jGrossTradeAmt: uint
      jConcession: uint
      jTotalTakedown: uint
      jNetMoney: uint
      jPositionEffect: char
      jAutoAcceptIndicator: bool
      jText: string
      jEncodedTextLen: uint
      jEncodedText: string
      jNumDaysInterest: int
      jAccruedInterestRate: float
      jAccruedInterestAmt: uint
      jTotalAccruedInterestAmt: uint
      jInterestAtMaturity: uint
      jEndAccruedInterestAmt: uint
      jStartCash: uint
      jEndCash: uint
      jLegalConfirm: bool
      jNoStipulations: seq[NoStipulations]
      jYieldType: string
      jYield: float
      jYieldCalcDate: string
      jYieldRedemptionDate: string
      jYieldRedemptionPrice: float
      jYieldRedemptionPriceType: int
      jTotNoAllocs: int
      jLastFragment: bool
      jNoAllocs: seq[NoAllocs]
    of mtK:
      kListID: string
      kTransactTime: string
      kTradeOriginationDate: string
      kTradeDate: string
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
      nLastFragment: bool
      nNoOrders: seq[NoOrders]
    of mtP:
      pAllocID: string
      pNoPartyIDs: seq[NoPartyIDs]
      pSecondaryAllocID: string
      pTradeDate: string
      pTransactTime: string
      pAllocStatus: int
      pAllocRejCode: int
      pAllocType: int
      pAllocIntermedReqType: int
      pMatchStatus: char
      pProduct: int
      pSecurityType: string
      pText: string
      pEncodedTextLen: uint
      pEncodedText: string
      pNoAllocs: seq[NoAllocs]
    of mtQ:
      qOrderID: string
      qSecondaryOrderID: string
      qExecID: string
      qDKReason: char
      qSymbol: string
      qSymbolSfx: string
      qSecurityID: string
      qSecurityIDSource: string
      qNoSecurityAltID: seq[NoSecurityAltID]
      qProduct: int
      qCFICode: string
      qSecurityType: string
      qSecuritySubType: string
      qMaturityMonthYear: string
      qMaturityDate: string
      qPutOrCall: int
      qCouponPaymentDate: string
      qIssueDate: string
      qRepoCollateralSecurityType: string
      qRepurchaseTerm: int
      qRepurchaseRate: float
      qFactor: string
      qCreditRating: string
      qInstrRegistry: string
      qCountryOfIssue: string
      qStateOrProvinceOfIssue: string
      qLocaleOfIssue: string
      qRedemptionDate: string
      qStrikePrice: float
      qStrikeCurrency: string
      qOptAttribute: char
      qContractMultiplier: string
      qCouponRate: float
      qSecurityExchange: string
      qIssuer: string
      qEncodedIssuerLen: uint
      qEncodedIssuer: string
      qSecurityDesc: string
      qEncodedSecurityDescLen: uint
      qEncodedSecurityDesc: string
      qPool: string
      qContractSettlMonth: string
      qCPProgram: int
      qCPRegType: string
      qNoEvents: seq[NoEvents]
      qDatedDate: string
      qInterestAccrualDate: string
      qNoUnderlyings: seq[NoUnderlyings]
      qNoLegs: seq[NoLegs]
      qSide: char
      qOrderQty: uint
      qCashOrderQty: uint
      qOrderPercent: float
      qRoundingDirection: char
      qRoundingModulus: string
      qLastQty: uint
      qLastPx: float
      qText: string
      qEncodedTextLen: uint
      qEncodedText: string
    of mtR:
      rQuoteReqID: string
      rRFQReqID: string
      rClOrdID: string
      rOrderCapacity: char
      rNoRelatedSym: seq[NoRelatedSym]
      rText: string
      rEncodedTextLen: uint
      rEncodedText: string
    of mtS:
      sQuoteReqID: string
      sQuoteID: string
      sQuoteRespID: string
      sQuoteType: int
      sNoQuoteQualifiers: seq[NoQuoteQualifiers]
      sQuoteResponseLevel: int
      sNoPartyIDs: seq[NoPartyIDs]
      sTradingSessionID: string
      sTradingSessionSubID: string
      sSymbol: string
      sSymbolSfx: string
      sSecurityID: string
      sSecurityIDSource: string
      sNoSecurityAltID: seq[NoSecurityAltID]
      sProduct: int
      sCFICode: string
      sSecurityType: string
      sSecuritySubType: string
      sMaturityMonthYear: string
      sMaturityDate: string
      sPutOrCall: int
      sCouponPaymentDate: string
      sIssueDate: string
      sRepoCollateralSecurityType: string
      sRepurchaseTerm: int
      sRepurchaseRate: float
      sFactor: string
      sCreditRating: string
      sInstrRegistry: string
      sCountryOfIssue: string
      sStateOrProvinceOfIssue: string
      sLocaleOfIssue: string
      sRedemptionDate: string
      sStrikePrice: float
      sStrikeCurrency: string
      sOptAttribute: char
      sContractMultiplier: string
      sCouponRate: float
      sSecurityExchange: string
      sIssuer: string
      sEncodedIssuerLen: uint
      sEncodedIssuer: string
      sSecurityDesc: string
      sEncodedSecurityDescLen: uint
      sEncodedSecurityDesc: string
      sPool: string
      sContractSettlMonth: string
      sCPProgram: int
      sCPRegType: string
      sNoEvents: seq[NoEvents]
      sDatedDate: string
      sInterestAccrualDate: string
      sAgreementDesc: string
      sAgreementID: string
      sAgreementDate: string
      sAgreementCurrency: string
      sTerminationType: int
      sStartDate: string
      sEndDate: string
      sDeliveryType: int
      sMarginRatio: float
      sNoUnderlyings: seq[NoUnderlyings]
      sSide: char
      sOrderQty: uint
      sCashOrderQty: uint
      sOrderPercent: float
      sRoundingDirection: char
      sRoundingModulus: string
      sSettlType: char
      sSettlDate: string
      sSettlDate2: string
      sOrderQty2: uint
      sCurrency: string
      sNoStipulations: seq[NoStipulations]
      sAccount: string
      sAcctIDSource: int
      sAccountType: int
      sNoLegs: seq[NoLegs]
      sBidPx: float
      sOfferPx: float
      sMktBidPx: float
      sMktOfferPx: float
      sMinBidSize: uint
      sBidSize: uint
      sMinOfferSize: uint
      sOfferSize: uint
      sValidUntilTime: string
      sBidSpotRate: float
      sOfferSpotRate: float
      sBidForwardPoints: float
      sOfferForwardPoints: float
      sMidPx: float
      sBidYield: float
      sMidYield: float
      sOfferYield: float
      sTransactTime: string
      sOrdType: char
      sBidForwardPoints2: float
      sOfferForwardPoints2: float
      sSettlCurrBidFxRate: string
      sSettlCurrOfferFxRate: string
      sSettlCurrFxRateCalc: char
      sCommType: char
      sCommission: uint
      sCustOrderCapacity: int
      sExDestination: string
      sOrderCapacity: char
      sPriceType: int
      sSpread: float
      sBenchmarkCurveCurrency: string
      sBenchmarkCurveName: string
      sBenchmarkCurvePoint: string
      sBenchmarkPrice: float
      sBenchmarkPriceType: int
      sBenchmarkSecurityID: string
      sBenchmarkSecurityIDSource: string
      sYieldType: string
      sYield: float
      sYieldCalcDate: string
      sYieldRedemptionDate: string
      sYieldRedemptionPrice: float
      sYieldRedemptionPriceType: int
      sText: string
      sEncodedTextLen: uint
      sEncodedText: string
    of mtT:
      tSettlInstMsgID: string
      tSettlInstReqID: string
      tSettlInstMode: char
      tSettlInstReqRejCode: int
      tText: string
      tEncodedTextLen: uint
      tEncodedText: string
      tClOrdID: string
      tTransactTime: string
      tNoSettlInst: seq[NoSettlInst]
    of mtV:
      vMDReqID: string
      vSubscriptionRequestType: char
      vMarketDepth: int
      vMDUpdateType: int
      vAggregatedBook: bool
      vOpenCloseSettlFlag: string
      vScope: string
      vMDImplicitDelete: bool
      vNoMDEntryTypes: seq[NoMDEntryTypes]
      vNoRelatedSym: seq[NoRelatedSym]
      vNoTradingSessions: seq[NoTradingSessions]
      vApplQueueAction: int
      vApplQueueMax: int
    of mtW:
      wMDReqID: string
      wSymbol: string
      wSymbolSfx: string
      wSecurityID: string
      wSecurityIDSource: string
      wNoSecurityAltID: seq[NoSecurityAltID]
      wProduct: int
      wCFICode: string
      wSecurityType: string
      wSecuritySubType: string
      wMaturityMonthYear: string
      wMaturityDate: string
      wPutOrCall: int
      wCouponPaymentDate: string
      wIssueDate: string
      wRepoCollateralSecurityType: string
      wRepurchaseTerm: int
      wRepurchaseRate: float
      wFactor: string
      wCreditRating: string
      wInstrRegistry: string
      wCountryOfIssue: string
      wStateOrProvinceOfIssue: string
      wLocaleOfIssue: string
      wRedemptionDate: string
      wStrikePrice: float
      wStrikeCurrency: string
      wOptAttribute: char
      wContractMultiplier: string
      wCouponRate: float
      wSecurityExchange: string
      wIssuer: string
      wEncodedIssuerLen: uint
      wEncodedIssuer: string
      wSecurityDesc: string
      wEncodedSecurityDescLen: uint
      wEncodedSecurityDesc: string
      wPool: string
      wContractSettlMonth: string
      wCPProgram: int
      wCPRegType: string
      wNoEvents: seq[NoEvents]
      wDatedDate: string
      wInterestAccrualDate: string
      wNoUnderlyings: seq[NoUnderlyings]
      wNoLegs: seq[NoLegs]
      wFinancialStatus: string
      wCorporateAction: string
      wNetChgPrevDay: float
      wNoMDEntries: seq[NoMDEntries]
      wApplQueueDepth: int
      wApplQueueResolution: int
    of mtX:
      xMDReqID: string
      xNoMDEntries: seq[NoMDEntries]
      xApplQueueDepth: int
      xApplQueueResolution: int
    of mtY:
      yMDReqID: string
      yMDReqRejReason: char
      yNoAltMDSource: seq[NoAltMDSource]
      yText: string
      yEncodedTextLen: uint
      yEncodedText: string
    of mtZ:
      zQuoteReqID: string
      zQuoteID: string
      zQuoteCancelType: int
      zQuoteResponseLevel: int
      zNoPartyIDs: seq[NoPartyIDs]
      zAccount: string
      zAcctIDSource: int
      zAccountType: int
      zTradingSessionID: string
      zTradingSessionSubID: string
      zNoQuoteEntries: seq[NoQuoteEntries]
    of mtALow:
      alowQuoteStatusReqID: string
      alowQuoteID: string
      alowSymbol: string
      alowSymbolSfx: string
      alowSecurityID: string
      alowSecurityIDSource: string
      alowNoSecurityAltID: seq[NoSecurityAltID]
      alowProduct: int
      alowCFICode: string
      alowSecurityType: string
      alowSecuritySubType: string
      alowMaturityMonthYear: string
      alowMaturityDate: string
      alowPutOrCall: int
      alowCouponPaymentDate: string
      alowIssueDate: string
      alowRepoCollateralSecurityType: string
      alowRepurchaseTerm: int
      alowRepurchaseRate: float
      alowFactor: string
      alowCreditRating: string
      alowInstrRegistry: string
      alowCountryOfIssue: string
      alowStateOrProvinceOfIssue: string
      alowLocaleOfIssue: string
      alowRedemptionDate: string
      alowStrikePrice: float
      alowStrikeCurrency: string
      alowOptAttribute: char
      alowContractMultiplier: string
      alowCouponRate: float
      alowSecurityExchange: string
      alowIssuer: string
      alowEncodedIssuerLen: uint
      alowEncodedIssuer: string
      alowSecurityDesc: string
      alowEncodedSecurityDescLen: uint
      alowEncodedSecurityDesc: string
      alowPool: string
      alowContractSettlMonth: string
      alowCPProgram: int
      alowCPRegType: string
      alowNoEvents: seq[NoEvents]
      alowDatedDate: string
      alowInterestAccrualDate: string
      alowAgreementDesc: string
      alowAgreementID: string
      alowAgreementDate: string
      alowAgreementCurrency: string
      alowTerminationType: int
      alowStartDate: string
      alowEndDate: string
      alowDeliveryType: int
      alowMarginRatio: float
      alowNoUnderlyings: seq[NoUnderlyings]
      alowNoLegs: seq[NoLegs]
      alowNoPartyIDs: seq[NoPartyIDs]
      alowAccount: string
      alowAcctIDSource: int
      alowAccountType: int
      alowTradingSessionID: string
      alowTradingSessionSubID: string
      alowSubscriptionRequestType: char
    of mtBLow:
      blowQuoteReqID: string
      blowQuoteID: string
      blowQuoteStatus: int
      blowQuoteRejectReason: int
      blowQuoteResponseLevel: int
      blowQuoteType: int
      blowNoPartyIDs: seq[NoPartyIDs]
      blowAccount: string
      blowAcctIDSource: int
      blowAccountType: int
      blowText: string
      blowEncodedTextLen: uint
      blowEncodedText: string
      blowNoQuoteSets: seq[NoQuoteSets]
    of mtCLow:
      clowSecurityReqID: string
      clowSecurityRequestType: int
      clowSymbol: string
      clowSymbolSfx: string
      clowSecurityID: string
      clowSecurityIDSource: string
      clowNoSecurityAltID: seq[NoSecurityAltID]
      clowProduct: int
      clowCFICode: string
      clowSecurityType: string
      clowSecuritySubType: string
      clowMaturityMonthYear: string
      clowMaturityDate: string
      clowPutOrCall: int
      clowCouponPaymentDate: string
      clowIssueDate: string
      clowRepoCollateralSecurityType: string
      clowRepurchaseTerm: int
      clowRepurchaseRate: float
      clowFactor: string
      clowCreditRating: string
      clowInstrRegistry: string
      clowCountryOfIssue: string
      clowStateOrProvinceOfIssue: string
      clowLocaleOfIssue: string
      clowRedemptionDate: string
      clowStrikePrice: float
      clowStrikeCurrency: string
      clowOptAttribute: char
      clowContractMultiplier: string
      clowCouponRate: float
      clowSecurityExchange: string
      clowIssuer: string
      clowEncodedIssuerLen: uint
      clowEncodedIssuer: string
      clowSecurityDesc: string
      clowEncodedSecurityDescLen: uint
      clowEncodedSecurityDesc: string
      clowPool: string
      clowContractSettlMonth: string
      clowCPProgram: int
      clowCPRegType: string
      clowNoEvents: seq[NoEvents]
      clowDatedDate: string
      clowInterestAccrualDate: string
      clowDeliveryForm: int
      clowPctAtRisk: float
      clowNoInstrAttrib: seq[NoInstrAttrib]
      clowNoUnderlyings: seq[NoUnderlyings]
      clowCurrency: string
      clowText: string
      clowEncodedTextLen: uint
      clowEncodedText: string
      clowTradingSessionID: string
      clowTradingSessionSubID: string
      clowNoLegs: seq[NoLegs]
      clowExpirationCycle: int
      clowSubscriptionRequestType: char
    of mtDLow:
      dlowSecurityReqID: string
      dlowSecurityResponseID: string
      dlowSecurityResponseType: int
      dlowSymbol: string
      dlowSymbolSfx: string
      dlowSecurityID: string
      dlowSecurityIDSource: string
      dlowNoSecurityAltID: seq[NoSecurityAltID]
      dlowProduct: int
      dlowCFICode: string
      dlowSecurityType: string
      dlowSecuritySubType: string
      dlowMaturityMonthYear: string
      dlowMaturityDate: string
      dlowPutOrCall: int
      dlowCouponPaymentDate: string
      dlowIssueDate: string
      dlowRepoCollateralSecurityType: string
      dlowRepurchaseTerm: int
      dlowRepurchaseRate: float
      dlowFactor: string
      dlowCreditRating: string
      dlowInstrRegistry: string
      dlowCountryOfIssue: string
      dlowStateOrProvinceOfIssue: string
      dlowLocaleOfIssue: string
      dlowRedemptionDate: string
      dlowStrikePrice: float
      dlowStrikeCurrency: string
      dlowOptAttribute: char
      dlowContractMultiplier: string
      dlowCouponRate: float
      dlowSecurityExchange: string
      dlowIssuer: string
      dlowEncodedIssuerLen: uint
      dlowEncodedIssuer: string
      dlowSecurityDesc: string
      dlowEncodedSecurityDescLen: uint
      dlowEncodedSecurityDesc: string
      dlowPool: string
      dlowContractSettlMonth: string
      dlowCPProgram: int
      dlowCPRegType: string
      dlowNoEvents: seq[NoEvents]
      dlowDatedDate: string
      dlowInterestAccrualDate: string
      dlowDeliveryForm: int
      dlowPctAtRisk: float
      dlowNoInstrAttrib: seq[NoInstrAttrib]
      dlowNoUnderlyings: seq[NoUnderlyings]
      dlowCurrency: string
      dlowTradingSessionID: string
      dlowTradingSessionSubID: string
      dlowText: string
      dlowEncodedTextLen: uint
      dlowEncodedText: string
      dlowNoLegs: seq[NoLegs]
      dlowExpirationCycle: int
      dlowRoundLot: uint
      dlowMinTradeVol: uint
    of mtELow:
      elowSecurityStatusReqID: string
      elowSymbol: string
      elowSymbolSfx: string
      elowSecurityID: string
      elowSecurityIDSource: string
      elowNoSecurityAltID: seq[NoSecurityAltID]
      elowProduct: int
      elowCFICode: string
      elowSecurityType: string
      elowSecuritySubType: string
      elowMaturityMonthYear: string
      elowMaturityDate: string
      elowPutOrCall: int
      elowCouponPaymentDate: string
      elowIssueDate: string
      elowRepoCollateralSecurityType: string
      elowRepurchaseTerm: int
      elowRepurchaseRate: float
      elowFactor: string
      elowCreditRating: string
      elowInstrRegistry: string
      elowCountryOfIssue: string
      elowStateOrProvinceOfIssue: string
      elowLocaleOfIssue: string
      elowRedemptionDate: string
      elowStrikePrice: float
      elowStrikeCurrency: string
      elowOptAttribute: char
      elowContractMultiplier: string
      elowCouponRate: float
      elowSecurityExchange: string
      elowIssuer: string
      elowEncodedIssuerLen: uint
      elowEncodedIssuer: string
      elowSecurityDesc: string
      elowEncodedSecurityDescLen: uint
      elowEncodedSecurityDesc: string
      elowPool: string
      elowContractSettlMonth: string
      elowCPProgram: int
      elowCPRegType: string
      elowNoEvents: seq[NoEvents]
      elowDatedDate: string
      elowInterestAccrualDate: string
      elowDeliveryForm: int
      elowPctAtRisk: float
      elowNoInstrAttrib: seq[NoInstrAttrib]
      elowNoUnderlyings: seq[NoUnderlyings]
      elowNoLegs: seq[NoLegs]
      elowCurrency: string
      elowSubscriptionRequestType: char
      elowTradingSessionID: string
      elowTradingSessionSubID: string
    of mtFLow:
      flowSecurityStatusReqID: string
      flowSymbol: string
      flowSymbolSfx: string
      flowSecurityID: string
      flowSecurityIDSource: string
      flowNoSecurityAltID: seq[NoSecurityAltID]
      flowProduct: int
      flowCFICode: string
      flowSecurityType: string
      flowSecuritySubType: string
      flowMaturityMonthYear: string
      flowMaturityDate: string
      flowPutOrCall: int
      flowCouponPaymentDate: string
      flowIssueDate: string
      flowRepoCollateralSecurityType: string
      flowRepurchaseTerm: int
      flowRepurchaseRate: float
      flowFactor: string
      flowCreditRating: string
      flowInstrRegistry: string
      flowCountryOfIssue: string
      flowStateOrProvinceOfIssue: string
      flowLocaleOfIssue: string
      flowRedemptionDate: string
      flowStrikePrice: float
      flowStrikeCurrency: string
      flowOptAttribute: char
      flowContractMultiplier: string
      flowCouponRate: float
      flowSecurityExchange: string
      flowIssuer: string
      flowEncodedIssuerLen: uint
      flowEncodedIssuer: string
      flowSecurityDesc: string
      flowEncodedSecurityDescLen: uint
      flowEncodedSecurityDesc: string
      flowPool: string
      flowContractSettlMonth: string
      flowCPProgram: int
      flowCPRegType: string
      flowNoEvents: seq[NoEvents]
      flowDatedDate: string
      flowInterestAccrualDate: string
      flowDeliveryForm: int
      flowPctAtRisk: float
      flowNoInstrAttrib: seq[NoInstrAttrib]
      flowNoUnderlyings: seq[NoUnderlyings]
      flowNoLegs: seq[NoLegs]
      flowCurrency: string
      flowTradingSessionID: string
      flowTradingSessionSubID: string
      flowUnsolicitedIndicator: bool
      flowSecurityTradingStatus: int
      flowFinancialStatus: string
      flowCorporateAction: string
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
      flowText: string
      flowEncodedTextLen: uint
      flowEncodedText: string
    of mtGLow:
      glowTradSesReqID: string
      glowTradingSessionID: string
      glowTradingSessionSubID: string
      glowTradSesMethod: int
      glowTradSesMode: int
      glowSubscriptionRequestType: char
    of mtHLow:
      hlowTradSesReqID: string
      hlowTradingSessionID: string
      hlowTradingSessionSubID: string
      hlowTradSesMethod: int
      hlowTradSesMode: int
      hlowUnsolicitedIndicator: bool
      hlowTradSesStatus: int
      hlowTradSesStatusRejReason: int
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
      ilowQuoteType: int
      ilowQuoteResponseLevel: int
      ilowNoPartyIDs: seq[NoPartyIDs]
      ilowAccount: string
      ilowAcctIDSource: int
      ilowAccountType: int
      ilowDefBidSize: uint
      ilowDefOfferSize: uint
      ilowNoQuoteSets: seq[NoQuoteSets]
    of mtJLow:
      jlowRefSeqNum: uint
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
      klowTotNoRelatedSym: int
      klowBidType: int
      klowNumTickets: int
      klowCurrency: string
      klowSideValue1: uint
      klowSideValue2: uint
      klowNoBidDescriptors: seq[NoBidDescriptors]
      klowNoBidComponents: seq[NoBidComponents]
      klowLiquidityIndType: int
      klowWtAverageLiquidity: float
      klowExchangeForPhysical: bool
      klowOutMainCntryUIndex: uint
      klowCrossPercent: float
      klowProgRptReqs: int
      klowProgPeriodInterval: int
      klowIncTaxInd: int
      klowForexReq: bool
      klowNumBidders: int
      klowTradeDate: string
      klowBidTradeType: char
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
      mlowLastFragment: bool
      mlowNoStrikes: seq[NoStrikes]
      mlowNoUnderlyings: seq[NoUnderlyings]
    of mtNLow:
      discard
    of mtOLow:
      olowRegistID: string
      olowRegistTransType: char
      olowRegistRefID: string
      olowClOrdID: string
      olowNoPartyIDs: seq[NoPartyIDs]
      olowAccount: string
      olowAcctIDSource: int
      olowRegistAcctType: string
      olowTaxAdvantageType: int
      olowOwnershipType: char
      olowNoRegistDtls: seq[NoRegistDtls]
      olowNoDistribInsts: seq[NoDistribInsts]
    of mtPLow:
      plowRegistID: string
      plowRegistTransType: char
      plowRegistRefID: string
      plowClOrdID: string
      plowNoPartyIDs: seq[NoPartyIDs]
      plowAccount: string
      plowAcctIDSource: int
      plowRegistStatus: char
      plowRegistRejReasonCode: int
      plowRegistRejReasonText: string
    of mtQLow:
      qlowClOrdID: string
      qlowSecondaryClOrdID: string
      qlowMassCancelRequestType: char
      qlowTradingSessionID: string
      qlowTradingSessionSubID: string
      qlowSymbol: string
      qlowSymbolSfx: string
      qlowSecurityID: string
      qlowSecurityIDSource: string
      qlowNoSecurityAltID: seq[NoSecurityAltID]
      qlowProduct: int
      qlowCFICode: string
      qlowSecurityType: string
      qlowSecuritySubType: string
      qlowMaturityMonthYear: string
      qlowMaturityDate: string
      qlowPutOrCall: int
      qlowCouponPaymentDate: string
      qlowIssueDate: string
      qlowRepoCollateralSecurityType: string
      qlowRepurchaseTerm: int
      qlowRepurchaseRate: float
      qlowFactor: string
      qlowCreditRating: string
      qlowInstrRegistry: string
      qlowCountryOfIssue: string
      qlowStateOrProvinceOfIssue: string
      qlowLocaleOfIssue: string
      qlowRedemptionDate: string
      qlowStrikePrice: float
      qlowStrikeCurrency: string
      qlowOptAttribute: char
      qlowContractMultiplier: string
      qlowCouponRate: float
      qlowSecurityExchange: string
      qlowIssuer: string
      qlowEncodedIssuerLen: uint
      qlowEncodedIssuer: string
      qlowSecurityDesc: string
      qlowEncodedSecurityDescLen: uint
      qlowEncodedSecurityDesc: string
      qlowPool: string
      qlowContractSettlMonth: string
      qlowCPProgram: int
      qlowCPRegType: string
      qlowNoEvents: seq[NoEvents]
      qlowDatedDate: string
      qlowInterestAccrualDate: string
      qlowUnderlyingSymbol: string
      qlowUnderlyingSymbolSfx: string
      qlowUnderlyingSecurityID: string
      qlowUnderlyingSecurityIDSource: string
      qlowNoUnderlyingSecurityAltID: seq[NoUnderlyingSecurityAltID]
      qlowUnderlyingProduct: int
      qlowUnderlyingCFICode: string
      qlowUnderlyingSecurityType: string
      qlowUnderlyingSecuritySubType: string
      qlowUnderlyingMaturityMonthYear: string
      qlowUnderlyingMaturityDate: string
      qlowUnderlyingPutOrCall: int
      qlowUnderlyingCouponPaymentDate: string
      qlowUnderlyingIssueDate: string
      qlowUnderlyingRepoCollateralSecurityType: string
      qlowUnderlyingRepurchaseTerm: int
      qlowUnderlyingRepurchaseRate: float
      qlowUnderlyingFactor: string
      qlowUnderlyingCreditRating: string
      qlowUnderlyingInstrRegistry: string
      qlowUnderlyingCountryOfIssue: string
      qlowUnderlyingStateOrProvinceOfIssue: string
      qlowUnderlyingLocaleOfIssue: string
      qlowUnderlyingRedemptionDate: string
      qlowUnderlyingStrikePrice: float
      qlowUnderlyingStrikeCurrency: string
      qlowUnderlyingOptAttribute: char
      qlowUnderlyingContractMultiplier: string
      qlowUnderlyingCouponRate: float
      qlowUnderlyingSecurityExchange: string
      qlowUnderlyingIssuer: string
      qlowEncodedUnderlyingIssuerLen: uint
      qlowEncodedUnderlyingIssuer: string
      qlowUnderlyingSecurityDesc: string
      qlowEncodedUnderlyingSecurityDescLen: uint
      qlowEncodedUnderlyingSecurityDesc: string
      qlowUnderlyingCPProgram: string
      qlowUnderlyingCPRegType: string
      qlowUnderlyingCurrency: string
      qlowUnderlyingQty: uint
      qlowUnderlyingPx: float
      qlowUnderlyingDirtyPrice: float
      qlowUnderlyingEndPrice: float
      qlowUnderlyingStartValue: uint
      qlowUnderlyingCurrentValue: uint
      qlowUnderlyingEndValue: uint
      qlowNoUnderlyingStips: seq[NoUnderlyingStips]
      qlowSide: char
      qlowTransactTime: string
      qlowText: string
      qlowEncodedTextLen: uint
      qlowEncodedText: string
    of mtRLow:
      rlowClOrdID: string
      rlowSecondaryClOrdID: string
      rlowOrderID: string
      rlowSecondaryOrderID: string
      rlowMassCancelRequestType: char
      rlowMassCancelResponse: char
      rlowMassCancelRejectReason: char
      rlowTotalAffectedOrders: int
      rlowNoAffectedOrders: seq[NoAffectedOrders]
      rlowTradingSessionID: string
      rlowTradingSessionSubID: string
      rlowSymbol: string
      rlowSymbolSfx: string
      rlowSecurityID: string
      rlowSecurityIDSource: string
      rlowNoSecurityAltID: seq[NoSecurityAltID]
      rlowProduct: int
      rlowCFICode: string
      rlowSecurityType: string
      rlowSecuritySubType: string
      rlowMaturityMonthYear: string
      rlowMaturityDate: string
      rlowPutOrCall: int
      rlowCouponPaymentDate: string
      rlowIssueDate: string
      rlowRepoCollateralSecurityType: string
      rlowRepurchaseTerm: int
      rlowRepurchaseRate: float
      rlowFactor: string
      rlowCreditRating: string
      rlowInstrRegistry: string
      rlowCountryOfIssue: string
      rlowStateOrProvinceOfIssue: string
      rlowLocaleOfIssue: string
      rlowRedemptionDate: string
      rlowStrikePrice: float
      rlowStrikeCurrency: string
      rlowOptAttribute: char
      rlowContractMultiplier: string
      rlowCouponRate: float
      rlowSecurityExchange: string
      rlowIssuer: string
      rlowEncodedIssuerLen: uint
      rlowEncodedIssuer: string
      rlowSecurityDesc: string
      rlowEncodedSecurityDescLen: uint
      rlowEncodedSecurityDesc: string
      rlowPool: string
      rlowContractSettlMonth: string
      rlowCPProgram: int
      rlowCPRegType: string
      rlowNoEvents: seq[NoEvents]
      rlowDatedDate: string
      rlowInterestAccrualDate: string
      rlowUnderlyingSymbol: string
      rlowUnderlyingSymbolSfx: string
      rlowUnderlyingSecurityID: string
      rlowUnderlyingSecurityIDSource: string
      rlowNoUnderlyingSecurityAltID: seq[NoUnderlyingSecurityAltID]
      rlowUnderlyingProduct: int
      rlowUnderlyingCFICode: string
      rlowUnderlyingSecurityType: string
      rlowUnderlyingSecuritySubType: string
      rlowUnderlyingMaturityMonthYear: string
      rlowUnderlyingMaturityDate: string
      rlowUnderlyingPutOrCall: int
      rlowUnderlyingCouponPaymentDate: string
      rlowUnderlyingIssueDate: string
      rlowUnderlyingRepoCollateralSecurityType: string
      rlowUnderlyingRepurchaseTerm: int
      rlowUnderlyingRepurchaseRate: float
      rlowUnderlyingFactor: string
      rlowUnderlyingCreditRating: string
      rlowUnderlyingInstrRegistry: string
      rlowUnderlyingCountryOfIssue: string
      rlowUnderlyingStateOrProvinceOfIssue: string
      rlowUnderlyingLocaleOfIssue: string
      rlowUnderlyingRedemptionDate: string
      rlowUnderlyingStrikePrice: float
      rlowUnderlyingStrikeCurrency: string
      rlowUnderlyingOptAttribute: char
      rlowUnderlyingContractMultiplier: string
      rlowUnderlyingCouponRate: float
      rlowUnderlyingSecurityExchange: string
      rlowUnderlyingIssuer: string
      rlowEncodedUnderlyingIssuerLen: uint
      rlowEncodedUnderlyingIssuer: string
      rlowUnderlyingSecurityDesc: string
      rlowEncodedUnderlyingSecurityDescLen: uint
      rlowEncodedUnderlyingSecurityDesc: string
      rlowUnderlyingCPProgram: string
      rlowUnderlyingCPRegType: string
      rlowUnderlyingCurrency: string
      rlowUnderlyingQty: uint
      rlowUnderlyingPx: float
      rlowUnderlyingDirtyPrice: float
      rlowUnderlyingEndPrice: float
      rlowUnderlyingStartValue: uint
      rlowUnderlyingCurrentValue: uint
      rlowUnderlyingEndValue: uint
      rlowNoUnderlyingStips: seq[NoUnderlyingStips]
      rlowSide: char
      rlowTransactTime: string
      rlowText: string
      rlowEncodedTextLen: uint
      rlowEncodedText: string
    of mtSLow:
      slowCrossID: string
      slowCrossType: int
      slowCrossPrioritization: int
      slowNoSides: seq[NoSides]
      slowSymbol: string
      slowSymbolSfx: string
      slowSecurityID: string
      slowSecurityIDSource: string
      slowNoSecurityAltID: seq[NoSecurityAltID]
      slowProduct: int
      slowCFICode: string
      slowSecurityType: string
      slowSecuritySubType: string
      slowMaturityMonthYear: string
      slowMaturityDate: string
      slowPutOrCall: int
      slowCouponPaymentDate: string
      slowIssueDate: string
      slowRepoCollateralSecurityType: string
      slowRepurchaseTerm: int
      slowRepurchaseRate: float
      slowFactor: string
      slowCreditRating: string
      slowInstrRegistry: string
      slowCountryOfIssue: string
      slowStateOrProvinceOfIssue: string
      slowLocaleOfIssue: string
      slowRedemptionDate: string
      slowStrikePrice: float
      slowStrikeCurrency: string
      slowOptAttribute: char
      slowContractMultiplier: string
      slowCouponRate: float
      slowSecurityExchange: string
      slowIssuer: string
      slowEncodedIssuerLen: uint
      slowEncodedIssuer: string
      slowSecurityDesc: string
      slowEncodedSecurityDescLen: uint
      slowEncodedSecurityDesc: string
      slowPool: string
      slowContractSettlMonth: string
      slowCPProgram: int
      slowCPRegType: string
      slowNoEvents: seq[NoEvents]
      slowDatedDate: string
      slowInterestAccrualDate: string
      slowNoUnderlyings: seq[NoUnderlyings]
      slowNoLegs: seq[NoLegs]
      slowSettlType: char
      slowSettlDate: string
      slowHandlInst: char
      slowExecInst: string
      slowMinQty: uint
      slowMaxFloor: uint
      slowExDestination: string
      slowNoTradingSessions: seq[NoTradingSessions]
      slowProcessCode: char
      slowPrevClosePx: float
      slowLocateReqd: bool
      slowTransactTime: string
      slowNoStipulations: seq[NoStipulations]
      slowOrdType: char
      slowPriceType: int
      slowPrice: float
      slowStopPx: float
      slowSpread: float
      slowBenchmarkCurveCurrency: string
      slowBenchmarkCurveName: string
      slowBenchmarkCurvePoint: string
      slowBenchmarkPrice: float
      slowBenchmarkPriceType: int
      slowBenchmarkSecurityID: string
      slowBenchmarkSecurityIDSource: string
      slowYieldType: string
      slowYield: float
      slowYieldCalcDate: string
      slowYieldRedemptionDate: string
      slowYieldRedemptionPrice: float
      slowYieldRedemptionPriceType: int
      slowCurrency: string
      slowComplianceID: string
      slowIOIID: string
      slowQuoteID: string
      slowTimeInForce: char
      slowEffectiveTime: string
      slowExpireDate: string
      slowExpireTime: string
      slowGTBookingInst: int
      slowMaxShow: uint
      slowPegOffsetValue: string
      slowPegMoveType: int
      slowPegOffsetType: int
      slowPegLimitType: int
      slowPegRoundDirection: int
      slowPegScope: int
      slowDiscretionInst: char
      slowDiscretionOffsetValue: string
      slowDiscretionMoveType: int
      slowDiscretionOffsetType: int
      slowDiscretionLimitType: int
      slowDiscretionRoundDirection: int
      slowDiscretionScope: int
      slowTargetStrategy: int
      slowTargetStrategyParameters: string
      slowParticipationRate: float
      slowCancellationRights: char
      slowMoneyLaunderingStatus: char
      slowRegistID: string
      slowDesignation: string
    of mtTLow:
      tlowOrderID: string
      tlowCrossID: string
      tlowOrigCrossID: string
      tlowCrossType: int
      tlowCrossPrioritization: int
      tlowNoSides: seq[NoSides]
      tlowSymbol: string
      tlowSymbolSfx: string
      tlowSecurityID: string
      tlowSecurityIDSource: string
      tlowNoSecurityAltID: seq[NoSecurityAltID]
      tlowProduct: int
      tlowCFICode: string
      tlowSecurityType: string
      tlowSecuritySubType: string
      tlowMaturityMonthYear: string
      tlowMaturityDate: string
      tlowPutOrCall: int
      tlowCouponPaymentDate: string
      tlowIssueDate: string
      tlowRepoCollateralSecurityType: string
      tlowRepurchaseTerm: int
      tlowRepurchaseRate: float
      tlowFactor: string
      tlowCreditRating: string
      tlowInstrRegistry: string
      tlowCountryOfIssue: string
      tlowStateOrProvinceOfIssue: string
      tlowLocaleOfIssue: string
      tlowRedemptionDate: string
      tlowStrikePrice: float
      tlowStrikeCurrency: string
      tlowOptAttribute: char
      tlowContractMultiplier: string
      tlowCouponRate: float
      tlowSecurityExchange: string
      tlowIssuer: string
      tlowEncodedIssuerLen: uint
      tlowEncodedIssuer: string
      tlowSecurityDesc: string
      tlowEncodedSecurityDescLen: uint
      tlowEncodedSecurityDesc: string
      tlowPool: string
      tlowContractSettlMonth: string
      tlowCPProgram: int
      tlowCPRegType: string
      tlowNoEvents: seq[NoEvents]
      tlowDatedDate: string
      tlowInterestAccrualDate: string
      tlowNoUnderlyings: seq[NoUnderlyings]
      tlowNoLegs: seq[NoLegs]
      tlowSettlType: char
      tlowSettlDate: string
      tlowHandlInst: char
      tlowExecInst: string
      tlowMinQty: uint
      tlowMaxFloor: uint
      tlowExDestination: string
      tlowNoTradingSessions: seq[NoTradingSessions]
      tlowProcessCode: char
      tlowPrevClosePx: float
      tlowLocateReqd: bool
      tlowTransactTime: string
      tlowNoStipulations: seq[NoStipulations]
      tlowOrdType: char
      tlowPriceType: int
      tlowPrice: float
      tlowStopPx: float
      tlowSpread: float
      tlowBenchmarkCurveCurrency: string
      tlowBenchmarkCurveName: string
      tlowBenchmarkCurvePoint: string
      tlowBenchmarkPrice: float
      tlowBenchmarkPriceType: int
      tlowBenchmarkSecurityID: string
      tlowBenchmarkSecurityIDSource: string
      tlowYieldType: string
      tlowYield: float
      tlowYieldCalcDate: string
      tlowYieldRedemptionDate: string
      tlowYieldRedemptionPrice: float
      tlowYieldRedemptionPriceType: int
      tlowCurrency: string
      tlowComplianceID: string
      tlowIOIID: string
      tlowQuoteID: string
      tlowTimeInForce: char
      tlowEffectiveTime: string
      tlowExpireDate: string
      tlowExpireTime: string
      tlowGTBookingInst: int
      tlowMaxShow: uint
      tlowPegOffsetValue: string
      tlowPegMoveType: int
      tlowPegOffsetType: int
      tlowPegLimitType: int
      tlowPegRoundDirection: int
      tlowPegScope: int
      tlowDiscretionInst: char
      tlowDiscretionOffsetValue: string
      tlowDiscretionMoveType: int
      tlowDiscretionOffsetType: int
      tlowDiscretionLimitType: int
      tlowDiscretionRoundDirection: int
      tlowDiscretionScope: int
      tlowTargetStrategy: int
      tlowTargetStrategyParameters: string
      tlowParticipationRate: float
      tlowCancellationRights: char
      tlowMoneyLaunderingStatus: char
      tlowRegistID: string
      tlowDesignation: string
    of mtULow:
      ulowOrderID: string
      ulowCrossID: string
      ulowOrigCrossID: string
      ulowCrossType: int
      ulowCrossPrioritization: int
      ulowNoSides: seq[NoSides]
      ulowSymbol: string
      ulowSymbolSfx: string
      ulowSecurityID: string
      ulowSecurityIDSource: string
      ulowNoSecurityAltID: seq[NoSecurityAltID]
      ulowProduct: int
      ulowCFICode: string
      ulowSecurityType: string
      ulowSecuritySubType: string
      ulowMaturityMonthYear: string
      ulowMaturityDate: string
      ulowPutOrCall: int
      ulowCouponPaymentDate: string
      ulowIssueDate: string
      ulowRepoCollateralSecurityType: string
      ulowRepurchaseTerm: int
      ulowRepurchaseRate: float
      ulowFactor: string
      ulowCreditRating: string
      ulowInstrRegistry: string
      ulowCountryOfIssue: string
      ulowStateOrProvinceOfIssue: string
      ulowLocaleOfIssue: string
      ulowRedemptionDate: string
      ulowStrikePrice: float
      ulowStrikeCurrency: string
      ulowOptAttribute: char
      ulowContractMultiplier: string
      ulowCouponRate: float
      ulowSecurityExchange: string
      ulowIssuer: string
      ulowEncodedIssuerLen: uint
      ulowEncodedIssuer: string
      ulowSecurityDesc: string
      ulowEncodedSecurityDescLen: uint
      ulowEncodedSecurityDesc: string
      ulowPool: string
      ulowContractSettlMonth: string
      ulowCPProgram: int
      ulowCPRegType: string
      ulowNoEvents: seq[NoEvents]
      ulowDatedDate: string
      ulowInterestAccrualDate: string
      ulowNoUnderlyings: seq[NoUnderlyings]
      ulowNoLegs: seq[NoLegs]
      ulowTransactTime: string
    of mtVLow:
      vlowSecurityReqID: string
      vlowText: string
      vlowEncodedTextLen: uint
      vlowEncodedText: string
      vlowTradingSessionID: string
      vlowTradingSessionSubID: string
      vlowProduct: int
      vlowSecurityType: string
      vlowSecuritySubType: string
    of mtWLow:
      wlowSecurityReqID: string
      wlowSecurityResponseID: string
      wlowSecurityResponseType: int
      wlowTotNoSecurityTypes: int
      wlowLastFragment: bool
      wlowNoSecurityTypes: seq[NoSecurityTypes]
      wlowText: string
      wlowEncodedTextLen: uint
      wlowEncodedText: string
      wlowTradingSessionID: string
      wlowTradingSessionSubID: string
      wlowSubscriptionRequestType: char
    of mtXLow:
      xlowSecurityReqID: string
      xlowSecurityListRequestType: int
      xlowSymbol: string
      xlowSymbolSfx: string
      xlowSecurityID: string
      xlowSecurityIDSource: string
      xlowNoSecurityAltID: seq[NoSecurityAltID]
      xlowProduct: int
      xlowCFICode: string
      xlowSecurityType: string
      xlowSecuritySubType: string
      xlowMaturityMonthYear: string
      xlowMaturityDate: string
      xlowPutOrCall: int
      xlowCouponPaymentDate: string
      xlowIssueDate: string
      xlowRepoCollateralSecurityType: string
      xlowRepurchaseTerm: int
      xlowRepurchaseRate: float
      xlowFactor: string
      xlowCreditRating: string
      xlowInstrRegistry: string
      xlowCountryOfIssue: string
      xlowStateOrProvinceOfIssue: string
      xlowLocaleOfIssue: string
      xlowRedemptionDate: string
      xlowStrikePrice: float
      xlowStrikeCurrency: string
      xlowOptAttribute: char
      xlowContractMultiplier: string
      xlowCouponRate: float
      xlowSecurityExchange: string
      xlowIssuer: string
      xlowEncodedIssuerLen: uint
      xlowEncodedIssuer: string
      xlowSecurityDesc: string
      xlowEncodedSecurityDescLen: uint
      xlowEncodedSecurityDesc: string
      xlowPool: string
      xlowContractSettlMonth: string
      xlowCPProgram: int
      xlowCPRegType: string
      xlowNoEvents: seq[NoEvents]
      xlowDatedDate: string
      xlowInterestAccrualDate: string
      xlowDeliveryForm: int
      xlowPctAtRisk: float
      xlowNoInstrAttrib: seq[NoInstrAttrib]
      xlowAgreementDesc: string
      xlowAgreementID: string
      xlowAgreementDate: string
      xlowAgreementCurrency: string
      xlowTerminationType: int
      xlowStartDate: string
      xlowEndDate: string
      xlowDeliveryType: int
      xlowMarginRatio: float
      xlowNoUnderlyings: seq[NoUnderlyings]
      xlowNoLegs: seq[NoLegs]
      xlowCurrency: string
      xlowText: string
      xlowEncodedTextLen: uint
      xlowEncodedText: string
      xlowTradingSessionID: string
      xlowTradingSessionSubID: string
      xlowSubscriptionRequestType: char
    of mtYLow:
      ylowSecurityReqID: string
      ylowSecurityResponseID: string
      ylowSecurityRequestResult: int
      ylowTotNoRelatedSym: int
      ylowLastFragment: bool
      ylowNoRelatedSym: seq[NoRelatedSym]
    of mtZLow:
      zlowSecurityReqID: string
      zlowSecurityListRequestType: int
      zlowUnderlyingSymbol: string
      zlowUnderlyingSymbolSfx: string
      zlowUnderlyingSecurityID: string
      zlowUnderlyingSecurityIDSource: string
      zlowNoUnderlyingSecurityAltID: seq[NoUnderlyingSecurityAltID]
      zlowUnderlyingProduct: int
      zlowUnderlyingCFICode: string
      zlowUnderlyingSecurityType: string
      zlowUnderlyingSecuritySubType: string
      zlowUnderlyingMaturityMonthYear: string
      zlowUnderlyingMaturityDate: string
      zlowUnderlyingPutOrCall: int
      zlowUnderlyingCouponPaymentDate: string
      zlowUnderlyingIssueDate: string
      zlowUnderlyingRepoCollateralSecurityType: string
      zlowUnderlyingRepurchaseTerm: int
      zlowUnderlyingRepurchaseRate: float
      zlowUnderlyingFactor: string
      zlowUnderlyingCreditRating: string
      zlowUnderlyingInstrRegistry: string
      zlowUnderlyingCountryOfIssue: string
      zlowUnderlyingStateOrProvinceOfIssue: string
      zlowUnderlyingLocaleOfIssue: string
      zlowUnderlyingRedemptionDate: string
      zlowUnderlyingStrikePrice: float
      zlowUnderlyingStrikeCurrency: string
      zlowUnderlyingOptAttribute: char
      zlowUnderlyingContractMultiplier: string
      zlowUnderlyingCouponRate: float
      zlowUnderlyingSecurityExchange: string
      zlowUnderlyingIssuer: string
      zlowEncodedUnderlyingIssuerLen: uint
      zlowEncodedUnderlyingIssuer: string
      zlowUnderlyingSecurityDesc: string
      zlowEncodedUnderlyingSecurityDescLen: uint
      zlowEncodedUnderlyingSecurityDesc: string
      zlowUnderlyingCPProgram: string
      zlowUnderlyingCPRegType: string
      zlowUnderlyingCurrency: string
      zlowUnderlyingQty: uint
      zlowUnderlyingPx: float
      zlowUnderlyingDirtyPrice: float
      zlowUnderlyingEndPrice: float
      zlowUnderlyingStartValue: uint
      zlowUnderlyingCurrentValue: uint
      zlowUnderlyingEndValue: uint
      zlowNoUnderlyingStips: seq[NoUnderlyingStips]
      zlowSecuritySubType: string
      zlowCurrency: string
      zlowText: string
      zlowEncodedTextLen: uint
      zlowEncodedText: string
      zlowTradingSessionID: string
      zlowTradingSessionSubID: string
      zlowSubscriptionRequestType: char
    of mtAA:
      aaSecurityReqID: string
      aaSecurityResponseID: string
      aaSecurityRequestResult: int
      aaUnderlyingSymbol: string
      aaUnderlyingSymbolSfx: string
      aaUnderlyingSecurityID: string
      aaUnderlyingSecurityIDSource: string
      aaNoUnderlyingSecurityAltID: seq[NoUnderlyingSecurityAltID]
      aaUnderlyingProduct: int
      aaUnderlyingCFICode: string
      aaUnderlyingSecurityType: string
      aaUnderlyingSecuritySubType: string
      aaUnderlyingMaturityMonthYear: string
      aaUnderlyingMaturityDate: string
      aaUnderlyingPutOrCall: int
      aaUnderlyingCouponPaymentDate: string
      aaUnderlyingIssueDate: string
      aaUnderlyingRepoCollateralSecurityType: string
      aaUnderlyingRepurchaseTerm: int
      aaUnderlyingRepurchaseRate: float
      aaUnderlyingFactor: string
      aaUnderlyingCreditRating: string
      aaUnderlyingInstrRegistry: string
      aaUnderlyingCountryOfIssue: string
      aaUnderlyingStateOrProvinceOfIssue: string
      aaUnderlyingLocaleOfIssue: string
      aaUnderlyingRedemptionDate: string
      aaUnderlyingStrikePrice: float
      aaUnderlyingStrikeCurrency: string
      aaUnderlyingOptAttribute: char
      aaUnderlyingContractMultiplier: string
      aaUnderlyingCouponRate: float
      aaUnderlyingSecurityExchange: string
      aaUnderlyingIssuer: string
      aaEncodedUnderlyingIssuerLen: uint
      aaEncodedUnderlyingIssuer: string
      aaUnderlyingSecurityDesc: string
      aaEncodedUnderlyingSecurityDescLen: uint
      aaEncodedUnderlyingSecurityDesc: string
      aaUnderlyingCPProgram: string
      aaUnderlyingCPRegType: string
      aaUnderlyingCurrency: string
      aaUnderlyingQty: uint
      aaUnderlyingPx: float
      aaUnderlyingDirtyPrice: float
      aaUnderlyingEndPrice: float
      aaUnderlyingStartValue: uint
      aaUnderlyingCurrentValue: uint
      aaUnderlyingEndValue: uint
      aaNoUnderlyingStips: seq[NoUnderlyingStips]
      aaTotNoRelatedSym: int
      aaLastFragment: bool
      aaNoRelatedSym: seq[NoRelatedSym]
    of mtAB:
      abClOrdID: string
      abSecondaryClOrdID: string
      abClOrdLinkID: string
      abNoPartyIDs: seq[NoPartyIDs]
      abTradeOriginationDate: string
      abTradeDate: string
      abAccount: string
      abAcctIDSource: int
      abAccountType: int
      abDayBookingInst: char
      abBookingUnit: char
      abPreallocMethod: char
      abAllocID: string
      abNoAllocs: seq[NoAllocs]
      abSettlType: char
      abSettlDate: string
      abCashMargin: char
      abClearingFeeIndicator: string
      abHandlInst: char
      abExecInst: string
      abMinQty: uint
      abMaxFloor: uint
      abExDestination: string
      abNoTradingSessions: seq[NoTradingSessions]
      abProcessCode: char
      abSide: char
      abSymbol: string
      abSymbolSfx: string
      abSecurityID: string
      abSecurityIDSource: string
      abNoSecurityAltID: seq[NoSecurityAltID]
      abProduct: int
      abCFICode: string
      abSecurityType: string
      abSecuritySubType: string
      abMaturityMonthYear: string
      abMaturityDate: string
      abPutOrCall: int
      abCouponPaymentDate: string
      abIssueDate: string
      abRepoCollateralSecurityType: string
      abRepurchaseTerm: int
      abRepurchaseRate: float
      abFactor: string
      abCreditRating: string
      abInstrRegistry: string
      abCountryOfIssue: string
      abStateOrProvinceOfIssue: string
      abLocaleOfIssue: string
      abRedemptionDate: string
      abStrikePrice: float
      abStrikeCurrency: string
      abOptAttribute: char
      abContractMultiplier: string
      abCouponRate: float
      abSecurityExchange: string
      abIssuer: string
      abEncodedIssuerLen: uint
      abEncodedIssuer: string
      abSecurityDesc: string
      abEncodedSecurityDescLen: uint
      abEncodedSecurityDesc: string
      abPool: string
      abContractSettlMonth: string
      abCPProgram: int
      abCPRegType: string
      abNoEvents: seq[NoEvents]
      abDatedDate: string
      abInterestAccrualDate: string
      abNoUnderlyings: seq[NoUnderlyings]
      abPrevClosePx: float
      abNoLegs: seq[NoLegs]
      abLocateReqd: bool
      abTransactTime: string
      abQtyType: int
      abOrderQty: uint
      abCashOrderQty: uint
      abOrderPercent: float
      abRoundingDirection: char
      abRoundingModulus: string
      abOrdType: char
      abPriceType: int
      abPrice: float
      abStopPx: float
      abCurrency: string
      abComplianceID: string
      abSolicitedFlag: bool
      abIOIID: string
      abQuoteID: string
      abTimeInForce: char
      abEffectiveTime: string
      abExpireDate: string
      abExpireTime: string
      abGTBookingInst: int
      abCommission: uint
      abCommType: char
      abCommCurrency: string
      abFundRenewWaiv: char
      abOrderCapacity: char
      abOrderRestrictions: string
      abCustOrderCapacity: int
      abForexReq: bool
      abSettlCurrency: string
      abBookingType: int
      abText: string
      abEncodedTextLen: uint
      abEncodedText: string
      abPositionEffect: char
      abCoveredOrUncovered: int
      abMaxShow: uint
      abPegOffsetValue: string
      abPegMoveType: int
      abPegOffsetType: int
      abPegLimitType: int
      abPegRoundDirection: int
      abPegScope: int
      abDiscretionInst: char
      abDiscretionOffsetValue: string
      abDiscretionMoveType: int
      abDiscretionOffsetType: int
      abDiscretionLimitType: int
      abDiscretionRoundDirection: int
      abDiscretionScope: int
      abTargetStrategy: int
      abTargetStrategyParameters: string
      abParticipationRate: float
      abCancellationRights: char
      abMoneyLaunderingStatus: char
      abRegistID: string
      abDesignation: string
      abMultiLegRptTypeReq: int
    of mtAC:
      acOrderID: string
      acOrigClOrdID: string
      acClOrdID: string
      acSecondaryClOrdID: string
      acClOrdLinkID: string
      acOrigOrdModTime: string
      acNoPartyIDs: seq[NoPartyIDs]
      acTradeOriginationDate: string
      acTradeDate: string
      acAccount: string
      acAcctIDSource: int
      acAccountType: int
      acDayBookingInst: char
      acBookingUnit: char
      acPreallocMethod: char
      acAllocID: string
      acNoAllocs: seq[NoAllocs]
      acSettlType: char
      acSettlDate: string
      acCashMargin: char
      acClearingFeeIndicator: string
      acHandlInst: char
      acExecInst: string
      acMinQty: uint
      acMaxFloor: uint
      acExDestination: string
      acNoTradingSessions: seq[NoTradingSessions]
      acProcessCode: char
      acSide: char
      acSymbol: string
      acSymbolSfx: string
      acSecurityID: string
      acSecurityIDSource: string
      acNoSecurityAltID: seq[NoSecurityAltID]
      acProduct: int
      acCFICode: string
      acSecurityType: string
      acSecuritySubType: string
      acMaturityMonthYear: string
      acMaturityDate: string
      acPutOrCall: int
      acCouponPaymentDate: string
      acIssueDate: string
      acRepoCollateralSecurityType: string
      acRepurchaseTerm: int
      acRepurchaseRate: float
      acFactor: string
      acCreditRating: string
      acInstrRegistry: string
      acCountryOfIssue: string
      acStateOrProvinceOfIssue: string
      acLocaleOfIssue: string
      acRedemptionDate: string
      acStrikePrice: float
      acStrikeCurrency: string
      acOptAttribute: char
      acContractMultiplier: string
      acCouponRate: float
      acSecurityExchange: string
      acIssuer: string
      acEncodedIssuerLen: uint
      acEncodedIssuer: string
      acSecurityDesc: string
      acEncodedSecurityDescLen: uint
      acEncodedSecurityDesc: string
      acPool: string
      acContractSettlMonth: string
      acCPProgram: int
      acCPRegType: string
      acNoEvents: seq[NoEvents]
      acDatedDate: string
      acInterestAccrualDate: string
      acNoUnderlyings: seq[NoUnderlyings]
      acPrevClosePx: float
      acNoLegs: seq[NoLegs]
      acLocateReqd: bool
      acTransactTime: string
      acQtyType: int
      acOrderQty: uint
      acCashOrderQty: uint
      acOrderPercent: float
      acRoundingDirection: char
      acRoundingModulus: string
      acOrdType: char
      acPriceType: int
      acPrice: float
      acStopPx: float
      acCurrency: string
      acComplianceID: string
      acSolicitedFlag: bool
      acIOIID: string
      acQuoteID: string
      acTimeInForce: char
      acEffectiveTime: string
      acExpireDate: string
      acExpireTime: string
      acGTBookingInst: int
      acCommission: uint
      acCommType: char
      acCommCurrency: string
      acFundRenewWaiv: char
      acOrderCapacity: char
      acOrderRestrictions: string
      acCustOrderCapacity: int
      acForexReq: bool
      acSettlCurrency: string
      acBookingType: int
      acText: string
      acEncodedTextLen: uint
      acEncodedText: string
      acPositionEffect: char
      acCoveredOrUncovered: int
      acMaxShow: uint
      acPegOffsetValue: string
      acPegMoveType: int
      acPegOffsetType: int
      acPegLimitType: int
      acPegRoundDirection: int
      acPegScope: int
      acDiscretionInst: char
      acDiscretionOffsetValue: string
      acDiscretionMoveType: int
      acDiscretionOffsetType: int
      acDiscretionLimitType: int
      acDiscretionRoundDirection: int
      acDiscretionScope: int
      acTargetStrategy: int
      acTargetStrategyParameters: string
      acParticipationRate: float
      acCancellationRights: char
      acMoneyLaunderingStatus: char
      acRegistID: string
      acDesignation: string
      acMultiLegRptTypeReq: int
    of mtAD:
      adTradeRequestID: string
      adTradeRequestType: int
      adSubscriptionRequestType: char
      adTradeReportID: string
      adSecondaryTradeReportID: string
      adExecID: string
      adExecType: char
      adOrderID: string
      adClOrdID: string
      adMatchStatus: char
      adTrdType: int
      adTrdSubType: int
      adTransferReason: string
      adSecondaryTrdType: int
      adTradeLinkID: string
      adTrdMatchID: string
      adNoPartyIDs: seq[NoPartyIDs]
      adSymbol: string
      adSymbolSfx: string
      adSecurityID: string
      adSecurityIDSource: string
      adNoSecurityAltID: seq[NoSecurityAltID]
      adProduct: int
      adCFICode: string
      adSecurityType: string
      adSecuritySubType: string
      adMaturityMonthYear: string
      adMaturityDate: string
      adPutOrCall: int
      adCouponPaymentDate: string
      adIssueDate: string
      adRepoCollateralSecurityType: string
      adRepurchaseTerm: int
      adRepurchaseRate: float
      adFactor: string
      adCreditRating: string
      adInstrRegistry: string
      adCountryOfIssue: string
      adStateOrProvinceOfIssue: string
      adLocaleOfIssue: string
      adRedemptionDate: string
      adStrikePrice: float
      adStrikeCurrency: string
      adOptAttribute: char
      adContractMultiplier: string
      adCouponRate: float
      adSecurityExchange: string
      adIssuer: string
      adEncodedIssuerLen: uint
      adEncodedIssuer: string
      adSecurityDesc: string
      adEncodedSecurityDescLen: uint
      adEncodedSecurityDesc: string
      adPool: string
      adContractSettlMonth: string
      adCPProgram: int
      adCPRegType: string
      adNoEvents: seq[NoEvents]
      adDatedDate: string
      adInterestAccrualDate: string
      adDeliveryForm: int
      adPctAtRisk: float
      adNoInstrAttrib: seq[NoInstrAttrib]
      adAgreementDesc: string
      adAgreementID: string
      adAgreementDate: string
      adAgreementCurrency: string
      adTerminationType: int
      adStartDate: string
      adEndDate: string
      adDeliveryType: int
      adMarginRatio: float
      adNoUnderlyings: seq[NoUnderlyings]
      adNoLegs: seq[NoLegs]
      adNoDates: seq[NoDates]
      adClearingBusinessDate: string
      adTradingSessionID: string
      adTradingSessionSubID: string
      adTimeBracket: string
      adSide: char
      adMultiLegReportingType: char
      adTradeInputSource: string
      adTradeInputDevice: string
      adResponseTransportType: int
      adResponseDestination: string
      adText: string
      adEncodedTextLen: uint
      adEncodedText: string
    of mtAE:
      aeTradeReportID: string
      aeTradeReportTransType: int
      aeTradeReportType: int
      aeTradeRequestID: string
      aeTrdType: int
      aeTrdSubType: int
      aeSecondaryTrdType: int
      aeTransferReason: string
      aeExecType: char
      aeTotNumTradeReports: int
      aeLastRptRequested: bool
      aeUnsolicitedIndicator: bool
      aeSubscriptionRequestType: char
      aeTradeReportRefID: string
      aeSecondaryTradeReportRefID: string
      aeSecondaryTradeReportID: string
      aeTradeLinkID: string
      aeTrdMatchID: string
      aeExecID: string
      aeOrdStatus: char
      aeSecondaryExecID: string
      aeExecRestatementReason: int
      aePreviouslyReported: bool
      aePriceType: int
      aeSymbol: string
      aeSymbolSfx: string
      aeSecurityID: string
      aeSecurityIDSource: string
      aeNoSecurityAltID: seq[NoSecurityAltID]
      aeProduct: int
      aeCFICode: string
      aeSecurityType: string
      aeSecuritySubType: string
      aeMaturityMonthYear: string
      aeMaturityDate: string
      aePutOrCall: int
      aeCouponPaymentDate: string
      aeIssueDate: string
      aeRepoCollateralSecurityType: string
      aeRepurchaseTerm: int
      aeRepurchaseRate: float
      aeFactor: string
      aeCreditRating: string
      aeInstrRegistry: string
      aeCountryOfIssue: string
      aeStateOrProvinceOfIssue: string
      aeLocaleOfIssue: string
      aeRedemptionDate: string
      aeStrikePrice: float
      aeStrikeCurrency: string
      aeOptAttribute: char
      aeContractMultiplier: string
      aeCouponRate: float
      aeSecurityExchange: string
      aeIssuer: string
      aeEncodedIssuerLen: uint
      aeEncodedIssuer: string
      aeSecurityDesc: string
      aeEncodedSecurityDescLen: uint
      aeEncodedSecurityDesc: string
      aePool: string
      aeContractSettlMonth: string
      aeCPProgram: int
      aeCPRegType: string
      aeNoEvents: seq[NoEvents]
      aeDatedDate: string
      aeInterestAccrualDate: string
      aeAgreementDesc: string
      aeAgreementID: string
      aeAgreementDate: string
      aeAgreementCurrency: string
      aeTerminationType: int
      aeStartDate: string
      aeEndDate: string
      aeDeliveryType: int
      aeMarginRatio: float
      aeOrderQty: uint
      aeCashOrderQty: uint
      aeOrderPercent: float
      aeRoundingDirection: char
      aeRoundingModulus: string
      aeQtyType: int
      aeYieldType: string
      aeYield: float
      aeYieldCalcDate: string
      aeYieldRedemptionDate: string
      aeYieldRedemptionPrice: float
      aeYieldRedemptionPriceType: int
      aeNoUnderlyings: seq[NoUnderlyings]
      aeUnderlyingTradingSessionID: string
      aeUnderlyingTradingSessionSubID: string
      aeLastQty: uint
      aeLastPx: float
      aeLastParPx: float
      aeLastSpotRate: float
      aeLastForwardPoints: float
      aeLastMkt: string
      aeTradeDate: string
      aeClearingBusinessDate: string
      aeAvgPx: float
      aeSpread: float
      aeBenchmarkCurveCurrency: string
      aeBenchmarkCurveName: string
      aeBenchmarkCurvePoint: string
      aeBenchmarkPrice: float
      aeBenchmarkPriceType: int
      aeBenchmarkSecurityID: string
      aeBenchmarkSecurityIDSource: string
      aeAvgPxIndicator: int
      aeNoPosAmt: seq[NoPosAmt]
      aeMultiLegReportingType: char
      aeTradeLegRefID: string
      aeNoLegs: seq[NoLegs]
      aeTransactTime: string
      aeNoTrdRegTimestamps: seq[NoTrdRegTimestamps]
      aeSettlType: char
      aeSettlDate: string
      aeMatchStatus: char
      aeMatchType: string
      aeNoSides: seq[NoSides]
      aeCopyMsgIndicator: bool
      aePublishTrdIndicator: bool
      aeShortSaleReason: int
    of mtAF:
      afMassStatusReqID: string
      afMassStatusReqType: int
      afNoPartyIDs: seq[NoPartyIDs]
      afAccount: string
      afAcctIDSource: int
      afTradingSessionID: string
      afTradingSessionSubID: string
      afSymbol: string
      afSymbolSfx: string
      afSecurityID: string
      afSecurityIDSource: string
      afNoSecurityAltID: seq[NoSecurityAltID]
      afProduct: int
      afCFICode: string
      afSecurityType: string
      afSecuritySubType: string
      afMaturityMonthYear: string
      afMaturityDate: string
      afPutOrCall: int
      afCouponPaymentDate: string
      afIssueDate: string
      afRepoCollateralSecurityType: string
      afRepurchaseTerm: int
      afRepurchaseRate: float
      afFactor: string
      afCreditRating: string
      afInstrRegistry: string
      afCountryOfIssue: string
      afStateOrProvinceOfIssue: string
      afLocaleOfIssue: string
      afRedemptionDate: string
      afStrikePrice: float
      afStrikeCurrency: string
      afOptAttribute: char
      afContractMultiplier: string
      afCouponRate: float
      afSecurityExchange: string
      afIssuer: string
      afEncodedIssuerLen: uint
      afEncodedIssuer: string
      afSecurityDesc: string
      afEncodedSecurityDescLen: uint
      afEncodedSecurityDesc: string
      afPool: string
      afContractSettlMonth: string
      afCPProgram: int
      afCPRegType: string
      afNoEvents: seq[NoEvents]
      afDatedDate: string
      afInterestAccrualDate: string
      afUnderlyingSymbol: string
      afUnderlyingSymbolSfx: string
      afUnderlyingSecurityID: string
      afUnderlyingSecurityIDSource: string
      afNoUnderlyingSecurityAltID: seq[NoUnderlyingSecurityAltID]
      afUnderlyingProduct: int
      afUnderlyingCFICode: string
      afUnderlyingSecurityType: string
      afUnderlyingSecuritySubType: string
      afUnderlyingMaturityMonthYear: string
      afUnderlyingMaturityDate: string
      afUnderlyingPutOrCall: int
      afUnderlyingCouponPaymentDate: string
      afUnderlyingIssueDate: string
      afUnderlyingRepoCollateralSecurityType: string
      afUnderlyingRepurchaseTerm: int
      afUnderlyingRepurchaseRate: float
      afUnderlyingFactor: string
      afUnderlyingCreditRating: string
      afUnderlyingInstrRegistry: string
      afUnderlyingCountryOfIssue: string
      afUnderlyingStateOrProvinceOfIssue: string
      afUnderlyingLocaleOfIssue: string
      afUnderlyingRedemptionDate: string
      afUnderlyingStrikePrice: float
      afUnderlyingStrikeCurrency: string
      afUnderlyingOptAttribute: char
      afUnderlyingContractMultiplier: string
      afUnderlyingCouponRate: float
      afUnderlyingSecurityExchange: string
      afUnderlyingIssuer: string
      afEncodedUnderlyingIssuerLen: uint
      afEncodedUnderlyingIssuer: string
      afUnderlyingSecurityDesc: string
      afEncodedUnderlyingSecurityDescLen: uint
      afEncodedUnderlyingSecurityDesc: string
      afUnderlyingCPProgram: string
      afUnderlyingCPRegType: string
      afUnderlyingCurrency: string
      afUnderlyingQty: uint
      afUnderlyingPx: float
      afUnderlyingDirtyPrice: float
      afUnderlyingEndPrice: float
      afUnderlyingStartValue: uint
      afUnderlyingCurrentValue: uint
      afUnderlyingEndValue: uint
      afNoUnderlyingStips: seq[NoUnderlyingStips]
      afSide: char
    of mtAG:
      agQuoteReqID: string
      agRFQReqID: string
      agQuoteRequestRejectReason: int
      agNoRelatedSym: seq[NoRelatedSym]
      agText: string
      agEncodedTextLen: uint
      agEncodedText: string
    of mtAH:
      ahRFQReqID: string
      ahNoRelatedSym: seq[NoRelatedSym]
      ahSubscriptionRequestType: char
    of mtAI:
      aiQuoteStatusReqID: string
      aiQuoteReqID: string
      aiQuoteID: string
      aiQuoteRespID: string
      aiQuoteType: int
      aiNoPartyIDs: seq[NoPartyIDs]
      aiTradingSessionID: string
      aiTradingSessionSubID: string
      aiSymbol: string
      aiSymbolSfx: string
      aiSecurityID: string
      aiSecurityIDSource: string
      aiNoSecurityAltID: seq[NoSecurityAltID]
      aiProduct: int
      aiCFICode: string
      aiSecurityType: string
      aiSecuritySubType: string
      aiMaturityMonthYear: string
      aiMaturityDate: string
      aiPutOrCall: int
      aiCouponPaymentDate: string
      aiIssueDate: string
      aiRepoCollateralSecurityType: string
      aiRepurchaseTerm: int
      aiRepurchaseRate: float
      aiFactor: string
      aiCreditRating: string
      aiInstrRegistry: string
      aiCountryOfIssue: string
      aiStateOrProvinceOfIssue: string
      aiLocaleOfIssue: string
      aiRedemptionDate: string
      aiStrikePrice: float
      aiStrikeCurrency: string
      aiOptAttribute: char
      aiContractMultiplier: string
      aiCouponRate: float
      aiSecurityExchange: string
      aiIssuer: string
      aiEncodedIssuerLen: uint
      aiEncodedIssuer: string
      aiSecurityDesc: string
      aiEncodedSecurityDescLen: uint
      aiEncodedSecurityDesc: string
      aiPool: string
      aiContractSettlMonth: string
      aiCPProgram: int
      aiCPRegType: string
      aiNoEvents: seq[NoEvents]
      aiDatedDate: string
      aiInterestAccrualDate: string
      aiAgreementDesc: string
      aiAgreementID: string
      aiAgreementDate: string
      aiAgreementCurrency: string
      aiTerminationType: int
      aiStartDate: string
      aiEndDate: string
      aiDeliveryType: int
      aiMarginRatio: float
      aiNoUnderlyings: seq[NoUnderlyings]
      aiSide: char
      aiOrderQty: uint
      aiCashOrderQty: uint
      aiOrderPercent: float
      aiRoundingDirection: char
      aiRoundingModulus: string
      aiSettlType: char
      aiSettlDate: string
      aiSettlDate2: string
      aiOrderQty2: uint
      aiCurrency: string
      aiNoStipulations: seq[NoStipulations]
      aiAccount: string
      aiAcctIDSource: int
      aiAccountType: int
      aiNoLegs: seq[NoLegs]
      aiNoQuoteQualifiers: seq[NoQuoteQualifiers]
      aiExpireTime: string
      aiPrice: float
      aiPriceType: int
      aiSpread: float
      aiBenchmarkCurveCurrency: string
      aiBenchmarkCurveName: string
      aiBenchmarkCurvePoint: string
      aiBenchmarkPrice: float
      aiBenchmarkPriceType: int
      aiBenchmarkSecurityID: string
      aiBenchmarkSecurityIDSource: string
      aiYieldType: string
      aiYield: float
      aiYieldCalcDate: string
      aiYieldRedemptionDate: string
      aiYieldRedemptionPrice: float
      aiYieldRedemptionPriceType: int
      aiBidPx: float
      aiOfferPx: float
      aiMktBidPx: float
      aiMktOfferPx: float
      aiMinBidSize: uint
      aiBidSize: uint
      aiMinOfferSize: uint
      aiOfferSize: uint
      aiValidUntilTime: string
      aiBidSpotRate: float
      aiOfferSpotRate: float
      aiBidForwardPoints: float
      aiOfferForwardPoints: float
      aiMidPx: float
      aiBidYield: float
      aiMidYield: float
      aiOfferYield: float
      aiTransactTime: string
      aiOrdType: char
      aiBidForwardPoints2: float
      aiOfferForwardPoints2: float
      aiSettlCurrBidFxRate: string
      aiSettlCurrOfferFxRate: string
      aiSettlCurrFxRateCalc: char
      aiCommType: char
      aiCommission: uint
      aiCustOrderCapacity: int
      aiExDestination: string
      aiQuoteStatus: int
      aiText: string
      aiEncodedTextLen: uint
      aiEncodedText: string
    of mtAJ:
      ajQuoteRespID: string
      ajQuoteID: string
      ajQuoteRespType: int
      ajClOrdID: string
      ajOrderCapacity: char
      ajIOIID: string
      ajQuoteType: int
      ajNoQuoteQualifiers: seq[NoQuoteQualifiers]
      ajNoPartyIDs: seq[NoPartyIDs]
      ajTradingSessionID: string
      ajTradingSessionSubID: string
      ajSymbol: string
      ajSymbolSfx: string
      ajSecurityID: string
      ajSecurityIDSource: string
      ajNoSecurityAltID: seq[NoSecurityAltID]
      ajProduct: int
      ajCFICode: string
      ajSecurityType: string
      ajSecuritySubType: string
      ajMaturityMonthYear: string
      ajMaturityDate: string
      ajPutOrCall: int
      ajCouponPaymentDate: string
      ajIssueDate: string
      ajRepoCollateralSecurityType: string
      ajRepurchaseTerm: int
      ajRepurchaseRate: float
      ajFactor: string
      ajCreditRating: string
      ajInstrRegistry: string
      ajCountryOfIssue: string
      ajStateOrProvinceOfIssue: string
      ajLocaleOfIssue: string
      ajRedemptionDate: string
      ajStrikePrice: float
      ajStrikeCurrency: string
      ajOptAttribute: char
      ajContractMultiplier: string
      ajCouponRate: float
      ajSecurityExchange: string
      ajIssuer: string
      ajEncodedIssuerLen: uint
      ajEncodedIssuer: string
      ajSecurityDesc: string
      ajEncodedSecurityDescLen: uint
      ajEncodedSecurityDesc: string
      ajPool: string
      ajContractSettlMonth: string
      ajCPProgram: int
      ajCPRegType: string
      ajNoEvents: seq[NoEvents]
      ajDatedDate: string
      ajInterestAccrualDate: string
      ajAgreementDesc: string
      ajAgreementID: string
      ajAgreementDate: string
      ajAgreementCurrency: string
      ajTerminationType: int
      ajStartDate: string
      ajEndDate: string
      ajDeliveryType: int
      ajMarginRatio: float
      ajNoUnderlyings: seq[NoUnderlyings]
      ajSide: char
      ajOrderQty: uint
      ajCashOrderQty: uint
      ajOrderPercent: float
      ajRoundingDirection: char
      ajRoundingModulus: string
      ajSettlType: char
      ajSettlDate: string
      ajSettlDate2: string
      ajOrderQty2: uint
      ajCurrency: string
      ajNoStipulations: seq[NoStipulations]
      ajAccount: string
      ajAcctIDSource: int
      ajAccountType: int
      ajNoLegs: seq[NoLegs]
      ajBidPx: float
      ajOfferPx: float
      ajMktBidPx: float
      ajMktOfferPx: float
      ajMinBidSize: uint
      ajBidSize: uint
      ajMinOfferSize: uint
      ajOfferSize: uint
      ajValidUntilTime: string
      ajBidSpotRate: float
      ajOfferSpotRate: float
      ajBidForwardPoints: float
      ajOfferForwardPoints: float
      ajMidPx: float
      ajBidYield: float
      ajMidYield: float
      ajOfferYield: float
      ajTransactTime: string
      ajOrdType: char
      ajBidForwardPoints2: float
      ajOfferForwardPoints2: float
      ajSettlCurrBidFxRate: string
      ajSettlCurrOfferFxRate: string
      ajSettlCurrFxRateCalc: char
      ajCommission: uint
      ajCommType: char
      ajCustOrderCapacity: int
      ajExDestination: string
      ajText: string
      ajEncodedTextLen: uint
      ajEncodedText: string
      ajPrice: float
      ajPriceType: int
      ajSpread: float
      ajBenchmarkCurveCurrency: string
      ajBenchmarkCurveName: string
      ajBenchmarkCurvePoint: string
      ajBenchmarkPrice: float
      ajBenchmarkPriceType: int
      ajBenchmarkSecurityID: string
      ajBenchmarkSecurityIDSource: string
      ajYieldType: string
      ajYield: float
      ajYieldCalcDate: string
      ajYieldRedemptionDate: string
      ajYieldRedemptionPrice: float
      ajYieldRedemptionPriceType: int
    of mtAK:
      akConfirmID: string
      akConfirmRefID: string
      akConfirmReqID: string
      akConfirmTransType: int
      akConfirmType: int
      akCopyMsgIndicator: bool
      akLegalConfirm: bool
      akConfirmStatus: int
      akNoPartyIDs: seq[NoPartyIDs]
      akNoOrders: seq[NoOrders]
      akAllocID: string
      akSecondaryAllocID: string
      akIndividualAllocID: string
      akTransactTime: string
      akTradeDate: string
      akNoTrdRegTimestamps: seq[NoTrdRegTimestamps]
      akSymbol: string
      akSymbolSfx: string
      akSecurityID: string
      akSecurityIDSource: string
      akNoSecurityAltID: seq[NoSecurityAltID]
      akProduct: int
      akCFICode: string
      akSecurityType: string
      akSecuritySubType: string
      akMaturityMonthYear: string
      akMaturityDate: string
      akPutOrCall: int
      akCouponPaymentDate: string
      akIssueDate: string
      akRepoCollateralSecurityType: string
      akRepurchaseTerm: int
      akRepurchaseRate: float
      akFactor: string
      akCreditRating: string
      akInstrRegistry: string
      akCountryOfIssue: string
      akStateOrProvinceOfIssue: string
      akLocaleOfIssue: string
      akRedemptionDate: string
      akStrikePrice: float
      akStrikeCurrency: string
      akOptAttribute: char
      akContractMultiplier: string
      akCouponRate: float
      akSecurityExchange: string
      akIssuer: string
      akEncodedIssuerLen: uint
      akEncodedIssuer: string
      akSecurityDesc: string
      akEncodedSecurityDescLen: uint
      akEncodedSecurityDesc: string
      akPool: string
      akContractSettlMonth: string
      akCPProgram: int
      akCPRegType: string
      akNoEvents: seq[NoEvents]
      akDatedDate: string
      akInterestAccrualDate: string
      akDeliveryForm: int
      akPctAtRisk: float
      akNoInstrAttrib: seq[NoInstrAttrib]
      akAgreementDesc: string
      akAgreementID: string
      akAgreementDate: string
      akAgreementCurrency: string
      akTerminationType: int
      akStartDate: string
      akEndDate: string
      akDeliveryType: int
      akMarginRatio: float
      akNoUnderlyings: seq[NoUnderlyings]
      akNoLegs: seq[NoLegs]
      akYieldType: string
      akYield: float
      akYieldCalcDate: string
      akYieldRedemptionDate: string
      akYieldRedemptionPrice: float
      akYieldRedemptionPriceType: int
      akAllocQty: uint
      akQtyType: int
      akSide: char
      akCurrency: string
      akLastMkt: string
      akNoCapacities: seq[NoCapacities]
      akAllocAccount: string
      akAllocAcctIDSource: int
      akAllocAccountType: int
      akAvgPx: float
      akAvgPxPrecision: int
      akPriceType: int
      akAvgParPx: float
      akSpread: float
      akBenchmarkCurveCurrency: string
      akBenchmarkCurveName: string
      akBenchmarkCurvePoint: string
      akBenchmarkPrice: float
      akBenchmarkPriceType: int
      akBenchmarkSecurityID: string
      akBenchmarkSecurityIDSource: string
      akReportedPx: float
      akText: string
      akEncodedTextLen: uint
      akEncodedText: string
      akProcessCode: char
      akGrossTradeAmt: uint
      akNumDaysInterest: int
      akExDate: string
      akAccruedInterestRate: float
      akAccruedInterestAmt: uint
      akInterestAtMaturity: uint
      akEndAccruedInterestAmt: uint
      akStartCash: uint
      akEndCash: uint
      akConcession: uint
      akTotalTakedown: uint
      akNetMoney: uint
      akMaturityNetMoney: uint
      akSettlCurrAmt: uint
      akSettlCurrency: string
      akSettlCurrFxRate: string
      akSettlCurrFxRateCalc: char
      akSettlType: char
      akSettlDate: string
      akSettlDeliveryType: int
      akStandInstDbType: int
      akStandInstDbName: string
      akStandInstDbID: string
      akNoDlvyInst: seq[NoDlvyInst]
      akCommission: uint
      akCommType: char
      akCommCurrency: string
      akFundRenewWaiv: char
      akSharedCommission: uint
      akNoStipulations: seq[NoStipulations]
      akNoMiscFees: seq[NoMiscFees]
    of mtAL:
      alPosReqID: string
      alPosTransType: int
      alPosMaintAction: int
      alOrigPosReqRefID: string
      alPosMaintRptRefID: string
      alClearingBusinessDate: string
      alSettlSessID: string
      alSettlSessSubID: string
      alNoPartyIDs: seq[NoPartyIDs]
      alAccount: string
      alAcctIDSource: int
      alAccountType: int
      alSymbol: string
      alSymbolSfx: string
      alSecurityID: string
      alSecurityIDSource: string
      alNoSecurityAltID: seq[NoSecurityAltID]
      alProduct: int
      alCFICode: string
      alSecurityType: string
      alSecuritySubType: string
      alMaturityMonthYear: string
      alMaturityDate: string
      alPutOrCall: int
      alCouponPaymentDate: string
      alIssueDate: string
      alRepoCollateralSecurityType: string
      alRepurchaseTerm: int
      alRepurchaseRate: float
      alFactor: string
      alCreditRating: string
      alInstrRegistry: string
      alCountryOfIssue: string
      alStateOrProvinceOfIssue: string
      alLocaleOfIssue: string
      alRedemptionDate: string
      alStrikePrice: float
      alStrikeCurrency: string
      alOptAttribute: char
      alContractMultiplier: string
      alCouponRate: float
      alSecurityExchange: string
      alIssuer: string
      alEncodedIssuerLen: uint
      alEncodedIssuer: string
      alSecurityDesc: string
      alEncodedSecurityDescLen: uint
      alEncodedSecurityDesc: string
      alPool: string
      alContractSettlMonth: string
      alCPProgram: int
      alCPRegType: string
      alNoEvents: seq[NoEvents]
      alDatedDate: string
      alInterestAccrualDate: string
      alCurrency: string
      alNoLegs: seq[NoLegs]
      alNoUnderlyings: seq[NoUnderlyings]
      alNoTradingSessions: seq[NoTradingSessions]
      alTransactTime: string
      alNoPositions: seq[NoPositions]
      alAdjustmentType: int
      alContraryInstructionIndicator: bool
      alPriorSpreadIndicator: bool
      alThresholdAmount: float
      alText: string
      alEncodedTextLen: uint
      alEncodedText: string
    of mtAM:
      amPosMaintRptID: string
      amPosTransType: int
      amPosReqID: string
      amPosMaintAction: int
      amOrigPosReqRefID: string
      amPosMaintStatus: int
      amPosMaintResult: int
      amClearingBusinessDate: string
      amSettlSessID: string
      amSettlSessSubID: string
      amNoPartyIDs: seq[NoPartyIDs]
      amAccount: string
      amAcctIDSource: int
      amAccountType: int
      amSymbol: string
      amSymbolSfx: string
      amSecurityID: string
      amSecurityIDSource: string
      amNoSecurityAltID: seq[NoSecurityAltID]
      amProduct: int
      amCFICode: string
      amSecurityType: string
      amSecuritySubType: string
      amMaturityMonthYear: string
      amMaturityDate: string
      amPutOrCall: int
      amCouponPaymentDate: string
      amIssueDate: string
      amRepoCollateralSecurityType: string
      amRepurchaseTerm: int
      amRepurchaseRate: float
      amFactor: string
      amCreditRating: string
      amInstrRegistry: string
      amCountryOfIssue: string
      amStateOrProvinceOfIssue: string
      amLocaleOfIssue: string
      amRedemptionDate: string
      amStrikePrice: float
      amStrikeCurrency: string
      amOptAttribute: char
      amContractMultiplier: string
      amCouponRate: float
      amSecurityExchange: string
      amIssuer: string
      amEncodedIssuerLen: uint
      amEncodedIssuer: string
      amSecurityDesc: string
      amEncodedSecurityDescLen: uint
      amEncodedSecurityDesc: string
      amPool: string
      amContractSettlMonth: string
      amCPProgram: int
      amCPRegType: string
      amNoEvents: seq[NoEvents]
      amDatedDate: string
      amInterestAccrualDate: string
      amCurrency: string
      amNoLegs: seq[NoLegs]
      amNoUnderlyings: seq[NoUnderlyings]
      amNoTradingSessions: seq[NoTradingSessions]
      amTransactTime: string
      amNoPositions: seq[NoPositions]
      amNoPosAmt: seq[NoPosAmt]
      amAdjustmentType: int
      amThresholdAmount: float
      amText: string
      amEncodedTextLen: uint
      amEncodedText: string
    of mtAN:
      anPosReqID: string
      anPosReqType: int
      anMatchStatus: char
      anSubscriptionRequestType: char
      anNoPartyIDs: seq[NoPartyIDs]
      anAccount: string
      anAcctIDSource: int
      anAccountType: int
      anSymbol: string
      anSymbolSfx: string
      anSecurityID: string
      anSecurityIDSource: string
      anNoSecurityAltID: seq[NoSecurityAltID]
      anProduct: int
      anCFICode: string
      anSecurityType: string
      anSecuritySubType: string
      anMaturityMonthYear: string
      anMaturityDate: string
      anPutOrCall: int
      anCouponPaymentDate: string
      anIssueDate: string
      anRepoCollateralSecurityType: string
      anRepurchaseTerm: int
      anRepurchaseRate: float
      anFactor: string
      anCreditRating: string
      anInstrRegistry: string
      anCountryOfIssue: string
      anStateOrProvinceOfIssue: string
      anLocaleOfIssue: string
      anRedemptionDate: string
      anStrikePrice: float
      anStrikeCurrency: string
      anOptAttribute: char
      anContractMultiplier: string
      anCouponRate: float
      anSecurityExchange: string
      anIssuer: string
      anEncodedIssuerLen: uint
      anEncodedIssuer: string
      anSecurityDesc: string
      anEncodedSecurityDescLen: uint
      anEncodedSecurityDesc: string
      anPool: string
      anContractSettlMonth: string
      anCPProgram: int
      anCPRegType: string
      anNoEvents: seq[NoEvents]
      anDatedDate: string
      anInterestAccrualDate: string
      anCurrency: string
      anNoLegs: seq[NoLegs]
      anNoUnderlyings: seq[NoUnderlyings]
      anClearingBusinessDate: string
      anSettlSessID: string
      anSettlSessSubID: string
      anNoTradingSessions: seq[NoTradingSessions]
      anTransactTime: string
      anResponseTransportType: int
      anResponseDestination: string
      anText: string
      anEncodedTextLen: uint
      anEncodedText: string
    of mtAO:
      aoPosMaintRptID: string
      aoPosReqID: string
      aoTotalNumPosReports: int
      aoUnsolicitedIndicator: bool
      aoPosReqResult: int
      aoPosReqStatus: int
      aoNoPartyIDs: seq[NoPartyIDs]
      aoAccount: string
      aoAcctIDSource: int
      aoAccountType: int
      aoSymbol: string
      aoSymbolSfx: string
      aoSecurityID: string
      aoSecurityIDSource: string
      aoNoSecurityAltID: seq[NoSecurityAltID]
      aoProduct: int
      aoCFICode: string
      aoSecurityType: string
      aoSecuritySubType: string
      aoMaturityMonthYear: string
      aoMaturityDate: string
      aoPutOrCall: int
      aoCouponPaymentDate: string
      aoIssueDate: string
      aoRepoCollateralSecurityType: string
      aoRepurchaseTerm: int
      aoRepurchaseRate: float
      aoFactor: string
      aoCreditRating: string
      aoInstrRegistry: string
      aoCountryOfIssue: string
      aoStateOrProvinceOfIssue: string
      aoLocaleOfIssue: string
      aoRedemptionDate: string
      aoStrikePrice: float
      aoStrikeCurrency: string
      aoOptAttribute: char
      aoContractMultiplier: string
      aoCouponRate: float
      aoSecurityExchange: string
      aoIssuer: string
      aoEncodedIssuerLen: uint
      aoEncodedIssuer: string
      aoSecurityDesc: string
      aoEncodedSecurityDescLen: uint
      aoEncodedSecurityDesc: string
      aoPool: string
      aoContractSettlMonth: string
      aoCPProgram: int
      aoCPRegType: string
      aoNoEvents: seq[NoEvents]
      aoDatedDate: string
      aoInterestAccrualDate: string
      aoCurrency: string
      aoNoLegs: seq[NoLegs]
      aoNoUnderlyings: seq[NoUnderlyings]
      aoResponseTransportType: int
      aoResponseDestination: string
      aoText: string
      aoEncodedTextLen: uint
      aoEncodedText: string
    of mtAP:
      apPosMaintRptID: string
      apPosReqID: string
      apPosReqType: int
      apSubscriptionRequestType: char
      apTotalNumPosReports: int
      apUnsolicitedIndicator: bool
      apPosReqResult: int
      apClearingBusinessDate: string
      apSettlSessID: string
      apSettlSessSubID: string
      apNoPartyIDs: seq[NoPartyIDs]
      apAccount: string
      apAcctIDSource: int
      apAccountType: int
      apSymbol: string
      apSymbolSfx: string
      apSecurityID: string
      apSecurityIDSource: string
      apNoSecurityAltID: seq[NoSecurityAltID]
      apProduct: int
      apCFICode: string
      apSecurityType: string
      apSecuritySubType: string
      apMaturityMonthYear: string
      apMaturityDate: string
      apPutOrCall: int
      apCouponPaymentDate: string
      apIssueDate: string
      apRepoCollateralSecurityType: string
      apRepurchaseTerm: int
      apRepurchaseRate: float
      apFactor: string
      apCreditRating: string
      apInstrRegistry: string
      apCountryOfIssue: string
      apStateOrProvinceOfIssue: string
      apLocaleOfIssue: string
      apRedemptionDate: string
      apStrikePrice: float
      apStrikeCurrency: string
      apOptAttribute: char
      apContractMultiplier: string
      apCouponRate: float
      apSecurityExchange: string
      apIssuer: string
      apEncodedIssuerLen: uint
      apEncodedIssuer: string
      apSecurityDesc: string
      apEncodedSecurityDescLen: uint
      apEncodedSecurityDesc: string
      apPool: string
      apContractSettlMonth: string
      apCPProgram: int
      apCPRegType: string
      apNoEvents: seq[NoEvents]
      apDatedDate: string
      apInterestAccrualDate: string
      apCurrency: string
      apSettlPrice: float
      apSettlPriceType: int
      apPriorSettlPrice: float
      apNoLegs: seq[NoLegs]
      apNoUnderlyings: seq[NoUnderlyings]
      apNoPositions: seq[NoPositions]
      apNoPosAmt: seq[NoPosAmt]
      apRegistStatus: char
      apDeliveryDate: string
      apText: string
      apEncodedTextLen: uint
      apEncodedText: string
    of mtAQ:
      aqTradeRequestID: string
      aqTradeRequestType: int
      aqSubscriptionRequestType: char
      aqTotNumTradeReports: int
      aqTradeRequestResult: int
      aqTradeRequestStatus: int
      aqSymbol: string
      aqSymbolSfx: string
      aqSecurityID: string
      aqSecurityIDSource: string
      aqNoSecurityAltID: seq[NoSecurityAltID]
      aqProduct: int
      aqCFICode: string
      aqSecurityType: string
      aqSecuritySubType: string
      aqMaturityMonthYear: string
      aqMaturityDate: string
      aqPutOrCall: int
      aqCouponPaymentDate: string
      aqIssueDate: string
      aqRepoCollateralSecurityType: string
      aqRepurchaseTerm: int
      aqRepurchaseRate: float
      aqFactor: string
      aqCreditRating: string
      aqInstrRegistry: string
      aqCountryOfIssue: string
      aqStateOrProvinceOfIssue: string
      aqLocaleOfIssue: string
      aqRedemptionDate: string
      aqStrikePrice: float
      aqStrikeCurrency: string
      aqOptAttribute: char
      aqContractMultiplier: string
      aqCouponRate: float
      aqSecurityExchange: string
      aqIssuer: string
      aqEncodedIssuerLen: uint
      aqEncodedIssuer: string
      aqSecurityDesc: string
      aqEncodedSecurityDescLen: uint
      aqEncodedSecurityDesc: string
      aqPool: string
      aqContractSettlMonth: string
      aqCPProgram: int
      aqCPRegType: string
      aqNoEvents: seq[NoEvents]
      aqDatedDate: string
      aqInterestAccrualDate: string
      aqNoUnderlyings: seq[NoUnderlyings]
      aqNoLegs: seq[NoLegs]
      aqMultiLegReportingType: char
      aqResponseTransportType: int
      aqResponseDestination: string
      aqText: string
      aqEncodedTextLen: uint
      aqEncodedText: string
    of mtAR:
      arTradeReportID: string
      arTradeReportTransType: int
      arTradeReportType: int
      arTrdType: int
      arTrdSubType: int
      arSecondaryTrdType: int
      arTransferReason: string
      arExecType: char
      arTradeReportRefID: string
      arSecondaryTradeReportRefID: string
      arTrdRptStatus: int
      arTradeReportRejectReason: int
      arSecondaryTradeReportID: string
      arSubscriptionRequestType: char
      arTradeLinkID: string
      arTrdMatchID: string
      arExecID: string
      arSecondaryExecID: string
      arSymbol: string
      arSymbolSfx: string
      arSecurityID: string
      arSecurityIDSource: string
      arNoSecurityAltID: seq[NoSecurityAltID]
      arProduct: int
      arCFICode: string
      arSecurityType: string
      arSecuritySubType: string
      arMaturityMonthYear: string
      arMaturityDate: string
      arPutOrCall: int
      arCouponPaymentDate: string
      arIssueDate: string
      arRepoCollateralSecurityType: string
      arRepurchaseTerm: int
      arRepurchaseRate: float
      arFactor: string
      arCreditRating: string
      arInstrRegistry: string
      arCountryOfIssue: string
      arStateOrProvinceOfIssue: string
      arLocaleOfIssue: string
      arRedemptionDate: string
      arStrikePrice: float
      arStrikeCurrency: string
      arOptAttribute: char
      arContractMultiplier: string
      arCouponRate: float
      arSecurityExchange: string
      arIssuer: string
      arEncodedIssuerLen: uint
      arEncodedIssuer: string
      arSecurityDesc: string
      arEncodedSecurityDescLen: uint
      arEncodedSecurityDesc: string
      arPool: string
      arContractSettlMonth: string
      arCPProgram: int
      arCPRegType: string
      arNoEvents: seq[NoEvents]
      arDatedDate: string
      arInterestAccrualDate: string
      arTransactTime: string
      arNoTrdRegTimestamps: seq[NoTrdRegTimestamps]
      arResponseTransportType: int
      arResponseDestination: string
      arText: string
      arEncodedTextLen: uint
      arEncodedText: string
      arNoLegs: seq[NoLegs]
      arClearingFeeIndicator: string
      arOrderCapacity: char
      arOrderRestrictions: string
      arCustOrderCapacity: int
      arAccount: string
      arAcctIDSource: int
      arAccountType: int
      arPositionEffect: char
      arPreallocMethod: char
      arNoAllocs: seq[NoAllocs]
    of mtAS:
      asAllocReportID: string
      asAllocID: string
      asAllocTransType: char
      asAllocReportRefID: string
      asAllocCancReplaceReason: int
      asSecondaryAllocID: string
      asAllocReportType: int
      asAllocStatus: int
      asAllocRejCode: int
      asRefAllocID: string
      asAllocIntermedReqType: int
      asAllocLinkID: string
      asAllocLinkType: int
      asBookingRefID: string
      asAllocNoOrdersType: int
      asNoOrders: seq[NoOrders]
      asNoExecs: seq[NoExecs]
      asPreviouslyReported: bool
      asReversalIndicator: bool
      asMatchType: string
      asSide: char
      asSymbol: string
      asSymbolSfx: string
      asSecurityID: string
      asSecurityIDSource: string
      asNoSecurityAltID: seq[NoSecurityAltID]
      asProduct: int
      asCFICode: string
      asSecurityType: string
      asSecuritySubType: string
      asMaturityMonthYear: string
      asMaturityDate: string
      asPutOrCall: int
      asCouponPaymentDate: string
      asIssueDate: string
      asRepoCollateralSecurityType: string
      asRepurchaseTerm: int
      asRepurchaseRate: float
      asFactor: string
      asCreditRating: string
      asInstrRegistry: string
      asCountryOfIssue: string
      asStateOrProvinceOfIssue: string
      asLocaleOfIssue: string
      asRedemptionDate: string
      asStrikePrice: float
      asStrikeCurrency: string
      asOptAttribute: char
      asContractMultiplier: string
      asCouponRate: float
      asSecurityExchange: string
      asIssuer: string
      asEncodedIssuerLen: uint
      asEncodedIssuer: string
      asSecurityDesc: string
      asEncodedSecurityDescLen: uint
      asEncodedSecurityDesc: string
      asPool: string
      asContractSettlMonth: string
      asCPProgram: int
      asCPRegType: string
      asNoEvents: seq[NoEvents]
      asDatedDate: string
      asInterestAccrualDate: string
      asDeliveryForm: int
      asPctAtRisk: float
      asNoInstrAttrib: seq[NoInstrAttrib]
      asAgreementDesc: string
      asAgreementID: string
      asAgreementDate: string
      asAgreementCurrency: string
      asTerminationType: int
      asStartDate: string
      asEndDate: string
      asDeliveryType: int
      asMarginRatio: float
      asNoUnderlyings: seq[NoUnderlyings]
      asNoLegs: seq[NoLegs]
      asQuantity: uint
      asQtyType: int
      asLastMkt: string
      asTradeOriginationDate: string
      asTradingSessionID: string
      asTradingSessionSubID: string
      asPriceType: int
      asAvgPx: float
      asAvgParPx: float
      asSpread: float
      asBenchmarkCurveCurrency: string
      asBenchmarkCurveName: string
      asBenchmarkCurvePoint: string
      asBenchmarkPrice: float
      asBenchmarkPriceType: int
      asBenchmarkSecurityID: string
      asBenchmarkSecurityIDSource: string
      asCurrency: string
      asAvgPxPrecision: int
      asNoPartyIDs: seq[NoPartyIDs]
      asTradeDate: string
      asTransactTime: string
      asSettlType: char
      asSettlDate: string
      asBookingType: int
      asGrossTradeAmt: uint
      asConcession: uint
      asTotalTakedown: uint
      asNetMoney: uint
      asPositionEffect: char
      asAutoAcceptIndicator: bool
      asText: string
      asEncodedTextLen: uint
      asEncodedText: string
      asNumDaysInterest: int
      asAccruedInterestRate: float
      asAccruedInterestAmt: uint
      asTotalAccruedInterestAmt: uint
      asInterestAtMaturity: uint
      asEndAccruedInterestAmt: uint
      asStartCash: uint
      asEndCash: uint
      asLegalConfirm: bool
      asNoStipulations: seq[NoStipulations]
      asYieldType: string
      asYield: float
      asYieldCalcDate: string
      asYieldRedemptionDate: string
      asYieldRedemptionPrice: float
      asYieldRedemptionPriceType: int
      asTotNoAllocs: int
      asLastFragment: bool
      asNoAllocs: seq[NoAllocs]
    of mtAT:
      atAllocReportID: string
      atAllocID: string
      atNoPartyIDs: seq[NoPartyIDs]
      atSecondaryAllocID: string
      atTradeDate: string
      atTransactTime: string
      atAllocStatus: int
      atAllocRejCode: int
      atAllocReportType: int
      atAllocIntermedReqType: int
      atMatchStatus: char
      atProduct: int
      atSecurityType: string
      atText: string
      atEncodedTextLen: uint
      atEncodedText: string
      atNoAllocs: seq[NoAllocs]
    of mtAU:
      auConfirmID: string
      auTradeDate: string
      auTransactTime: string
      auAffirmStatus: int
      auConfirmRejReason: int
      auMatchStatus: char
      auText: string
      auEncodedTextLen: uint
      auEncodedText: string
    of mtAV:
      avSettlInstReqID: string
      avTransactTime: string
      avNoPartyIDs: seq[NoPartyIDs]
      avAllocAccount: string
      avAllocAcctIDSource: int
      avSide: char
      avProduct: int
      avSecurityType: string
      avCFICode: string
      avEffectiveTime: string
      avExpireTime: string
      avLastUpdateTime: string
      avStandInstDbType: int
      avStandInstDbName: string
      avStandInstDbID: string
    of mtAW:
      awAsgnRptID: string
      awTotNumAssignmentReports: int
      awLastRptRequested: bool
      awNoPartyIDs: seq[NoPartyIDs]
      awAccount: string
      awAccountType: int
      awSymbol: string
      awSymbolSfx: string
      awSecurityID: string
      awSecurityIDSource: string
      awNoSecurityAltID: seq[NoSecurityAltID]
      awProduct: int
      awCFICode: string
      awSecurityType: string
      awSecuritySubType: string
      awMaturityMonthYear: string
      awMaturityDate: string
      awPutOrCall: int
      awCouponPaymentDate: string
      awIssueDate: string
      awRepoCollateralSecurityType: string
      awRepurchaseTerm: int
      awRepurchaseRate: float
      awFactor: string
      awCreditRating: string
      awInstrRegistry: string
      awCountryOfIssue: string
      awStateOrProvinceOfIssue: string
      awLocaleOfIssue: string
      awRedemptionDate: string
      awStrikePrice: float
      awStrikeCurrency: string
      awOptAttribute: char
      awContractMultiplier: string
      awCouponRate: float
      awSecurityExchange: string
      awIssuer: string
      awEncodedIssuerLen: uint
      awEncodedIssuer: string
      awSecurityDesc: string
      awEncodedSecurityDescLen: uint
      awEncodedSecurityDesc: string
      awPool: string
      awContractSettlMonth: string
      awCPProgram: int
      awCPRegType: string
      awNoEvents: seq[NoEvents]
      awDatedDate: string
      awInterestAccrualDate: string
      awCurrency: string
      awNoLegs: seq[NoLegs]
      awNoUnderlyings: seq[NoUnderlyings]
      awNoPositions: seq[NoPositions]
      awNoPosAmt: seq[NoPosAmt]
      awThresholdAmount: float
      awSettlPrice: float
      awSettlPriceType: int
      awUnderlyingSettlPrice: float
      awExpireDate: string
      awAssignmentMethod: char
      awAssignmentUnit: uint
      awOpenInterest: uint
      awExerciseMethod: char
      awSettlSessID: string
      awSettlSessSubID: string
      awClearingBusinessDate: string
      awText: string
      awEncodedTextLen: uint
      awEncodedText: string
    of mtAX:
      axCollReqID: string
      axCollAsgnReason: int
      axTransactTime: string
      axExpireTime: string
      axNoPartyIDs: seq[NoPartyIDs]
      axAccount: string
      axAccountType: int
      axClOrdID: string
      axOrderID: string
      axSecondaryOrderID: string
      axSecondaryClOrdID: string
      axNoExecs: seq[NoExecs]
      axNoTrades: seq[NoTrades]
      axSymbol: string
      axSymbolSfx: string
      axSecurityID: string
      axSecurityIDSource: string
      axNoSecurityAltID: seq[NoSecurityAltID]
      axProduct: int
      axCFICode: string
      axSecurityType: string
      axSecuritySubType: string
      axMaturityMonthYear: string
      axMaturityDate: string
      axPutOrCall: int
      axCouponPaymentDate: string
      axIssueDate: string
      axRepoCollateralSecurityType: string
      axRepurchaseTerm: int
      axRepurchaseRate: float
      axFactor: string
      axCreditRating: string
      axInstrRegistry: string
      axCountryOfIssue: string
      axStateOrProvinceOfIssue: string
      axLocaleOfIssue: string
      axRedemptionDate: string
      axStrikePrice: float
      axStrikeCurrency: string
      axOptAttribute: char
      axContractMultiplier: string
      axCouponRate: float
      axSecurityExchange: string
      axIssuer: string
      axEncodedIssuerLen: uint
      axEncodedIssuer: string
      axSecurityDesc: string
      axEncodedSecurityDescLen: uint
      axEncodedSecurityDesc: string
      axPool: string
      axContractSettlMonth: string
      axCPProgram: int
      axCPRegType: string
      axNoEvents: seq[NoEvents]
      axDatedDate: string
      axInterestAccrualDate: string
      axAgreementDesc: string
      axAgreementID: string
      axAgreementDate: string
      axAgreementCurrency: string
      axTerminationType: int
      axStartDate: string
      axEndDate: string
      axDeliveryType: int
      axMarginRatio: float
      axSettlDate: string
      axQuantity: uint
      axQtyType: int
      axCurrency: string
      axNoLegs: seq[NoLegs]
      axNoUnderlyings: seq[NoUnderlyings]
      axMarginExcess: uint
      axTotalNetValue: uint
      axCashOutstanding: uint
      axNoTrdRegTimestamps: seq[NoTrdRegTimestamps]
      axSide: char
      axNoMiscFees: seq[NoMiscFees]
      axPrice: float
      axPriceType: int
      axAccruedInterestAmt: uint
      axEndAccruedInterestAmt: uint
      axStartCash: uint
      axEndCash: uint
      axSpread: float
      axBenchmarkCurveCurrency: string
      axBenchmarkCurveName: string
      axBenchmarkCurvePoint: string
      axBenchmarkPrice: float
      axBenchmarkPriceType: int
      axBenchmarkSecurityID: string
      axBenchmarkSecurityIDSource: string
      axNoStipulations: seq[NoStipulations]
      axTradingSessionID: string
      axTradingSessionSubID: string
      axSettlSessID: string
      axSettlSessSubID: string
      axClearingBusinessDate: string
      axText: string
      axEncodedTextLen: uint
      axEncodedText: string
    of mtAY:
      ayCollAsgnID: string
      ayCollReqID: string
      ayCollAsgnReason: int
      ayCollAsgnTransType: int
      ayCollAsgnRefID: string
      ayTransactTime: string
      ayExpireTime: string
      ayNoPartyIDs: seq[NoPartyIDs]
      ayAccount: string
      ayAccountType: int
      ayClOrdID: string
      ayOrderID: string
      aySecondaryOrderID: string
      aySecondaryClOrdID: string
      ayNoExecs: seq[NoExecs]
      ayNoTrades: seq[NoTrades]
      aySymbol: string
      aySymbolSfx: string
      aySecurityID: string
      aySecurityIDSource: string
      ayNoSecurityAltID: seq[NoSecurityAltID]
      ayProduct: int
      ayCFICode: string
      aySecurityType: string
      aySecuritySubType: string
      ayMaturityMonthYear: string
      ayMaturityDate: string
      ayPutOrCall: int
      ayCouponPaymentDate: string
      ayIssueDate: string
      ayRepoCollateralSecurityType: string
      ayRepurchaseTerm: int
      ayRepurchaseRate: float
      ayFactor: string
      ayCreditRating: string
      ayInstrRegistry: string
      ayCountryOfIssue: string
      ayStateOrProvinceOfIssue: string
      ayLocaleOfIssue: string
      ayRedemptionDate: string
      ayStrikePrice: float
      ayStrikeCurrency: string
      ayOptAttribute: char
      ayContractMultiplier: string
      ayCouponRate: float
      aySecurityExchange: string
      ayIssuer: string
      ayEncodedIssuerLen: uint
      ayEncodedIssuer: string
      aySecurityDesc: string
      ayEncodedSecurityDescLen: uint
      ayEncodedSecurityDesc: string
      ayPool: string
      ayContractSettlMonth: string
      ayCPProgram: int
      ayCPRegType: string
      ayNoEvents: seq[NoEvents]
      ayDatedDate: string
      ayInterestAccrualDate: string
      ayAgreementDesc: string
      ayAgreementID: string
      ayAgreementDate: string
      ayAgreementCurrency: string
      ayTerminationType: int
      ayStartDate: string
      ayEndDate: string
      ayDeliveryType: int
      ayMarginRatio: float
      aySettlDate: string
      ayQuantity: uint
      ayQtyType: int
      ayCurrency: string
      ayNoLegs: seq[NoLegs]
      ayNoUnderlyings: seq[NoUnderlyings]
      ayMarginExcess: uint
      ayTotalNetValue: uint
      ayCashOutstanding: uint
      ayNoTrdRegTimestamps: seq[NoTrdRegTimestamps]
      aySide: char
      ayNoMiscFees: seq[NoMiscFees]
      ayPrice: float
      ayPriceType: int
      ayAccruedInterestAmt: uint
      ayEndAccruedInterestAmt: uint
      ayStartCash: uint
      ayEndCash: uint
      aySpread: float
      ayBenchmarkCurveCurrency: string
      ayBenchmarkCurveName: string
      ayBenchmarkCurvePoint: string
      ayBenchmarkPrice: float
      ayBenchmarkPriceType: int
      ayBenchmarkSecurityID: string
      ayBenchmarkSecurityIDSource: string
      ayNoStipulations: seq[NoStipulations]
      aySettlDeliveryType: int
      ayStandInstDbType: int
      ayStandInstDbName: string
      ayStandInstDbID: string
      ayNoDlvyInst: seq[NoDlvyInst]
      ayTradingSessionID: string
      ayTradingSessionSubID: string
      aySettlSessID: string
      aySettlSessSubID: string
      ayClearingBusinessDate: string
      ayText: string
      ayEncodedTextLen: uint
      ayEncodedText: string
    of mtAZ:
      azCollRespID: string
      azCollAsgnID: string
      azCollReqID: string
      azCollAsgnReason: int
      azCollAsgnTransType: int
      azCollAsgnRespType: int
      azCollAsgnRejectReason: int
      azTransactTime: string
      azNoPartyIDs: seq[NoPartyIDs]
      azAccount: string
      azAccountType: int
      azClOrdID: string
      azOrderID: string
      azSecondaryOrderID: string
      azSecondaryClOrdID: string
      azNoExecs: seq[NoExecs]
      azNoTrades: seq[NoTrades]
      azSymbol: string
      azSymbolSfx: string
      azSecurityID: string
      azSecurityIDSource: string
      azNoSecurityAltID: seq[NoSecurityAltID]
      azProduct: int
      azCFICode: string
      azSecurityType: string
      azSecuritySubType: string
      azMaturityMonthYear: string
      azMaturityDate: string
      azPutOrCall: int
      azCouponPaymentDate: string
      azIssueDate: string
      azRepoCollateralSecurityType: string
      azRepurchaseTerm: int
      azRepurchaseRate: float
      azFactor: string
      azCreditRating: string
      azInstrRegistry: string
      azCountryOfIssue: string
      azStateOrProvinceOfIssue: string
      azLocaleOfIssue: string
      azRedemptionDate: string
      azStrikePrice: float
      azStrikeCurrency: string
      azOptAttribute: char
      azContractMultiplier: string
      azCouponRate: float
      azSecurityExchange: string
      azIssuer: string
      azEncodedIssuerLen: uint
      azEncodedIssuer: string
      azSecurityDesc: string
      azEncodedSecurityDescLen: uint
      azEncodedSecurityDesc: string
      azPool: string
      azContractSettlMonth: string
      azCPProgram: int
      azCPRegType: string
      azNoEvents: seq[NoEvents]
      azDatedDate: string
      azInterestAccrualDate: string
      azAgreementDesc: string
      azAgreementID: string
      azAgreementDate: string
      azAgreementCurrency: string
      azTerminationType: int
      azStartDate: string
      azEndDate: string
      azDeliveryType: int
      azMarginRatio: float
      azSettlDate: string
      azQuantity: uint
      azQtyType: int
      azCurrency: string
      azNoLegs: seq[NoLegs]
      azNoUnderlyings: seq[NoUnderlyings]
      azMarginExcess: uint
      azTotalNetValue: uint
      azCashOutstanding: uint
      azNoTrdRegTimestamps: seq[NoTrdRegTimestamps]
      azSide: char
      azNoMiscFees: seq[NoMiscFees]
      azPrice: float
      azPriceType: int
      azAccruedInterestAmt: uint
      azEndAccruedInterestAmt: uint
      azStartCash: uint
      azEndCash: uint
      azSpread: float
      azBenchmarkCurveCurrency: string
      azBenchmarkCurveName: string
      azBenchmarkCurvePoint: string
      azBenchmarkPrice: float
      azBenchmarkPriceType: int
      azBenchmarkSecurityID: string
      azBenchmarkSecurityIDSource: string
      azNoStipulations: seq[NoStipulations]
      azText: string
      azEncodedTextLen: uint
      azEncodedText: string
    of mtBA:
      baCollRptID: string
      baCollInquiryID: string
      baCollStatus: int
      baTotNumReports: int
      baLastRptRequested: bool
      baNoPartyIDs: seq[NoPartyIDs]
      baAccount: string
      baAccountType: int
      baClOrdID: string
      baOrderID: string
      baSecondaryOrderID: string
      baSecondaryClOrdID: string
      baNoExecs: seq[NoExecs]
      baNoTrades: seq[NoTrades]
      baSymbol: string
      baSymbolSfx: string
      baSecurityID: string
      baSecurityIDSource: string
      baNoSecurityAltID: seq[NoSecurityAltID]
      baProduct: int
      baCFICode: string
      baSecurityType: string
      baSecuritySubType: string
      baMaturityMonthYear: string
      baMaturityDate: string
      baPutOrCall: int
      baCouponPaymentDate: string
      baIssueDate: string
      baRepoCollateralSecurityType: string
      baRepurchaseTerm: int
      baRepurchaseRate: float
      baFactor: string
      baCreditRating: string
      baInstrRegistry: string
      baCountryOfIssue: string
      baStateOrProvinceOfIssue: string
      baLocaleOfIssue: string
      baRedemptionDate: string
      baStrikePrice: float
      baStrikeCurrency: string
      baOptAttribute: char
      baContractMultiplier: string
      baCouponRate: float
      baSecurityExchange: string
      baIssuer: string
      baEncodedIssuerLen: uint
      baEncodedIssuer: string
      baSecurityDesc: string
      baEncodedSecurityDescLen: uint
      baEncodedSecurityDesc: string
      baPool: string
      baContractSettlMonth: string
      baCPProgram: int
      baCPRegType: string
      baNoEvents: seq[NoEvents]
      baDatedDate: string
      baInterestAccrualDate: string
      baAgreementDesc: string
      baAgreementID: string
      baAgreementDate: string
      baAgreementCurrency: string
      baTerminationType: int
      baStartDate: string
      baEndDate: string
      baDeliveryType: int
      baMarginRatio: float
      baSettlDate: string
      baQuantity: uint
      baQtyType: int
      baCurrency: string
      baNoLegs: seq[NoLegs]
      baNoUnderlyings: seq[NoUnderlyings]
      baMarginExcess: uint
      baTotalNetValue: uint
      baCashOutstanding: uint
      baNoTrdRegTimestamps: seq[NoTrdRegTimestamps]
      baSide: char
      baNoMiscFees: seq[NoMiscFees]
      baPrice: float
      baPriceType: int
      baAccruedInterestAmt: uint
      baEndAccruedInterestAmt: uint
      baStartCash: uint
      baEndCash: uint
      baSpread: float
      baBenchmarkCurveCurrency: string
      baBenchmarkCurveName: string
      baBenchmarkCurvePoint: string
      baBenchmarkPrice: float
      baBenchmarkPriceType: int
      baBenchmarkSecurityID: string
      baBenchmarkSecurityIDSource: string
      baNoStipulations: seq[NoStipulations]
      baSettlDeliveryType: int
      baStandInstDbType: int
      baStandInstDbName: string
      baStandInstDbID: string
      baNoDlvyInst: seq[NoDlvyInst]
      baTradingSessionID: string
      baTradingSessionSubID: string
      baSettlSessID: string
      baSettlSessSubID: string
      baClearingBusinessDate: string
      baText: string
      baEncodedTextLen: uint
      baEncodedText: string
    of mtBB:
      bbCollInquiryID: string
      bbNoCollInquiryQualifier: seq[NoCollInquiryQualifier]
      bbSubscriptionRequestType: char
      bbResponseTransportType: int
      bbResponseDestination: string
      bbNoPartyIDs: seq[NoPartyIDs]
      bbAccount: string
      bbAccountType: int
      bbClOrdID: string
      bbOrderID: string
      bbSecondaryOrderID: string
      bbSecondaryClOrdID: string
      bbNoExecs: seq[NoExecs]
      bbNoTrades: seq[NoTrades]
      bbSymbol: string
      bbSymbolSfx: string
      bbSecurityID: string
      bbSecurityIDSource: string
      bbNoSecurityAltID: seq[NoSecurityAltID]
      bbProduct: int
      bbCFICode: string
      bbSecurityType: string
      bbSecuritySubType: string
      bbMaturityMonthYear: string
      bbMaturityDate: string
      bbPutOrCall: int
      bbCouponPaymentDate: string
      bbIssueDate: string
      bbRepoCollateralSecurityType: string
      bbRepurchaseTerm: int
      bbRepurchaseRate: float
      bbFactor: string
      bbCreditRating: string
      bbInstrRegistry: string
      bbCountryOfIssue: string
      bbStateOrProvinceOfIssue: string
      bbLocaleOfIssue: string
      bbRedemptionDate: string
      bbStrikePrice: float
      bbStrikeCurrency: string
      bbOptAttribute: char
      bbContractMultiplier: string
      bbCouponRate: float
      bbSecurityExchange: string
      bbIssuer: string
      bbEncodedIssuerLen: uint
      bbEncodedIssuer: string
      bbSecurityDesc: string
      bbEncodedSecurityDescLen: uint
      bbEncodedSecurityDesc: string
      bbPool: string
      bbContractSettlMonth: string
      bbCPProgram: int
      bbCPRegType: string
      bbNoEvents: seq[NoEvents]
      bbDatedDate: string
      bbInterestAccrualDate: string
      bbAgreementDesc: string
      bbAgreementID: string
      bbAgreementDate: string
      bbAgreementCurrency: string
      bbTerminationType: int
      bbStartDate: string
      bbEndDate: string
      bbDeliveryType: int
      bbMarginRatio: float
      bbSettlDate: string
      bbQuantity: uint
      bbQtyType: int
      bbCurrency: string
      bbNoLegs: seq[NoLegs]
      bbNoUnderlyings: seq[NoUnderlyings]
      bbMarginExcess: uint
      bbTotalNetValue: uint
      bbCashOutstanding: uint
      bbNoTrdRegTimestamps: seq[NoTrdRegTimestamps]
      bbSide: char
      bbPrice: float
      bbPriceType: int
      bbAccruedInterestAmt: uint
      bbEndAccruedInterestAmt: uint
      bbStartCash: uint
      bbEndCash: uint
      bbSpread: float
      bbBenchmarkCurveCurrency: string
      bbBenchmarkCurveName: string
      bbBenchmarkCurvePoint: string
      bbBenchmarkPrice: float
      bbBenchmarkPriceType: int
      bbBenchmarkSecurityID: string
      bbBenchmarkSecurityIDSource: string
      bbNoStipulations: seq[NoStipulations]
      bbSettlDeliveryType: int
      bbStandInstDbType: int
      bbStandInstDbName: string
      bbStandInstDbID: string
      bbNoDlvyInst: seq[NoDlvyInst]
      bbTradingSessionID: string
      bbTradingSessionSubID: string
      bbSettlSessID: string
      bbSettlSessSubID: string
      bbClearingBusinessDate: string
      bbText: string
      bbEncodedTextLen: uint
      bbEncodedText: string
    of mtBC:
      bcNetworkRequestType: int
      bcNetworkRequestID: string
      bcNoCompIDs: seq[NoCompIDs]
    of mtBD:
      bdNetworkStatusResponseType: int
      bdNetworkRequestID: string
      bdNetworkResponseID: string
      bdLastNetworkResponseID: string
      bdNoCompIDs: seq[NoCompIDs]
    of mtBE:
      beUserRequestID: string
      beUserRequestType: int
      beUsername: string
      bePassword: string
      beNewPassword: string
      beRawDataLength: uint
      beRawData: string
    of mtBF:
      bfUserRequestID: string
      bfUsername: string
      bfUserStatus: int
      bfUserStatusText: string
    of mtBG:
      bgCollInquiryID: string
      bgCollInquiryStatus: int
      bgCollInquiryResult: int
      bgNoCollInquiryQualifier: seq[NoCollInquiryQualifier]
      bgTotNumReports: int
      bgNoPartyIDs: seq[NoPartyIDs]
      bgAccount: string
      bgAccountType: int
      bgClOrdID: string
      bgOrderID: string
      bgSecondaryOrderID: string
      bgSecondaryClOrdID: string
      bgNoExecs: seq[NoExecs]
      bgNoTrades: seq[NoTrades]
      bgSymbol: string
      bgSymbolSfx: string
      bgSecurityID: string
      bgSecurityIDSource: string
      bgNoSecurityAltID: seq[NoSecurityAltID]
      bgProduct: int
      bgCFICode: string
      bgSecurityType: string
      bgSecuritySubType: string
      bgMaturityMonthYear: string
      bgMaturityDate: string
      bgPutOrCall: int
      bgCouponPaymentDate: string
      bgIssueDate: string
      bgRepoCollateralSecurityType: string
      bgRepurchaseTerm: int
      bgRepurchaseRate: float
      bgFactor: string
      bgCreditRating: string
      bgInstrRegistry: string
      bgCountryOfIssue: string
      bgStateOrProvinceOfIssue: string
      bgLocaleOfIssue: string
      bgRedemptionDate: string
      bgStrikePrice: float
      bgStrikeCurrency: string
      bgOptAttribute: char
      bgContractMultiplier: string
      bgCouponRate: float
      bgSecurityExchange: string
      bgIssuer: string
      bgEncodedIssuerLen: uint
      bgEncodedIssuer: string
      bgSecurityDesc: string
      bgEncodedSecurityDescLen: uint
      bgEncodedSecurityDesc: string
      bgPool: string
      bgContractSettlMonth: string
      bgCPProgram: int
      bgCPRegType: string
      bgNoEvents: seq[NoEvents]
      bgDatedDate: string
      bgInterestAccrualDate: string
      bgAgreementDesc: string
      bgAgreementID: string
      bgAgreementDate: string
      bgAgreementCurrency: string
      bgTerminationType: int
      bgStartDate: string
      bgEndDate: string
      bgDeliveryType: int
      bgMarginRatio: float
      bgSettlDate: string
      bgQuantity: uint
      bgQtyType: int
      bgCurrency: string
      bgNoLegs: seq[NoLegs]
      bgNoUnderlyings: seq[NoUnderlyings]
      bgTradingSessionID: string
      bgTradingSessionSubID: string
      bgSettlSessID: string
      bgSettlSessSubID: string
      bgClearingBusinessDate: string
      bgResponseTransportType: int
      bgResponseDestination: string
      bgText: string
      bgEncodedTextLen: uint
      bgEncodedText: string
    of mtBH:
      bhConfirmReqID: string
      bhConfirmType: int
      bhNoOrders: seq[NoOrders]
      bhAllocID: string
      bhSecondaryAllocID: string
      bhIndividualAllocID: string
      bhTransactTime: string
      bhAllocAccount: string
      bhAllocAcctIDSource: int
      bhAllocAccountType: int
      bhText: string
      bhEncodedTextLen: uint
      bhEncodedText: string
    signatureLength: uint
    signature: string
    checkSum: string

proc parseNoHops(s: string, r: var seq[NoHops], pos: var int)

proc parseNoIOIQualifiers(s: string, r: var seq[NoIOIQualifiers], pos: var int)

proc parseNoRoutingIDs(s: string, r: var seq[NoRoutingIDs], pos: var int)

proc parseNoContraBrokers(s: string, r: var seq[NoContraBrokers], pos: var int)

proc parseNoMsgTypes(s: string, r: var seq[NoMsgTypes], pos: var int)

proc parseNoRelatedSym(s: string, r: var seq[NoRelatedSym], pos: var int)

proc parseNoLinesOfText(s: string, r: var seq[NoLinesOfText], pos: var int)

proc parseNoTradingSessions(s: string, r: var seq[NoTradingSessions], pos: var int)

proc parseNoOrders(s: string, r: var seq[NoOrders], pos: var int)

proc parseNoExecs(s: string, r: var seq[NoExecs], pos: var int)

proc parseNoSettlInst(s: string, r: var seq[NoSettlInst], pos: var int)

proc parseNoMDEntryTypes(s: string, r: var seq[NoMDEntryTypes], pos: var int)

proc parseNoMDEntries(s: string, r: var seq[NoMDEntries], pos: var int)

proc parseNoAltMDSource(s: string, r: var seq[NoAltMDSource], pos: var int)

proc parseNoQuoteSets(s: string, r: var seq[NoQuoteSets], pos: var int)

proc parseNoQuoteEntries(s: string, r: var seq[NoQuoteEntries], pos: var int)

proc parseNoBidDescriptors(s: string, r: var seq[NoBidDescriptors], pos: var int)

proc parseNoBidComponents(s: string, r: var seq[NoBidComponents], pos: var int)

proc parseNoStrikes(s: string, r: var seq[NoStrikes], pos: var int)

proc parseNoRegistDtls(s: string, r: var seq[NoRegistDtls], pos: var int)

proc parseNoDistribInsts(s: string, r: var seq[NoDistribInsts], pos: var int)

proc parseNoAffectedOrders(s: string, r: var seq[NoAffectedOrders], pos: var int)

proc parseNoSides(s: string, r: var seq[NoSides], pos: var int)

proc parseNoSecurityTypes(s: string, r: var seq[NoSecurityTypes], pos: var int)

proc parseNoInstrAttrib(s: string, r: var seq[NoInstrAttrib], pos: var int)

proc parseNoNested3PartySubIDs(s: string, r: var seq[NoNested3PartySubIDs], pos: var int)

proc parseNoNested3PartyIDs(s: string, r: var seq[NoNested3PartyIDs], pos: var int)

proc parseNoLegAllocs(s: string, r: var seq[NoLegAllocs], pos: var int)

proc parseNoDates(s: string, r: var seq[NoDates], pos: var int)

proc parseNoPosAmt(s: string, r: var seq[NoPosAmt], pos: var int)

proc parseNoTrdRegTimestamps(s: string, r: var seq[NoTrdRegTimestamps], pos: var int)

proc parseNoContAmts(s: string, r: var seq[NoContAmts], pos: var int)

proc parseNoAllocs(s: string, r: var seq[NoAllocs], pos: var int)

proc parseNoStipulations(s: string, r: var seq[NoStipulations], pos: var int)

proc parseNoQuoteQualifiers(s: string, r: var seq[NoQuoteQualifiers], pos: var int)

proc parseNoPartyIDs(s: string, r: var seq[NoPartyIDs], pos: var int)

proc parseNoSecurityAltID(s: string, r: var seq[NoSecurityAltID], pos: var int)

proc parseNoEvents(s: string, r: var seq[NoEvents], pos: var int)

proc parseNoUnderlyings(s: string, r: var seq[NoUnderlyings], pos: var int)

proc parseNoLegs(s: string, r: var seq[NoLegs], pos: var int)

proc parseNoCapacities(s: string, r: var seq[NoCapacities], pos: var int)

proc parseNoPositions(s: string, r: var seq[NoPositions], pos: var int)

proc parseNoLegStipulations(s: string, r: var seq[NoLegStipulations], pos: var int)

proc parseNoMiscFees(s: string, r: var seq[NoMiscFees], pos: var int)

proc parseNoClearingInstructions(s: string, r: var seq[NoClearingInstructions], pos: var int)

proc parseNoDlvyInst(s: string, r: var seq[NoDlvyInst], pos: var int)

proc parseNoNestedPartySubIDs(s: string, r: var seq[NoNestedPartySubIDs], pos: var int)

proc parseNoNestedPartyIDs(s: string, r: var seq[NoNestedPartyIDs], pos: var int)

proc parseNoTrades(s: string, r: var seq[NoTrades], pos: var int)

proc parseNoCollInquiryQualifier(s: string, r: var seq[NoCollInquiryQualifier], pos: var int)

proc parseNoSettlPartySubIDs(s: string, r: var seq[NoSettlPartySubIDs], pos: var int)

proc parseNoSettlPartyIDs(s: string, r: var seq[NoSettlPartyIDs], pos: var int)

proc parseNoCompIDs(s: string, r: var seq[NoCompIDs], pos: var int)

proc parseNoPartySubIDs(s: string, r: var seq[NoPartySubIDs], pos: var int)

proc parseNoLegSecurityAltID(s: string, r: var seq[NoLegSecurityAltID], pos: var int)

proc parseNoUnderlyingSecurityAltID(s: string, r: var seq[NoUnderlyingSecurityAltID], pos: var int)

proc parseNoUnderlyingStips(s: string, r: var seq[NoUnderlyingStips], pos: var int)

proc parseNoNested2PartySubIDs(s: string, r: var seq[NoNested2PartySubIDs], pos: var int)

proc parseNoNested2PartyIDs(s: string, r: var seq[NoNested2PartyIDs], pos: var int)

proc parseNoHops(s: string, r: var seq[NoHops], pos: var int) =
  var
    t, sep: uint16
    v: NoHops
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
    of 628: parseStr(s, v.hopCompID, pos)
    of 629: parseStr(s, v.hopSendingTime, pos)
    of 630: parseUInt(s, v.hopRefID, pos)
    else:
      r.add v
      pos = j
      return

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
    of 655: parseStr(s, v.contraLegRefID, pos)
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
    of 55: parseStr(s, v.symbol, pos)
    of 65: parseStr(s, v.symbolSfx, pos)
    of 48: parseStr(s, v.securityID, pos)
    of 22: parseStr(s, v.securityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, v.noSecurityAltID, pos)
    of 460: parseInt(s, v.product, pos)
    of 461: parseStr(s, v.cFICode, pos)
    of 167: parseStr(s, v.securityType, pos)
    of 762: parseStr(s, v.securitySubType, pos)
    of 200: parseStr(s, v.maturityMonthYear, pos)
    of 541: parseStr(s, v.maturityDate, pos)
    of 201: parseInt(s, v.putOrCall, pos)
    of 224: parseStr(s, v.couponPaymentDate, pos)
    of 225: parseStr(s, v.issueDate, pos)
    of 239: parseStr(s, v.repoCollateralSecurityType, pos)
    of 226: parseInt(s, v.repurchaseTerm, pos)
    of 227: parseFloat(s, v.repurchaseRate, pos)
    of 228: parseStr(s, v.factor, pos)
    of 255: parseStr(s, v.creditRating, pos)
    of 543: parseStr(s, v.instrRegistry, pos)
    of 470: parseStr(s, v.countryOfIssue, pos)
    of 471: parseStr(s, v.stateOrProvinceOfIssue, pos)
    of 472: parseStr(s, v.localeOfIssue, pos)
    of 240: parseStr(s, v.redemptionDate, pos)
    of 202: parseFloat(s, v.strikePrice, pos)
    of 947: parseStr(s, v.strikeCurrency, pos)
    of 206: parseChar(s, v.optAttribute, pos)
    of 231: parseStr(s, v.contractMultiplier, pos)
    of 223: parseFloat(s, v.couponRate, pos)
    of 207: parseStr(s, v.securityExchange, pos)
    of 106: parseStr(s, v.issuer, pos)
    of 348: parseUInt(s, v.encodedIssuerLen, pos)
    of 349: parseStr(s, v.encodedIssuer, pos)
    of 107: parseStr(s, v.securityDesc, pos)
    of 350: parseUInt(s, v.encodedSecurityDescLen, pos)
    of 351: parseStr(s, v.encodedSecurityDesc, pos)
    of 691: parseStr(s, v.pool, pos)
    of 667: parseStr(s, v.contractSettlMonth, pos)
    of 875: parseInt(s, v.cPProgram, pos)
    of 876: parseStr(s, v.cPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, v.noEvents, pos)
    of 873: parseStr(s, v.datedDate, pos)
    of 874: parseStr(s, v.interestAccrualDate, pos)
    of 913: parseStr(s, v.agreementDesc, pos)
    of 914: parseStr(s, v.agreementID, pos)
    of 915: parseStr(s, v.agreementDate, pos)
    of 918: parseStr(s, v.agreementCurrency, pos)
    of 788: parseInt(s, v.terminationType, pos)
    of 916: parseStr(s, v.startDate, pos)
    of 917: parseStr(s, v.endDate, pos)
    of 919: parseInt(s, v.deliveryType, pos)
    of 898: parseFloat(s, v.marginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, v.noUnderlyings, pos)
    of 140: parseFloat(s, v.prevClosePx, pos)
    of 303: parseInt(s, v.quoteRequestType, pos)
    of 537: parseInt(s, v.quoteType, pos)
    of 336: parseStr(s, v.tradingSessionID, pos)
    of 625: parseStr(s, v.tradingSessionSubID, pos)
    of 229: parseStr(s, v.tradeOriginationDate, pos)
    of 54: parseChar(s, v.side, pos)
    of 854: parseInt(s, v.qtyType, pos)
    of 38: parseUInt(s, v.orderQty, pos)
    of 152: parseUInt(s, v.cashOrderQty, pos)
    of 516: parseFloat(s, v.orderPercent, pos)
    of 468: parseChar(s, v.roundingDirection, pos)
    of 469: parseStr(s, v.roundingModulus, pos)
    of 63: parseChar(s, v.settlType, pos)
    of 64: parseStr(s, v.settlDate, pos)
    of 193: parseStr(s, v.settlDate2, pos)
    of 192: parseUInt(s, v.orderQty2, pos)
    of 15: parseStr(s, v.currency, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, v.noStipulations, pos)
    of 1: parseStr(s, v.account, pos)
    of 660: parseInt(s, v.acctIDSource, pos)
    of 581: parseInt(s, v.accountType, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, v.noLegs, pos)
    of 735: skipValue(s, pos); parseNoQuoteQualifiers(s, v.noQuoteQualifiers, pos)
    of 692: parseInt(s, v.quotePriceType, pos)
    of 40: parseChar(s, v.ordType, pos)
    of 62: parseStr(s, v.validUntilTime, pos)
    of 126: parseStr(s, v.expireTime, pos)
    of 60: parseStr(s, v.transactTime, pos)
    of 218: parseFloat(s, v.spread, pos)
    of 220: parseStr(s, v.benchmarkCurveCurrency, pos)
    of 221: parseStr(s, v.benchmarkCurveName, pos)
    of 222: parseStr(s, v.benchmarkCurvePoint, pos)
    of 662: parseFloat(s, v.benchmarkPrice, pos)
    of 663: parseInt(s, v.benchmarkPriceType, pos)
    of 699: parseStr(s, v.benchmarkSecurityID, pos)
    of 761: parseStr(s, v.benchmarkSecurityIDSource, pos)
    of 423: parseInt(s, v.priceType, pos)
    of 44: parseFloat(s, v.price, pos)
    of 640: parseFloat(s, v.price2, pos)
    of 235: parseStr(s, v.yieldType, pos)
    of 236: parseFloat(s, v.`yield`, pos)
    of 701: parseStr(s, v.yieldCalcDate, pos)
    of 696: parseStr(s, v.yieldRedemptionDate, pos)
    of 697: parseFloat(s, v.yieldRedemptionPrice, pos)
    of 698: parseInt(s, v.yieldRedemptionPriceType, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, v.noPartyIDs, pos)
    of 668: parseInt(s, v.deliveryForm, pos)
    of 869: parseFloat(s, v.pctAtRisk, pos)
    of 870: skipValue(s, pos); parseNoInstrAttrib(s, v.noInstrAttrib, pos)
    of 561: parseUInt(s, v.roundLot, pos)
    of 562: parseUInt(s, v.minTradeVol, pos)
    of 827: parseInt(s, v.expirationCycle, pos)
    of 58: parseStr(s, v.text, pos)
    of 354: parseUInt(s, v.encodedTextLen, pos)
    of 355: parseStr(s, v.encodedText, pos)
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
    of 354: parseUInt(s, v.encodedTextLen, pos)
    of 355: parseStr(s, v.encodedText, pos)
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
    of 625: parseStr(s, v.tradingSessionSubID, pos)
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
    of 526: parseStr(s, v.secondaryClOrdID, pos)
    of 67: parseInt(s, v.listSeqNo, pos)
    of 583: parseStr(s, v.clOrdLinkID, pos)
    of 160: parseChar(s, v.settlInstMode, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, v.noPartyIDs, pos)
    of 229: parseStr(s, v.tradeOriginationDate, pos)
    of 75: parseStr(s, v.tradeDate, pos)
    of 1: parseStr(s, v.account, pos)
    of 660: parseInt(s, v.acctIDSource, pos)
    of 581: parseInt(s, v.accountType, pos)
    of 589: parseChar(s, v.dayBookingInst, pos)
    of 590: parseChar(s, v.bookingUnit, pos)
    of 70: parseStr(s, v.allocID, pos)
    of 591: parseChar(s, v.preallocMethod, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, v.noAllocs, pos)
    of 63: parseChar(s, v.settlType, pos)
    of 64: parseStr(s, v.settlDate, pos)
    of 544: parseChar(s, v.cashMargin, pos)
    of 635: parseStr(s, v.clearingFeeIndicator, pos)
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
    of 22: parseStr(s, v.securityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, v.noSecurityAltID, pos)
    of 460: parseInt(s, v.product, pos)
    of 461: parseStr(s, v.cFICode, pos)
    of 167: parseStr(s, v.securityType, pos)
    of 762: parseStr(s, v.securitySubType, pos)
    of 200: parseStr(s, v.maturityMonthYear, pos)
    of 541: parseStr(s, v.maturityDate, pos)
    of 201: parseInt(s, v.putOrCall, pos)
    of 224: parseStr(s, v.couponPaymentDate, pos)
    of 225: parseStr(s, v.issueDate, pos)
    of 239: parseStr(s, v.repoCollateralSecurityType, pos)
    of 226: parseInt(s, v.repurchaseTerm, pos)
    of 227: parseFloat(s, v.repurchaseRate, pos)
    of 228: parseStr(s, v.factor, pos)
    of 255: parseStr(s, v.creditRating, pos)
    of 543: parseStr(s, v.instrRegistry, pos)
    of 470: parseStr(s, v.countryOfIssue, pos)
    of 471: parseStr(s, v.stateOrProvinceOfIssue, pos)
    of 472: parseStr(s, v.localeOfIssue, pos)
    of 240: parseStr(s, v.redemptionDate, pos)
    of 202: parseFloat(s, v.strikePrice, pos)
    of 947: parseStr(s, v.strikeCurrency, pos)
    of 206: parseChar(s, v.optAttribute, pos)
    of 231: parseStr(s, v.contractMultiplier, pos)
    of 223: parseFloat(s, v.couponRate, pos)
    of 207: parseStr(s, v.securityExchange, pos)
    of 106: parseStr(s, v.issuer, pos)
    of 348: parseUInt(s, v.encodedIssuerLen, pos)
    of 349: parseStr(s, v.encodedIssuer, pos)
    of 107: parseStr(s, v.securityDesc, pos)
    of 350: parseUInt(s, v.encodedSecurityDescLen, pos)
    of 351: parseStr(s, v.encodedSecurityDesc, pos)
    of 691: parseStr(s, v.pool, pos)
    of 667: parseStr(s, v.contractSettlMonth, pos)
    of 875: parseInt(s, v.cPProgram, pos)
    of 876: parseStr(s, v.cPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, v.noEvents, pos)
    of 873: parseStr(s, v.datedDate, pos)
    of 874: parseStr(s, v.interestAccrualDate, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, v.noUnderlyings, pos)
    of 140: parseFloat(s, v.prevClosePx, pos)
    of 54: parseChar(s, v.side, pos)
    of 401: parseInt(s, v.sideValueInd, pos)
    of 114: parseBool(s, v.locateReqd, pos)
    of 60: parseStr(s, v.transactTime, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, v.noStipulations, pos)
    of 854: parseInt(s, v.qtyType, pos)
    of 38: parseUInt(s, v.orderQty, pos)
    of 152: parseUInt(s, v.cashOrderQty, pos)
    of 516: parseFloat(s, v.orderPercent, pos)
    of 468: parseChar(s, v.roundingDirection, pos)
    of 469: parseStr(s, v.roundingModulus, pos)
    of 40: parseChar(s, v.ordType, pos)
    of 423: parseInt(s, v.priceType, pos)
    of 44: parseFloat(s, v.price, pos)
    of 99: parseFloat(s, v.stopPx, pos)
    of 218: parseFloat(s, v.spread, pos)
    of 220: parseStr(s, v.benchmarkCurveCurrency, pos)
    of 221: parseStr(s, v.benchmarkCurveName, pos)
    of 222: parseStr(s, v.benchmarkCurvePoint, pos)
    of 662: parseFloat(s, v.benchmarkPrice, pos)
    of 663: parseInt(s, v.benchmarkPriceType, pos)
    of 699: parseStr(s, v.benchmarkSecurityID, pos)
    of 761: parseStr(s, v.benchmarkSecurityIDSource, pos)
    of 235: parseStr(s, v.yieldType, pos)
    of 236: parseFloat(s, v.`yield`, pos)
    of 701: parseStr(s, v.yieldCalcDate, pos)
    of 696: parseStr(s, v.yieldRedemptionDate, pos)
    of 697: parseFloat(s, v.yieldRedemptionPrice, pos)
    of 698: parseInt(s, v.yieldRedemptionPriceType, pos)
    of 15: parseStr(s, v.currency, pos)
    of 376: parseStr(s, v.complianceID, pos)
    of 377: parseBool(s, v.solicitedFlag, pos)
    of 23: parseStr(s, v.iOIID, pos)
    of 117: parseStr(s, v.quoteID, pos)
    of 59: parseChar(s, v.timeInForce, pos)
    of 168: parseStr(s, v.effectiveTime, pos)
    of 432: parseStr(s, v.expireDate, pos)
    of 126: parseStr(s, v.expireTime, pos)
    of 427: parseInt(s, v.gTBookingInst, pos)
    of 12: parseUInt(s, v.commission, pos)
    of 13: parseChar(s, v.commType, pos)
    of 479: parseStr(s, v.commCurrency, pos)
    of 497: parseChar(s, v.fundRenewWaiv, pos)
    of 528: parseChar(s, v.orderCapacity, pos)
    of 529: parseStr(s, v.orderRestrictions, pos)
    of 582: parseInt(s, v.custOrderCapacity, pos)
    of 121: parseBool(s, v.forexReq, pos)
    of 120: parseStr(s, v.settlCurrency, pos)
    of 775: parseInt(s, v.bookingType, pos)
    of 58: parseStr(s, v.text, pos)
    of 354: parseUInt(s, v.encodedTextLen, pos)
    of 355: parseStr(s, v.encodedText, pos)
    of 193: parseStr(s, v.settlDate2, pos)
    of 192: parseUInt(s, v.orderQty2, pos)
    of 640: parseFloat(s, v.price2, pos)
    of 77: parseChar(s, v.positionEffect, pos)
    of 203: parseInt(s, v.coveredOrUncovered, pos)
    of 210: parseUInt(s, v.maxShow, pos)
    of 211: parseStr(s, v.pegOffsetValue, pos)
    of 835: parseInt(s, v.pegMoveType, pos)
    of 836: parseInt(s, v.pegOffsetType, pos)
    of 837: parseInt(s, v.pegLimitType, pos)
    of 838: parseInt(s, v.pegRoundDirection, pos)
    of 840: parseInt(s, v.pegScope, pos)
    of 388: parseChar(s, v.discretionInst, pos)
    of 389: parseStr(s, v.discretionOffsetValue, pos)
    of 841: parseInt(s, v.discretionMoveType, pos)
    of 842: parseInt(s, v.discretionOffsetType, pos)
    of 843: parseInt(s, v.discretionLimitType, pos)
    of 844: parseInt(s, v.discretionRoundDirection, pos)
    of 846: parseInt(s, v.discretionScope, pos)
    of 847: parseInt(s, v.targetStrategy, pos)
    of 848: parseStr(s, v.targetStrategyParameters, pos)
    of 849: parseFloat(s, v.participationRate, pos)
    of 494: parseStr(s, v.designation, pos)
    of 37: parseStr(s, v.orderID, pos)
    of 198: parseStr(s, v.secondaryOrderID, pos)
    of 66: parseStr(s, v.listID, pos)
    of 756: skipValue(s, pos); parseNoNested2PartyIDs(s, v.noNested2PartyIDs, pos)
    of 799: parseFloat(s, v.orderAvgPx, pos)
    of 800: parseUInt(s, v.orderBookingQty, pos)
    of 14: parseUInt(s, v.cumQty, pos)
    of 39: parseChar(s, v.ordStatus, pos)
    of 636: parseBool(s, v.workingIndicator, pos)
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
    of 32: parseUInt(s, v.lastQty, pos)
    of 17: parseStr(s, v.execID, pos)
    of 527: parseStr(s, v.secondaryExecID, pos)
    of 31: parseFloat(s, v.lastPx, pos)
    of 669: parseFloat(s, v.lastParPx, pos)
    of 29: parseChar(s, v.lastCapacity, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoSettlInst(s: string, r: var seq[NoSettlInst], pos: var int) =
  var
    t, sep: uint16
    v: NoSettlInst
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
    of 162: parseStr(s, v.settlInstID, pos)
    of 163: parseChar(s, v.settlInstTransType, pos)
    of 214: parseStr(s, v.settlInstRefID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, v.noPartyIDs, pos)
    of 54: parseChar(s, v.side, pos)
    of 460: parseInt(s, v.product, pos)
    of 167: parseStr(s, v.securityType, pos)
    of 461: parseStr(s, v.cFICode, pos)
    of 168: parseStr(s, v.effectiveTime, pos)
    of 126: parseStr(s, v.expireTime, pos)
    of 779: parseStr(s, v.lastUpdateTime, pos)
    of 172: parseInt(s, v.settlDeliveryType, pos)
    of 169: parseInt(s, v.standInstDbType, pos)
    of 170: parseStr(s, v.standInstDbName, pos)
    of 171: parseStr(s, v.standInstDbID, pos)
    of 85: skipValue(s, pos); parseNoDlvyInst(s, v.noDlvyInst, pos)
    of 492: parseInt(s, v.paymentMethod, pos)
    of 476: parseStr(s, v.paymentRef, pos)
    of 488: parseStr(s, v.cardHolderName, pos)
    of 489: parseStr(s, v.cardNumber, pos)
    of 503: parseStr(s, v.cardStartDate, pos)
    of 490: parseStr(s, v.cardExpDate, pos)
    of 491: parseStr(s, v.cardIssNum, pos)
    of 504: parseStr(s, v.paymentDate, pos)
    of 505: parseStr(s, v.paymentRemitterID, pos)
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
    of 110: parseUInt(s, v.minQty, pos)
    of 18: parseStr(s, v.execInst, pos)
    of 287: parseInt(s, v.sellerDays, pos)
    of 37: parseStr(s, v.orderID, pos)
    of 299: parseStr(s, v.quoteEntryID, pos)
    of 288: parseStr(s, v.mDEntryBuyer, pos)
    of 289: parseStr(s, v.mDEntrySeller, pos)
    of 346: parseInt(s, v.numberOfOrders, pos)
    of 290: parseInt(s, v.mDEntryPositionNo, pos)
    of 546: parseStr(s, v.scope, pos)
    of 811: parseStr(s, v.priceDelta, pos)
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
    of 22: parseStr(s, v.securityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, v.noSecurityAltID, pos)
    of 460: parseInt(s, v.product, pos)
    of 461: parseStr(s, v.cFICode, pos)
    of 167: parseStr(s, v.securityType, pos)
    of 762: parseStr(s, v.securitySubType, pos)
    of 200: parseStr(s, v.maturityMonthYear, pos)
    of 541: parseStr(s, v.maturityDate, pos)
    of 201: parseInt(s, v.putOrCall, pos)
    of 224: parseStr(s, v.couponPaymentDate, pos)
    of 225: parseStr(s, v.issueDate, pos)
    of 239: parseStr(s, v.repoCollateralSecurityType, pos)
    of 226: parseInt(s, v.repurchaseTerm, pos)
    of 227: parseFloat(s, v.repurchaseRate, pos)
    of 228: parseStr(s, v.factor, pos)
    of 255: parseStr(s, v.creditRating, pos)
    of 543: parseStr(s, v.instrRegistry, pos)
    of 470: parseStr(s, v.countryOfIssue, pos)
    of 471: parseStr(s, v.stateOrProvinceOfIssue, pos)
    of 472: parseStr(s, v.localeOfIssue, pos)
    of 240: parseStr(s, v.redemptionDate, pos)
    of 202: parseFloat(s, v.strikePrice, pos)
    of 947: parseStr(s, v.strikeCurrency, pos)
    of 206: parseChar(s, v.optAttribute, pos)
    of 231: parseStr(s, v.contractMultiplier, pos)
    of 223: parseFloat(s, v.couponRate, pos)
    of 207: parseStr(s, v.securityExchange, pos)
    of 106: parseStr(s, v.issuer, pos)
    of 348: parseUInt(s, v.encodedIssuerLen, pos)
    of 349: parseStr(s, v.encodedIssuer, pos)
    of 107: parseStr(s, v.securityDesc, pos)
    of 350: parseUInt(s, v.encodedSecurityDescLen, pos)
    of 351: parseStr(s, v.encodedSecurityDesc, pos)
    of 691: parseStr(s, v.pool, pos)
    of 667: parseStr(s, v.contractSettlMonth, pos)
    of 875: parseInt(s, v.cPProgram, pos)
    of 876: parseStr(s, v.cPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, v.noEvents, pos)
    of 873: parseStr(s, v.datedDate, pos)
    of 874: parseStr(s, v.interestAccrualDate, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, v.noUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, v.noLegs, pos)
    of 291: parseStr(s, v.financialStatus, pos)
    of 292: parseStr(s, v.corporateAction, pos)
    of 451: parseFloat(s, v.netChgPrevDay, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoAltMDSource(s: string, r: var seq[NoAltMDSource], pos: var int) =
  var
    t, sep: uint16
    v: NoAltMDSource
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
    of 817: parseStr(s, v.altMDSourceID, pos)
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
    of 305: parseStr(s, v.underlyingSecurityIDSource, pos)
    of 457: skipValue(s, pos); parseNoUnderlyingSecurityAltID(s, v.noUnderlyingSecurityAltID, pos)
    of 462: parseInt(s, v.underlyingProduct, pos)
    of 463: parseStr(s, v.underlyingCFICode, pos)
    of 310: parseStr(s, v.underlyingSecurityType, pos)
    of 763: parseStr(s, v.underlyingSecuritySubType, pos)
    of 313: parseStr(s, v.underlyingMaturityMonthYear, pos)
    of 542: parseStr(s, v.underlyingMaturityDate, pos)
    of 315: parseInt(s, v.underlyingPutOrCall, pos)
    of 241: parseStr(s, v.underlyingCouponPaymentDate, pos)
    of 242: parseStr(s, v.underlyingIssueDate, pos)
    of 243: parseStr(s, v.underlyingRepoCollateralSecurityType, pos)
    of 244: parseInt(s, v.underlyingRepurchaseTerm, pos)
    of 245: parseFloat(s, v.underlyingRepurchaseRate, pos)
    of 246: parseStr(s, v.underlyingFactor, pos)
    of 256: parseStr(s, v.underlyingCreditRating, pos)
    of 595: parseStr(s, v.underlyingInstrRegistry, pos)
    of 592: parseStr(s, v.underlyingCountryOfIssue, pos)
    of 593: parseStr(s, v.underlyingStateOrProvinceOfIssue, pos)
    of 594: parseStr(s, v.underlyingLocaleOfIssue, pos)
    of 247: parseStr(s, v.underlyingRedemptionDate, pos)
    of 316: parseFloat(s, v.underlyingStrikePrice, pos)
    of 941: parseStr(s, v.underlyingStrikeCurrency, pos)
    of 317: parseChar(s, v.underlyingOptAttribute, pos)
    of 436: parseStr(s, v.underlyingContractMultiplier, pos)
    of 435: parseFloat(s, v.underlyingCouponRate, pos)
    of 308: parseStr(s, v.underlyingSecurityExchange, pos)
    of 306: parseStr(s, v.underlyingIssuer, pos)
    of 362: parseUInt(s, v.encodedUnderlyingIssuerLen, pos)
    of 363: parseStr(s, v.encodedUnderlyingIssuer, pos)
    of 307: parseStr(s, v.underlyingSecurityDesc, pos)
    of 364: parseUInt(s, v.encodedUnderlyingSecurityDescLen, pos)
    of 365: parseStr(s, v.encodedUnderlyingSecurityDesc, pos)
    of 877: parseStr(s, v.underlyingCPProgram, pos)
    of 878: parseStr(s, v.underlyingCPRegType, pos)
    of 318: parseStr(s, v.underlyingCurrency, pos)
    of 879: parseUInt(s, v.underlyingQty, pos)
    of 810: parseFloat(s, v.underlyingPx, pos)
    of 882: parseFloat(s, v.underlyingDirtyPrice, pos)
    of 883: parseFloat(s, v.underlyingEndPrice, pos)
    of 884: parseUInt(s, v.underlyingStartValue, pos)
    of 885: parseUInt(s, v.underlyingCurrentValue, pos)
    of 886: parseUInt(s, v.underlyingEndValue, pos)
    of 887: skipValue(s, pos); parseNoUnderlyingStips(s, v.noUnderlyingStips, pos)
    of 304: parseInt(s, v.totNoQuoteEntries, pos)
    of 893: parseBool(s, v.lastFragment, pos)
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
    of 22: parseStr(s, v.securityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, v.noSecurityAltID, pos)
    of 460: parseInt(s, v.product, pos)
    of 461: parseStr(s, v.cFICode, pos)
    of 167: parseStr(s, v.securityType, pos)
    of 762: parseStr(s, v.securitySubType, pos)
    of 200: parseStr(s, v.maturityMonthYear, pos)
    of 541: parseStr(s, v.maturityDate, pos)
    of 201: parseInt(s, v.putOrCall, pos)
    of 224: parseStr(s, v.couponPaymentDate, pos)
    of 225: parseStr(s, v.issueDate, pos)
    of 239: parseStr(s, v.repoCollateralSecurityType, pos)
    of 226: parseInt(s, v.repurchaseTerm, pos)
    of 227: parseFloat(s, v.repurchaseRate, pos)
    of 228: parseStr(s, v.factor, pos)
    of 255: parseStr(s, v.creditRating, pos)
    of 543: parseStr(s, v.instrRegistry, pos)
    of 470: parseStr(s, v.countryOfIssue, pos)
    of 471: parseStr(s, v.stateOrProvinceOfIssue, pos)
    of 472: parseStr(s, v.localeOfIssue, pos)
    of 240: parseStr(s, v.redemptionDate, pos)
    of 202: parseFloat(s, v.strikePrice, pos)
    of 947: parseStr(s, v.strikeCurrency, pos)
    of 206: parseChar(s, v.optAttribute, pos)
    of 231: parseStr(s, v.contractMultiplier, pos)
    of 223: parseFloat(s, v.couponRate, pos)
    of 207: parseStr(s, v.securityExchange, pos)
    of 106: parseStr(s, v.issuer, pos)
    of 348: parseUInt(s, v.encodedIssuerLen, pos)
    of 349: parseStr(s, v.encodedIssuer, pos)
    of 107: parseStr(s, v.securityDesc, pos)
    of 350: parseUInt(s, v.encodedSecurityDescLen, pos)
    of 351: parseStr(s, v.encodedSecurityDesc, pos)
    of 691: parseStr(s, v.pool, pos)
    of 667: parseStr(s, v.contractSettlMonth, pos)
    of 875: parseInt(s, v.cPProgram, pos)
    of 876: parseStr(s, v.cPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, v.noEvents, pos)
    of 873: parseStr(s, v.datedDate, pos)
    of 874: parseStr(s, v.interestAccrualDate, pos)
    of 913: parseStr(s, v.agreementDesc, pos)
    of 914: parseStr(s, v.agreementID, pos)
    of 915: parseStr(s, v.agreementDate, pos)
    of 918: parseStr(s, v.agreementCurrency, pos)
    of 788: parseInt(s, v.terminationType, pos)
    of 916: parseStr(s, v.startDate, pos)
    of 917: parseStr(s, v.endDate, pos)
    of 919: parseInt(s, v.deliveryType, pos)
    of 898: parseFloat(s, v.marginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, v.noUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, v.noLegs, pos)
    of 299: parseStr(s, v.quoteEntryID, pos)
    of 132: parseFloat(s, v.bidPx, pos)
    of 133: parseFloat(s, v.offerPx, pos)
    of 134: parseUInt(s, v.bidSize, pos)
    of 135: parseUInt(s, v.offerSize, pos)
    of 62: parseStr(s, v.validUntilTime, pos)
    of 188: parseFloat(s, v.bidSpotRate, pos)
    of 190: parseFloat(s, v.offerSpotRate, pos)
    of 189: parseFloat(s, v.bidForwardPoints, pos)
    of 191: parseFloat(s, v.offerForwardPoints, pos)
    of 631: parseFloat(s, v.midPx, pos)
    of 632: parseFloat(s, v.bidYield, pos)
    of 633: parseFloat(s, v.midYield, pos)
    of 634: parseFloat(s, v.offerYield, pos)
    of 60: parseStr(s, v.transactTime, pos)
    of 336: parseStr(s, v.tradingSessionID, pos)
    of 625: parseStr(s, v.tradingSessionSubID, pos)
    of 64: parseStr(s, v.settlDate, pos)
    of 40: parseChar(s, v.ordType, pos)
    of 193: parseStr(s, v.settlDate2, pos)
    of 192: parseUInt(s, v.orderQty2, pos)
    of 642: parseFloat(s, v.bidForwardPoints2, pos)
    of 643: parseFloat(s, v.offerForwardPoints2, pos)
    of 15: parseStr(s, v.currency, pos)
    of 368: parseInt(s, v.quoteEntryRejectReason, pos)
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
    of 402: parseFloat(s, v.liquidityPctLow, pos)
    of 403: parseFloat(s, v.liquidityPctHigh, pos)
    of 405: parseFloat(s, v.eFPTrackingError, pos)
    of 406: parseUInt(s, v.fairValue, pos)
    of 407: parseFloat(s, v.outsideIndexPct, pos)
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
    of 625: parseStr(s, v.tradingSessionSubID, pos)
    of 430: parseInt(s, v.netGrossInd, pos)
    of 63: parseChar(s, v.settlType, pos)
    of 64: parseStr(s, v.settlDate, pos)
    of 1: parseStr(s, v.account, pos)
    of 660: parseInt(s, v.acctIDSource, pos)
    of 12: parseUInt(s, v.commission, pos)
    of 13: parseChar(s, v.commType, pos)
    of 479: parseStr(s, v.commCurrency, pos)
    of 497: parseChar(s, v.fundRenewWaiv, pos)
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
    of 22: parseStr(s, v.securityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, v.noSecurityAltID, pos)
    of 460: parseInt(s, v.product, pos)
    of 461: parseStr(s, v.cFICode, pos)
    of 167: parseStr(s, v.securityType, pos)
    of 762: parseStr(s, v.securitySubType, pos)
    of 200: parseStr(s, v.maturityMonthYear, pos)
    of 541: parseStr(s, v.maturityDate, pos)
    of 201: parseInt(s, v.putOrCall, pos)
    of 224: parseStr(s, v.couponPaymentDate, pos)
    of 225: parseStr(s, v.issueDate, pos)
    of 239: parseStr(s, v.repoCollateralSecurityType, pos)
    of 226: parseInt(s, v.repurchaseTerm, pos)
    of 227: parseFloat(s, v.repurchaseRate, pos)
    of 228: parseStr(s, v.factor, pos)
    of 255: parseStr(s, v.creditRating, pos)
    of 543: parseStr(s, v.instrRegistry, pos)
    of 470: parseStr(s, v.countryOfIssue, pos)
    of 471: parseStr(s, v.stateOrProvinceOfIssue, pos)
    of 472: parseStr(s, v.localeOfIssue, pos)
    of 240: parseStr(s, v.redemptionDate, pos)
    of 202: parseFloat(s, v.strikePrice, pos)
    of 947: parseStr(s, v.strikeCurrency, pos)
    of 206: parseChar(s, v.optAttribute, pos)
    of 231: parseStr(s, v.contractMultiplier, pos)
    of 223: parseFloat(s, v.couponRate, pos)
    of 207: parseStr(s, v.securityExchange, pos)
    of 106: parseStr(s, v.issuer, pos)
    of 348: parseUInt(s, v.encodedIssuerLen, pos)
    of 349: parseStr(s, v.encodedIssuer, pos)
    of 107: parseStr(s, v.securityDesc, pos)
    of 350: parseUInt(s, v.encodedSecurityDescLen, pos)
    of 351: parseStr(s, v.encodedSecurityDesc, pos)
    of 691: parseStr(s, v.pool, pos)
    of 667: parseStr(s, v.contractSettlMonth, pos)
    of 875: parseInt(s, v.cPProgram, pos)
    of 876: parseStr(s, v.cPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, v.noEvents, pos)
    of 873: parseStr(s, v.datedDate, pos)
    of 874: parseStr(s, v.interestAccrualDate, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoRegistDtls(s: string, r: var seq[NoRegistDtls], pos: var int) =
  var
    t, sep: uint16
    v: NoRegistDtls
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
    of 509: parseStr(s, v.registDtls, pos)
    of 511: parseStr(s, v.registEmail, pos)
    of 474: parseStr(s, v.mailingDtls, pos)
    of 482: parseStr(s, v.mailingInst, pos)
    of 539: skipValue(s, pos); parseNoNestedPartyIDs(s, v.noNestedPartyIDs, pos)
    of 522: parseInt(s, v.ownerType, pos)
    of 486: parseStr(s, v.dateOfBirth, pos)
    of 475: parseStr(s, v.investorCountryOfResidence, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoDistribInsts(s: string, r: var seq[NoDistribInsts], pos: var int) =
  var
    t, sep: uint16
    v: NoDistribInsts
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
    of 477: parseInt(s, v.distribPaymentMethod, pos)
    of 512: parseFloat(s, v.distribPercentage, pos)
    of 478: parseStr(s, v.cashDistribCurr, pos)
    of 498: parseStr(s, v.cashDistribAgentName, pos)
    of 499: parseStr(s, v.cashDistribAgentCode, pos)
    of 500: parseStr(s, v.cashDistribAgentAcctNumber, pos)
    of 501: parseStr(s, v.cashDistribPayRef, pos)
    of 502: parseStr(s, v.cashDistribAgentAcctName, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoAffectedOrders(s: string, r: var seq[NoAffectedOrders], pos: var int) =
  var
    t, sep: uint16
    v: NoAffectedOrders
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
    of 41: parseStr(s, v.origClOrdID, pos)
    of 535: parseStr(s, v.affectedOrderID, pos)
    of 536: parseStr(s, v.affectedSecondaryOrderID, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoSides(s: string, r: var seq[NoSides], pos: var int) =
  var
    t, sep: uint16
    v: NoSides
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
    of 54: parseChar(s, v.side, pos)
    of 11: parseStr(s, v.clOrdID, pos)
    of 526: parseStr(s, v.secondaryClOrdID, pos)
    of 583: parseStr(s, v.clOrdLinkID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, v.noPartyIDs, pos)
    of 229: parseStr(s, v.tradeOriginationDate, pos)
    of 75: parseStr(s, v.tradeDate, pos)
    of 1: parseStr(s, v.account, pos)
    of 660: parseInt(s, v.acctIDSource, pos)
    of 581: parseInt(s, v.accountType, pos)
    of 589: parseChar(s, v.dayBookingInst, pos)
    of 590: parseChar(s, v.bookingUnit, pos)
    of 591: parseChar(s, v.preallocMethod, pos)
    of 70: parseStr(s, v.allocID, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, v.noAllocs, pos)
    of 854: parseInt(s, v.qtyType, pos)
    of 38: parseUInt(s, v.orderQty, pos)
    of 152: parseUInt(s, v.cashOrderQty, pos)
    of 516: parseFloat(s, v.orderPercent, pos)
    of 468: parseChar(s, v.roundingDirection, pos)
    of 469: parseStr(s, v.roundingModulus, pos)
    of 12: parseUInt(s, v.commission, pos)
    of 13: parseChar(s, v.commType, pos)
    of 479: parseStr(s, v.commCurrency, pos)
    of 497: parseChar(s, v.fundRenewWaiv, pos)
    of 528: parseChar(s, v.orderCapacity, pos)
    of 529: parseStr(s, v.orderRestrictions, pos)
    of 582: parseInt(s, v.custOrderCapacity, pos)
    of 121: parseBool(s, v.forexReq, pos)
    of 120: parseStr(s, v.settlCurrency, pos)
    of 775: parseInt(s, v.bookingType, pos)
    of 58: parseStr(s, v.text, pos)
    of 354: parseUInt(s, v.encodedTextLen, pos)
    of 355: parseStr(s, v.encodedText, pos)
    of 77: parseChar(s, v.positionEffect, pos)
    of 203: parseInt(s, v.coveredOrUncovered, pos)
    of 544: parseChar(s, v.cashMargin, pos)
    of 635: parseStr(s, v.clearingFeeIndicator, pos)
    of 377: parseBool(s, v.solicitedFlag, pos)
    of 659: parseStr(s, v.sideComplianceID, pos)
    of 41: parseStr(s, v.origClOrdID, pos)
    of 586: parseStr(s, v.origOrdModTime, pos)
    of 376: parseStr(s, v.complianceID, pos)
    of 37: parseStr(s, v.orderID, pos)
    of 198: parseStr(s, v.secondaryOrderID, pos)
    of 66: parseStr(s, v.listID, pos)
    of 81: parseChar(s, v.processCode, pos)
    of 575: parseBool(s, v.oddLot, pos)
    of 576: skipValue(s, pos); parseNoClearingInstructions(s, v.noClearingInstructions, pos)
    of 578: parseStr(s, v.tradeInputSource, pos)
    of 579: parseStr(s, v.tradeInputDevice, pos)
    of 821: parseStr(s, v.orderInputDevice, pos)
    of 15: parseStr(s, v.currency, pos)
    of 40: parseChar(s, v.ordType, pos)
    of 18: parseStr(s, v.execInst, pos)
    of 483: parseStr(s, v.transBkdTime, pos)
    of 336: parseStr(s, v.tradingSessionID, pos)
    of 625: parseStr(s, v.tradingSessionSubID, pos)
    of 943: parseStr(s, v.timeBracket, pos)
    of 381: parseUInt(s, v.grossTradeAmt, pos)
    of 157: parseInt(s, v.numDaysInterest, pos)
    of 230: parseStr(s, v.exDate, pos)
    of 158: parseFloat(s, v.accruedInterestRate, pos)
    of 159: parseUInt(s, v.accruedInterestAmt, pos)
    of 738: parseUInt(s, v.interestAtMaturity, pos)
    of 920: parseUInt(s, v.endAccruedInterestAmt, pos)
    of 921: parseUInt(s, v.startCash, pos)
    of 922: parseUInt(s, v.endCash, pos)
    of 238: parseUInt(s, v.concession, pos)
    of 237: parseUInt(s, v.totalTakedown, pos)
    of 118: parseUInt(s, v.netMoney, pos)
    of 119: parseUInt(s, v.settlCurrAmt, pos)
    of 155: parseStr(s, v.settlCurrFxRate, pos)
    of 156: parseChar(s, v.settlCurrFxRateCalc, pos)
    of 752: parseInt(s, v.sideMultiLegReportingType, pos)
    of 518: skipValue(s, pos); parseNoContAmts(s, v.noContAmts, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, v.noStipulations, pos)
    of 136: skipValue(s, pos); parseNoMiscFees(s, v.noMiscFees, pos)
    of 825: parseStr(s, v.exchangeRule, pos)
    of 826: parseInt(s, v.tradeAllocIndicator, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoSecurityTypes(s: string, r: var seq[NoSecurityTypes], pos: var int) =
  var
    t, sep: uint16
    v: NoSecurityTypes
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
    of 167: parseStr(s, v.securityType, pos)
    of 762: parseStr(s, v.securitySubType, pos)
    of 460: parseInt(s, v.product, pos)
    of 461: parseStr(s, v.cFICode, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoInstrAttrib(s: string, r: var seq[NoInstrAttrib], pos: var int) =
  var
    t, sep: uint16
    v: NoInstrAttrib
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
    of 871: parseInt(s, v.instrAttribType, pos)
    of 872: parseStr(s, v.instrAttribValue, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoNested3PartySubIDs(s: string, r: var seq[NoNested3PartySubIDs], pos: var int) =
  var
    t, sep: uint16
    v: NoNested3PartySubIDs
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
    of 953: parseStr(s, v.nested3PartySubID, pos)
    of 954: parseInt(s, v.nested3PartySubIDType, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoNested3PartyIDs(s: string, r: var seq[NoNested3PartyIDs], pos: var int) =
  var
    t, sep: uint16
    v: NoNested3PartyIDs
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
    of 949: parseStr(s, v.nested3PartyID, pos)
    of 950: parseChar(s, v.nested3PartyIDSource, pos)
    of 951: parseInt(s, v.nested3PartyRole, pos)
    of 952: skipValue(s, pos); parseNoNested3PartySubIDs(s, v.noNested3PartySubIDs, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoLegAllocs(s: string, r: var seq[NoLegAllocs], pos: var int) =
  var
    t, sep: uint16
    v: NoLegAllocs
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
    of 671: parseStr(s, v.legAllocAccount, pos)
    of 672: parseStr(s, v.legIndividualAllocID, pos)
    of 756: skipValue(s, pos); parseNoNested2PartyIDs(s, v.noNested2PartyIDs, pos)
    of 673: parseUInt(s, v.legAllocQty, pos)
    of 674: parseStr(s, v.legAllocAcctIDSource, pos)
    of 675: parseStr(s, v.legSettlCurrency, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoDates(s: string, r: var seq[NoDates], pos: var int) =
  var
    t, sep: uint16
    v: NoDates
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
    of 75: parseStr(s, v.tradeDate, pos)
    of 60: parseStr(s, v.transactTime, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoPosAmt(s: string, r: var seq[NoPosAmt], pos: var int) =
  var
    t, sep: uint16
    v: NoPosAmt
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
    of 707: parseStr(s, v.posAmtType, pos)
    of 708: parseUInt(s, v.posAmt, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoTrdRegTimestamps(s: string, r: var seq[NoTrdRegTimestamps], pos: var int) =
  var
    t, sep: uint16
    v: NoTrdRegTimestamps
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
    of 769: parseStr(s, v.trdRegTimestamp, pos)
    of 770: parseInt(s, v.trdRegTimestampType, pos)
    of 771: parseStr(s, v.trdRegTimestampOrigin, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoContAmts(s: string, r: var seq[NoContAmts], pos: var int) =
  var
    t, sep: uint16
    v: NoContAmts
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
    of 519: parseInt(s, v.contAmtType, pos)
    of 520: parseStr(s, v.contAmtValue, pos)
    of 521: parseStr(s, v.contAmtCurr, pos)
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
    of 661: parseInt(s, v.allocAcctIDSource, pos)
    of 736: parseStr(s, v.allocSettlCurrency, pos)
    of 467: parseStr(s, v.individualAllocID, pos)
    of 539: skipValue(s, pos); parseNoNestedPartyIDs(s, v.noNestedPartyIDs, pos)
    of 80: parseUInt(s, v.allocQty, pos)
    of 573: parseChar(s, v.matchStatus, pos)
    of 366: parseFloat(s, v.allocPrice, pos)
    of 81: parseChar(s, v.processCode, pos)
    of 208: parseBool(s, v.notifyBrokerOfCredit, pos)
    of 209: parseInt(s, v.allocHandlInst, pos)
    of 161: parseStr(s, v.allocText, pos)
    of 360: parseUInt(s, v.encodedAllocTextLen, pos)
    of 361: parseStr(s, v.encodedAllocText, pos)
    of 12: parseUInt(s, v.commission, pos)
    of 13: parseChar(s, v.commType, pos)
    of 479: parseStr(s, v.commCurrency, pos)
    of 497: parseChar(s, v.fundRenewWaiv, pos)
    of 153: parseFloat(s, v.allocAvgPx, pos)
    of 154: parseUInt(s, v.allocNetMoney, pos)
    of 119: parseUInt(s, v.settlCurrAmt, pos)
    of 737: parseUInt(s, v.allocSettlCurrAmt, pos)
    of 120: parseStr(s, v.settlCurrency, pos)
    of 155: parseStr(s, v.settlCurrFxRate, pos)
    of 156: parseChar(s, v.settlCurrFxRateCalc, pos)
    of 742: parseUInt(s, v.allocAccruedInterestAmt, pos)
    of 741: parseUInt(s, v.allocInterestAtMaturity, pos)
    of 136: skipValue(s, pos); parseNoMiscFees(s, v.noMiscFees, pos)
    of 576: skipValue(s, pos); parseNoClearingInstructions(s, v.noClearingInstructions, pos)
    of 780: parseInt(s, v.allocSettlInstType, pos)
    of 172: parseInt(s, v.settlDeliveryType, pos)
    of 169: parseInt(s, v.standInstDbType, pos)
    of 170: parseStr(s, v.standInstDbName, pos)
    of 171: parseStr(s, v.standInstDbID, pos)
    of 85: skipValue(s, pos); parseNoDlvyInst(s, v.noDlvyInst, pos)
    of 776: parseInt(s, v.individualAllocRejCode, pos)
    of 948: skipValue(s, pos); parseNoNested3PartyIDs(s, v.noNested3PartyIDs, pos)
    of 756: skipValue(s, pos); parseNoNested2PartyIDs(s, v.noNested2PartyIDs, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoStipulations(s: string, r: var seq[NoStipulations], pos: var int) =
  var
    t, sep: uint16
    v: NoStipulations
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
    of 233: parseStr(s, v.stipulationType, pos)
    of 234: parseStr(s, v.stipulationValue, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoQuoteQualifiers(s: string, r: var seq[NoQuoteQualifiers], pos: var int) =
  var
    t, sep: uint16
    v: NoQuoteQualifiers
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
    of 695: parseChar(s, v.quoteQualifier, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoPartyIDs(s: string, r: var seq[NoPartyIDs], pos: var int) =
  var
    t, sep: uint16
    v: NoPartyIDs
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
    of 448: parseStr(s, v.partyID, pos)
    of 447: parseChar(s, v.partyIDSource, pos)
    of 452: parseInt(s, v.partyRole, pos)
    of 802: skipValue(s, pos); parseNoPartySubIDs(s, v.noPartySubIDs, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoSecurityAltID(s: string, r: var seq[NoSecurityAltID], pos: var int) =
  var
    t, sep: uint16
    v: NoSecurityAltID
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
    of 455: parseStr(s, v.securityAltID, pos)
    of 456: parseStr(s, v.securityAltIDSource, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoEvents(s: string, r: var seq[NoEvents], pos: var int) =
  var
    t, sep: uint16
    v: NoEvents
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
    of 865: parseInt(s, v.eventType, pos)
    of 866: parseStr(s, v.eventDate, pos)
    of 867: parseFloat(s, v.eventPx, pos)
    of 868: parseStr(s, v.eventText, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoUnderlyings(s: string, r: var seq[NoUnderlyings], pos: var int) =
  var
    t, sep: uint16
    v: NoUnderlyings
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
    of 311: parseStr(s, v.underlyingSymbol, pos)
    of 312: parseStr(s, v.underlyingSymbolSfx, pos)
    of 309: parseStr(s, v.underlyingSecurityID, pos)
    of 305: parseStr(s, v.underlyingSecurityIDSource, pos)
    of 457: skipValue(s, pos); parseNoUnderlyingSecurityAltID(s, v.noUnderlyingSecurityAltID, pos)
    of 462: parseInt(s, v.underlyingProduct, pos)
    of 463: parseStr(s, v.underlyingCFICode, pos)
    of 310: parseStr(s, v.underlyingSecurityType, pos)
    of 763: parseStr(s, v.underlyingSecuritySubType, pos)
    of 313: parseStr(s, v.underlyingMaturityMonthYear, pos)
    of 542: parseStr(s, v.underlyingMaturityDate, pos)
    of 315: parseInt(s, v.underlyingPutOrCall, pos)
    of 241: parseStr(s, v.underlyingCouponPaymentDate, pos)
    of 242: parseStr(s, v.underlyingIssueDate, pos)
    of 243: parseStr(s, v.underlyingRepoCollateralSecurityType, pos)
    of 244: parseInt(s, v.underlyingRepurchaseTerm, pos)
    of 245: parseFloat(s, v.underlyingRepurchaseRate, pos)
    of 246: parseStr(s, v.underlyingFactor, pos)
    of 256: parseStr(s, v.underlyingCreditRating, pos)
    of 595: parseStr(s, v.underlyingInstrRegistry, pos)
    of 592: parseStr(s, v.underlyingCountryOfIssue, pos)
    of 593: parseStr(s, v.underlyingStateOrProvinceOfIssue, pos)
    of 594: parseStr(s, v.underlyingLocaleOfIssue, pos)
    of 247: parseStr(s, v.underlyingRedemptionDate, pos)
    of 316: parseFloat(s, v.underlyingStrikePrice, pos)
    of 941: parseStr(s, v.underlyingStrikeCurrency, pos)
    of 317: parseChar(s, v.underlyingOptAttribute, pos)
    of 436: parseStr(s, v.underlyingContractMultiplier, pos)
    of 435: parseFloat(s, v.underlyingCouponRate, pos)
    of 308: parseStr(s, v.underlyingSecurityExchange, pos)
    of 306: parseStr(s, v.underlyingIssuer, pos)
    of 362: parseUInt(s, v.encodedUnderlyingIssuerLen, pos)
    of 363: parseStr(s, v.encodedUnderlyingIssuer, pos)
    of 307: parseStr(s, v.underlyingSecurityDesc, pos)
    of 364: parseUInt(s, v.encodedUnderlyingSecurityDescLen, pos)
    of 365: parseStr(s, v.encodedUnderlyingSecurityDesc, pos)
    of 877: parseStr(s, v.underlyingCPProgram, pos)
    of 878: parseStr(s, v.underlyingCPRegType, pos)
    of 318: parseStr(s, v.underlyingCurrency, pos)
    of 879: parseUInt(s, v.underlyingQty, pos)
    of 810: parseFloat(s, v.underlyingPx, pos)
    of 882: parseFloat(s, v.underlyingDirtyPrice, pos)
    of 883: parseFloat(s, v.underlyingEndPrice, pos)
    of 884: parseUInt(s, v.underlyingStartValue, pos)
    of 885: parseUInt(s, v.underlyingCurrentValue, pos)
    of 886: parseUInt(s, v.underlyingEndValue, pos)
    of 887: skipValue(s, pos); parseNoUnderlyingStips(s, v.noUnderlyingStips, pos)
    of 140: parseFloat(s, v.prevClosePx, pos)
    of 11: parseStr(s, v.clOrdID, pos)
    of 526: parseStr(s, v.secondaryClOrdID, pos)
    of 54: parseChar(s, v.side, pos)
    of 44: parseFloat(s, v.price, pos)
    of 15: parseStr(s, v.currency, pos)
    of 58: parseStr(s, v.text, pos)
    of 354: parseUInt(s, v.encodedTextLen, pos)
    of 355: parseStr(s, v.encodedText, pos)
    of 732: parseFloat(s, v.underlyingSettlPrice, pos)
    of 733: parseInt(s, v.underlyingSettlPriceType, pos)
    of 944: parseInt(s, v.collAction, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoLegs(s: string, r: var seq[NoLegs], pos: var int) =
  var
    t, sep: uint16
    v: NoLegs
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
    of 600: parseStr(s, v.legSymbol, pos)
    of 601: parseStr(s, v.legSymbolSfx, pos)
    of 602: parseStr(s, v.legSecurityID, pos)
    of 603: parseStr(s, v.legSecurityIDSource, pos)
    of 604: skipValue(s, pos); parseNoLegSecurityAltID(s, v.noLegSecurityAltID, pos)
    of 607: parseInt(s, v.legProduct, pos)
    of 608: parseStr(s, v.legCFICode, pos)
    of 609: parseStr(s, v.legSecurityType, pos)
    of 764: parseStr(s, v.legSecuritySubType, pos)
    of 610: parseStr(s, v.legMaturityMonthYear, pos)
    of 611: parseStr(s, v.legMaturityDate, pos)
    of 248: parseStr(s, v.legCouponPaymentDate, pos)
    of 249: parseStr(s, v.legIssueDate, pos)
    of 250: parseStr(s, v.legRepoCollateralSecurityType, pos)
    of 251: parseInt(s, v.legRepurchaseTerm, pos)
    of 252: parseFloat(s, v.legRepurchaseRate, pos)
    of 253: parseStr(s, v.legFactor, pos)
    of 257: parseStr(s, v.legCreditRating, pos)
    of 599: parseStr(s, v.legInstrRegistry, pos)
    of 596: parseStr(s, v.legCountryOfIssue, pos)
    of 597: parseStr(s, v.legStateOrProvinceOfIssue, pos)
    of 598: parseStr(s, v.legLocaleOfIssue, pos)
    of 254: parseStr(s, v.legRedemptionDate, pos)
    of 612: parseFloat(s, v.legStrikePrice, pos)
    of 942: parseStr(s, v.legStrikeCurrency, pos)
    of 613: parseChar(s, v.legOptAttribute, pos)
    of 614: parseStr(s, v.legContractMultiplier, pos)
    of 615: parseFloat(s, v.legCouponRate, pos)
    of 616: parseStr(s, v.legSecurityExchange, pos)
    of 617: parseStr(s, v.legIssuer, pos)
    of 618: parseUInt(s, v.encodedLegIssuerLen, pos)
    of 619: parseStr(s, v.encodedLegIssuer, pos)
    of 620: parseStr(s, v.legSecurityDesc, pos)
    of 621: parseUInt(s, v.encodedLegSecurityDescLen, pos)
    of 622: parseStr(s, v.encodedLegSecurityDesc, pos)
    of 623: parseStr(s, v.legRatioQty, pos)
    of 624: parseChar(s, v.legSide, pos)
    of 556: parseStr(s, v.legCurrency, pos)
    of 740: parseStr(s, v.legPool, pos)
    of 739: parseStr(s, v.legDatedDate, pos)
    of 955: parseStr(s, v.legContractSettlMonth, pos)
    of 956: parseStr(s, v.legInterestAccrualDate, pos)
    of 682: parseStr(s, v.legIOIQty, pos)
    of 683: skipValue(s, pos); parseNoLegStipulations(s, v.noLegStipulations, pos)
    of 687: parseUInt(s, v.legQty, pos)
    of 690: parseInt(s, v.legSwapType, pos)
    of 564: parseChar(s, v.legPositionEffect, pos)
    of 565: parseInt(s, v.legCoveredOrUncovered, pos)
    of 539: skipValue(s, pos); parseNoNestedPartyIDs(s, v.noNestedPartyIDs, pos)
    of 654: parseStr(s, v.legRefID, pos)
    of 566: parseFloat(s, v.legPrice, pos)
    of 587: parseChar(s, v.legSettlType, pos)
    of 588: parseStr(s, v.legSettlDate, pos)
    of 637: parseFloat(s, v.legLastPx, pos)
    of 676: parseStr(s, v.legBenchmarkCurveCurrency, pos)
    of 677: parseStr(s, v.legBenchmarkCurveName, pos)
    of 678: parseStr(s, v.legBenchmarkCurvePoint, pos)
    of 679: parseFloat(s, v.legBenchmarkPrice, pos)
    of 680: parseInt(s, v.legBenchmarkPriceType, pos)
    of 686: parseInt(s, v.legPriceType, pos)
    of 681: parseFloat(s, v.legBidPx, pos)
    of 684: parseFloat(s, v.legOfferPx, pos)
    of 670: skipValue(s, pos); parseNoLegAllocs(s, v.noLegAllocs, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoCapacities(s: string, r: var seq[NoCapacities], pos: var int) =
  var
    t, sep: uint16
    v: NoCapacities
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
    of 528: parseChar(s, v.orderCapacity, pos)
    of 529: parseStr(s, v.orderRestrictions, pos)
    of 863: parseUInt(s, v.orderCapacityQty, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoPositions(s: string, r: var seq[NoPositions], pos: var int) =
  var
    t, sep: uint16
    v: NoPositions
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
    of 703: parseStr(s, v.posType, pos)
    of 704: parseUInt(s, v.longQty, pos)
    of 705: parseUInt(s, v.shortQty, pos)
    of 706: parseInt(s, v.posQtyStatus, pos)
    of 539: skipValue(s, pos); parseNoNestedPartyIDs(s, v.noNestedPartyIDs, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoLegStipulations(s: string, r: var seq[NoLegStipulations], pos: var int) =
  var
    t, sep: uint16
    v: NoLegStipulations
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
    of 688: parseStr(s, v.legStipulationType, pos)
    of 689: parseStr(s, v.legStipulationValue, pos)
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
    of 891: parseInt(s, v.miscFeeBasis, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoClearingInstructions(s: string, r: var seq[NoClearingInstructions], pos: var int) =
  var
    t, sep: uint16
    v: NoClearingInstructions
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
    of 577: parseInt(s, v.clearingInstruction, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoDlvyInst(s: string, r: var seq[NoDlvyInst], pos: var int) =
  var
    t, sep: uint16
    v: NoDlvyInst
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
    of 165: parseChar(s, v.settlInstSource, pos)
    of 787: parseChar(s, v.dlvyInstType, pos)
    of 781: skipValue(s, pos); parseNoSettlPartyIDs(s, v.noSettlPartyIDs, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoNestedPartySubIDs(s: string, r: var seq[NoNestedPartySubIDs], pos: var int) =
  var
    t, sep: uint16
    v: NoNestedPartySubIDs
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
    of 545: parseStr(s, v.nestedPartySubID, pos)
    of 805: parseInt(s, v.nestedPartySubIDType, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoNestedPartyIDs(s: string, r: var seq[NoNestedPartyIDs], pos: var int) =
  var
    t, sep: uint16
    v: NoNestedPartyIDs
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
    of 524: parseStr(s, v.nestedPartyID, pos)
    of 525: parseChar(s, v.nestedPartyIDSource, pos)
    of 538: parseInt(s, v.nestedPartyRole, pos)
    of 804: skipValue(s, pos); parseNoNestedPartySubIDs(s, v.noNestedPartySubIDs, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoTrades(s: string, r: var seq[NoTrades], pos: var int) =
  var
    t, sep: uint16
    v: NoTrades
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
    of 571: parseStr(s, v.tradeReportID, pos)
    of 818: parseStr(s, v.secondaryTradeReportID, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoCollInquiryQualifier(s: string, r: var seq[NoCollInquiryQualifier], pos: var int) =
  var
    t, sep: uint16
    v: NoCollInquiryQualifier
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
    of 896: parseInt(s, v.collInquiryQualifier, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoSettlPartySubIDs(s: string, r: var seq[NoSettlPartySubIDs], pos: var int) =
  var
    t, sep: uint16
    v: NoSettlPartySubIDs
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
    of 785: parseStr(s, v.settlPartySubID, pos)
    of 786: parseInt(s, v.settlPartySubIDType, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoSettlPartyIDs(s: string, r: var seq[NoSettlPartyIDs], pos: var int) =
  var
    t, sep: uint16
    v: NoSettlPartyIDs
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
    of 782: parseStr(s, v.settlPartyID, pos)
    of 783: parseChar(s, v.settlPartyIDSource, pos)
    of 784: parseInt(s, v.settlPartyRole, pos)
    of 801: skipValue(s, pos); parseNoSettlPartySubIDs(s, v.noSettlPartySubIDs, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoCompIDs(s: string, r: var seq[NoCompIDs], pos: var int) =
  var
    t, sep: uint16
    v: NoCompIDs
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
    of 930: parseStr(s, v.refCompID, pos)
    of 931: parseStr(s, v.refSubID, pos)
    of 283: parseStr(s, v.locationID, pos)
    of 284: parseStr(s, v.deskID, pos)
    of 928: parseInt(s, v.statusValue, pos)
    of 929: parseStr(s, v.statusText, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoPartySubIDs(s: string, r: var seq[NoPartySubIDs], pos: var int) =
  var
    t, sep: uint16
    v: NoPartySubIDs
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
    of 523: parseStr(s, v.partySubID, pos)
    of 803: parseInt(s, v.partySubIDType, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoLegSecurityAltID(s: string, r: var seq[NoLegSecurityAltID], pos: var int) =
  var
    t, sep: uint16
    v: NoLegSecurityAltID
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
    of 605: parseStr(s, v.legSecurityAltID, pos)
    of 606: parseStr(s, v.legSecurityAltIDSource, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoUnderlyingSecurityAltID(s: string, r: var seq[NoUnderlyingSecurityAltID], pos: var int) =
  var
    t, sep: uint16
    v: NoUnderlyingSecurityAltID
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
    of 458: parseStr(s, v.underlyingSecurityAltID, pos)
    of 459: parseStr(s, v.underlyingSecurityAltIDSource, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoUnderlyingStips(s: string, r: var seq[NoUnderlyingStips], pos: var int) =
  var
    t, sep: uint16
    v: NoUnderlyingStips
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
    of 888: parseStr(s, v.underlyingStipType, pos)
    of 889: parseStr(s, v.underlyingStipValue, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoNested2PartySubIDs(s: string, r: var seq[NoNested2PartySubIDs], pos: var int) =
  var
    t, sep: uint16
    v: NoNested2PartySubIDs
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
    of 760: parseStr(s, v.nested2PartySubID, pos)
    of 807: parseInt(s, v.nested2PartySubIDType, pos)
    else:
      r.add v
      pos = j
      return

proc parseNoNested2PartyIDs(s: string, r: var seq[NoNested2PartyIDs], pos: var int) =
  var
    t, sep: uint16
    v: NoNested2PartyIDs
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
    of 757: parseStr(s, v.nested2PartyID, pos)
    of 758: parseChar(s, v.nested2PartyIDSource, pos)
    of 759: parseInt(s, v.nested2PartyRole, pos)
    of 806: skipValue(s, pos); parseNoNested2PartySubIDs(s, v.noNested2PartySubIDs, pos)
    else:
      r.add v
      pos = j
      return

proc parsemt0(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mt0)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 112: parseStr(s, result.t0TestReqID, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt1(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mt1)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 112: parseStr(s, result.t1TestReqID, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt2(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mt2)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 7: parseUInt(s, result.t2BeginSeqNo, pos)
    of 16: parseUInt(s, result.t2EndSeqNo, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt3(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mt3)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 45: parseUInt(s, result.t3RefSeqNum, pos)
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

proc parsemt4(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mt4)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 123: parseBool(s, result.t4GapFillFlag, pos)
    of 36: parseUInt(s, result.t4NewSeqNo, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt5(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mt5)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 58: parseStr(s, result.t5Text, pos)
    of 354: parseUInt(s, result.t5EncodedTextLen, pos)
    of 355: parseStr(s, result.t5EncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt6(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mt6)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 23: parseStr(s, result.t6IOIID, pos)
    of 28: parseChar(s, result.t6IOITransType, pos)
    of 26: parseStr(s, result.t6IOIRefID, pos)
    of 55: parseStr(s, result.t6Symbol, pos)
    of 65: parseStr(s, result.t6SymbolSfx, pos)
    of 48: parseStr(s, result.t6SecurityID, pos)
    of 22: parseStr(s, result.t6SecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.t6NoSecurityAltID, pos)
    of 460: parseInt(s, result.t6Product, pos)
    of 461: parseStr(s, result.t6CFICode, pos)
    of 167: parseStr(s, result.t6SecurityType, pos)
    of 762: parseStr(s, result.t6SecuritySubType, pos)
    of 200: parseStr(s, result.t6MaturityMonthYear, pos)
    of 541: parseStr(s, result.t6MaturityDate, pos)
    of 201: parseInt(s, result.t6PutOrCall, pos)
    of 224: parseStr(s, result.t6CouponPaymentDate, pos)
    of 225: parseStr(s, result.t6IssueDate, pos)
    of 239: parseStr(s, result.t6RepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.t6RepurchaseTerm, pos)
    of 227: parseFloat(s, result.t6RepurchaseRate, pos)
    of 228: parseStr(s, result.t6Factor, pos)
    of 255: parseStr(s, result.t6CreditRating, pos)
    of 543: parseStr(s, result.t6InstrRegistry, pos)
    of 470: parseStr(s, result.t6CountryOfIssue, pos)
    of 471: parseStr(s, result.t6StateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.t6LocaleOfIssue, pos)
    of 240: parseStr(s, result.t6RedemptionDate, pos)
    of 202: parseFloat(s, result.t6StrikePrice, pos)
    of 947: parseStr(s, result.t6StrikeCurrency, pos)
    of 206: parseChar(s, result.t6OptAttribute, pos)
    of 231: parseStr(s, result.t6ContractMultiplier, pos)
    of 223: parseFloat(s, result.t6CouponRate, pos)
    of 207: parseStr(s, result.t6SecurityExchange, pos)
    of 106: parseStr(s, result.t6Issuer, pos)
    of 348: parseUInt(s, result.t6EncodedIssuerLen, pos)
    of 349: parseStr(s, result.t6EncodedIssuer, pos)
    of 107: parseStr(s, result.t6SecurityDesc, pos)
    of 350: parseUInt(s, result.t6EncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.t6EncodedSecurityDesc, pos)
    of 691: parseStr(s, result.t6Pool, pos)
    of 667: parseStr(s, result.t6ContractSettlMonth, pos)
    of 875: parseInt(s, result.t6CPProgram, pos)
    of 876: parseStr(s, result.t6CPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.t6NoEvents, pos)
    of 873: parseStr(s, result.t6DatedDate, pos)
    of 874: parseStr(s, result.t6InterestAccrualDate, pos)
    of 913: parseStr(s, result.t6AgreementDesc, pos)
    of 914: parseStr(s, result.t6AgreementID, pos)
    of 915: parseStr(s, result.t6AgreementDate, pos)
    of 918: parseStr(s, result.t6AgreementCurrency, pos)
    of 788: parseInt(s, result.t6TerminationType, pos)
    of 916: parseStr(s, result.t6StartDate, pos)
    of 917: parseStr(s, result.t6EndDate, pos)
    of 919: parseInt(s, result.t6DeliveryType, pos)
    of 898: parseFloat(s, result.t6MarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.t6NoUnderlyings, pos)
    of 54: parseChar(s, result.t6Side, pos)
    of 854: parseInt(s, result.t6QtyType, pos)
    of 38: parseUInt(s, result.t6OrderQty, pos)
    of 152: parseUInt(s, result.t6CashOrderQty, pos)
    of 516: parseFloat(s, result.t6OrderPercent, pos)
    of 468: parseChar(s, result.t6RoundingDirection, pos)
    of 469: parseStr(s, result.t6RoundingModulus, pos)
    of 27: parseStr(s, result.t6IOIQty, pos)
    of 15: parseStr(s, result.t6Currency, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.t6NoStipulations, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.t6NoLegs, pos)
    of 423: parseInt(s, result.t6PriceType, pos)
    of 44: parseFloat(s, result.t6Price, pos)
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
    of 218: parseFloat(s, result.t6Spread, pos)
    of 220: parseStr(s, result.t6BenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.t6BenchmarkCurveName, pos)
    of 222: parseStr(s, result.t6BenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.t6BenchmarkPrice, pos)
    of 663: parseInt(s, result.t6BenchmarkPriceType, pos)
    of 699: parseStr(s, result.t6BenchmarkSecurityID, pos)
    of 761: parseStr(s, result.t6BenchmarkSecurityIDSource, pos)
    of 235: parseStr(s, result.t6YieldType, pos)
    of 236: parseFloat(s, result.t6Yield, pos)
    of 701: parseStr(s, result.t6YieldCalcDate, pos)
    of 696: parseStr(s, result.t6YieldRedemptionDate, pos)
    of 697: parseFloat(s, result.t6YieldRedemptionPrice, pos)
    of 698: parseInt(s, result.t6YieldRedemptionPriceType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt7(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mt7)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 2: parseStr(s, result.t7AdvId, pos)
    of 5: parseStr(s, result.t7AdvTransType, pos)
    of 3: parseStr(s, result.t7AdvRefID, pos)
    of 55: parseStr(s, result.t7Symbol, pos)
    of 65: parseStr(s, result.t7SymbolSfx, pos)
    of 48: parseStr(s, result.t7SecurityID, pos)
    of 22: parseStr(s, result.t7SecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.t7NoSecurityAltID, pos)
    of 460: parseInt(s, result.t7Product, pos)
    of 461: parseStr(s, result.t7CFICode, pos)
    of 167: parseStr(s, result.t7SecurityType, pos)
    of 762: parseStr(s, result.t7SecuritySubType, pos)
    of 200: parseStr(s, result.t7MaturityMonthYear, pos)
    of 541: parseStr(s, result.t7MaturityDate, pos)
    of 201: parseInt(s, result.t7PutOrCall, pos)
    of 224: parseStr(s, result.t7CouponPaymentDate, pos)
    of 225: parseStr(s, result.t7IssueDate, pos)
    of 239: parseStr(s, result.t7RepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.t7RepurchaseTerm, pos)
    of 227: parseFloat(s, result.t7RepurchaseRate, pos)
    of 228: parseStr(s, result.t7Factor, pos)
    of 255: parseStr(s, result.t7CreditRating, pos)
    of 543: parseStr(s, result.t7InstrRegistry, pos)
    of 470: parseStr(s, result.t7CountryOfIssue, pos)
    of 471: parseStr(s, result.t7StateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.t7LocaleOfIssue, pos)
    of 240: parseStr(s, result.t7RedemptionDate, pos)
    of 202: parseFloat(s, result.t7StrikePrice, pos)
    of 947: parseStr(s, result.t7StrikeCurrency, pos)
    of 206: parseChar(s, result.t7OptAttribute, pos)
    of 231: parseStr(s, result.t7ContractMultiplier, pos)
    of 223: parseFloat(s, result.t7CouponRate, pos)
    of 207: parseStr(s, result.t7SecurityExchange, pos)
    of 106: parseStr(s, result.t7Issuer, pos)
    of 348: parseUInt(s, result.t7EncodedIssuerLen, pos)
    of 349: parseStr(s, result.t7EncodedIssuer, pos)
    of 107: parseStr(s, result.t7SecurityDesc, pos)
    of 350: parseUInt(s, result.t7EncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.t7EncodedSecurityDesc, pos)
    of 691: parseStr(s, result.t7Pool, pos)
    of 667: parseStr(s, result.t7ContractSettlMonth, pos)
    of 875: parseInt(s, result.t7CPProgram, pos)
    of 876: parseStr(s, result.t7CPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.t7NoEvents, pos)
    of 873: parseStr(s, result.t7DatedDate, pos)
    of 874: parseStr(s, result.t7InterestAccrualDate, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.t7NoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.t7NoUnderlyings, pos)
    of 4: parseChar(s, result.t7AdvSide, pos)
    of 53: parseUInt(s, result.t7Quantity, pos)
    of 854: parseInt(s, result.t7QtyType, pos)
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
    of 625: parseStr(s, result.t7TradingSessionSubID, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt8(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mt8)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 37: parseStr(s, result.t8OrderID, pos)
    of 198: parseStr(s, result.t8SecondaryOrderID, pos)
    of 526: parseStr(s, result.t8SecondaryClOrdID, pos)
    of 527: parseStr(s, result.t8SecondaryExecID, pos)
    of 11: parseStr(s, result.t8ClOrdID, pos)
    of 41: parseStr(s, result.t8OrigClOrdID, pos)
    of 583: parseStr(s, result.t8ClOrdLinkID, pos)
    of 693: parseStr(s, result.t8QuoteRespID, pos)
    of 790: parseStr(s, result.t8OrdStatusReqID, pos)
    of 584: parseStr(s, result.t8MassStatusReqID, pos)
    of 911: parseInt(s, result.t8TotNumReports, pos)
    of 912: parseBool(s, result.t8LastRptRequested, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.t8NoPartyIDs, pos)
    of 229: parseStr(s, result.t8TradeOriginationDate, pos)
    of 382: skipValue(s, pos); parseNoContraBrokers(s, result.t8NoContraBrokers, pos)
    of 66: parseStr(s, result.t8ListID, pos)
    of 548: parseStr(s, result.t8CrossID, pos)
    of 551: parseStr(s, result.t8OrigCrossID, pos)
    of 549: parseInt(s, result.t8CrossType, pos)
    of 17: parseStr(s, result.t8ExecID, pos)
    of 19: parseStr(s, result.t8ExecRefID, pos)
    of 150: parseChar(s, result.t8ExecType, pos)
    of 39: parseChar(s, result.t8OrdStatus, pos)
    of 636: parseBool(s, result.t8WorkingIndicator, pos)
    of 103: parseInt(s, result.t8OrdRejReason, pos)
    of 378: parseInt(s, result.t8ExecRestatementReason, pos)
    of 1: parseStr(s, result.t8Account, pos)
    of 660: parseInt(s, result.t8AcctIDSource, pos)
    of 581: parseInt(s, result.t8AccountType, pos)
    of 589: parseChar(s, result.t8DayBookingInst, pos)
    of 590: parseChar(s, result.t8BookingUnit, pos)
    of 591: parseChar(s, result.t8PreallocMethod, pos)
    of 63: parseChar(s, result.t8SettlType, pos)
    of 64: parseStr(s, result.t8SettlDate, pos)
    of 544: parseChar(s, result.t8CashMargin, pos)
    of 635: parseStr(s, result.t8ClearingFeeIndicator, pos)
    of 55: parseStr(s, result.t8Symbol, pos)
    of 65: parseStr(s, result.t8SymbolSfx, pos)
    of 48: parseStr(s, result.t8SecurityID, pos)
    of 22: parseStr(s, result.t8SecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.t8NoSecurityAltID, pos)
    of 460: parseInt(s, result.t8Product, pos)
    of 461: parseStr(s, result.t8CFICode, pos)
    of 167: parseStr(s, result.t8SecurityType, pos)
    of 762: parseStr(s, result.t8SecuritySubType, pos)
    of 200: parseStr(s, result.t8MaturityMonthYear, pos)
    of 541: parseStr(s, result.t8MaturityDate, pos)
    of 201: parseInt(s, result.t8PutOrCall, pos)
    of 224: parseStr(s, result.t8CouponPaymentDate, pos)
    of 225: parseStr(s, result.t8IssueDate, pos)
    of 239: parseStr(s, result.t8RepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.t8RepurchaseTerm, pos)
    of 227: parseFloat(s, result.t8RepurchaseRate, pos)
    of 228: parseStr(s, result.t8Factor, pos)
    of 255: parseStr(s, result.t8CreditRating, pos)
    of 543: parseStr(s, result.t8InstrRegistry, pos)
    of 470: parseStr(s, result.t8CountryOfIssue, pos)
    of 471: parseStr(s, result.t8StateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.t8LocaleOfIssue, pos)
    of 240: parseStr(s, result.t8RedemptionDate, pos)
    of 202: parseFloat(s, result.t8StrikePrice, pos)
    of 947: parseStr(s, result.t8StrikeCurrency, pos)
    of 206: parseChar(s, result.t8OptAttribute, pos)
    of 231: parseStr(s, result.t8ContractMultiplier, pos)
    of 223: parseFloat(s, result.t8CouponRate, pos)
    of 207: parseStr(s, result.t8SecurityExchange, pos)
    of 106: parseStr(s, result.t8Issuer, pos)
    of 348: parseUInt(s, result.t8EncodedIssuerLen, pos)
    of 349: parseStr(s, result.t8EncodedIssuer, pos)
    of 107: parseStr(s, result.t8SecurityDesc, pos)
    of 350: parseUInt(s, result.t8EncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.t8EncodedSecurityDesc, pos)
    of 691: parseStr(s, result.t8Pool, pos)
    of 667: parseStr(s, result.t8ContractSettlMonth, pos)
    of 875: parseInt(s, result.t8CPProgram, pos)
    of 876: parseStr(s, result.t8CPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.t8NoEvents, pos)
    of 873: parseStr(s, result.t8DatedDate, pos)
    of 874: parseStr(s, result.t8InterestAccrualDate, pos)
    of 913: parseStr(s, result.t8AgreementDesc, pos)
    of 914: parseStr(s, result.t8AgreementID, pos)
    of 915: parseStr(s, result.t8AgreementDate, pos)
    of 918: parseStr(s, result.t8AgreementCurrency, pos)
    of 788: parseInt(s, result.t8TerminationType, pos)
    of 916: parseStr(s, result.t8StartDate, pos)
    of 917: parseStr(s, result.t8EndDate, pos)
    of 919: parseInt(s, result.t8DeliveryType, pos)
    of 898: parseFloat(s, result.t8MarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.t8NoUnderlyings, pos)
    of 54: parseChar(s, result.t8Side, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.t8NoStipulations, pos)
    of 854: parseInt(s, result.t8QtyType, pos)
    of 38: parseUInt(s, result.t8OrderQty, pos)
    of 152: parseUInt(s, result.t8CashOrderQty, pos)
    of 516: parseFloat(s, result.t8OrderPercent, pos)
    of 468: parseChar(s, result.t8RoundingDirection, pos)
    of 469: parseStr(s, result.t8RoundingModulus, pos)
    of 40: parseChar(s, result.t8OrdType, pos)
    of 423: parseInt(s, result.t8PriceType, pos)
    of 44: parseFloat(s, result.t8Price, pos)
    of 99: parseFloat(s, result.t8StopPx, pos)
    of 211: parseStr(s, result.t8PegOffsetValue, pos)
    of 835: parseInt(s, result.t8PegMoveType, pos)
    of 836: parseInt(s, result.t8PegOffsetType, pos)
    of 837: parseInt(s, result.t8PegLimitType, pos)
    of 838: parseInt(s, result.t8PegRoundDirection, pos)
    of 840: parseInt(s, result.t8PegScope, pos)
    of 388: parseChar(s, result.t8DiscretionInst, pos)
    of 389: parseStr(s, result.t8DiscretionOffsetValue, pos)
    of 841: parseInt(s, result.t8DiscretionMoveType, pos)
    of 842: parseInt(s, result.t8DiscretionOffsetType, pos)
    of 843: parseInt(s, result.t8DiscretionLimitType, pos)
    of 844: parseInt(s, result.t8DiscretionRoundDirection, pos)
    of 846: parseInt(s, result.t8DiscretionScope, pos)
    of 839: parseFloat(s, result.t8PeggedPrice, pos)
    of 845: parseFloat(s, result.t8DiscretionPrice, pos)
    of 847: parseInt(s, result.t8TargetStrategy, pos)
    of 848: parseStr(s, result.t8TargetStrategyParameters, pos)
    of 849: parseFloat(s, result.t8ParticipationRate, pos)
    of 850: parseStr(s, result.t8TargetStrategyPerformance, pos)
    of 15: parseStr(s, result.t8Currency, pos)
    of 376: parseStr(s, result.t8ComplianceID, pos)
    of 377: parseBool(s, result.t8SolicitedFlag, pos)
    of 59: parseChar(s, result.t8TimeInForce, pos)
    of 168: parseStr(s, result.t8EffectiveTime, pos)
    of 432: parseStr(s, result.t8ExpireDate, pos)
    of 126: parseStr(s, result.t8ExpireTime, pos)
    of 18: parseStr(s, result.t8ExecInst, pos)
    of 528: parseChar(s, result.t8OrderCapacity, pos)
    of 529: parseStr(s, result.t8OrderRestrictions, pos)
    of 582: parseInt(s, result.t8CustOrderCapacity, pos)
    of 32: parseUInt(s, result.t8LastQty, pos)
    of 652: parseUInt(s, result.t8UnderlyingLastQty, pos)
    of 31: parseFloat(s, result.t8LastPx, pos)
    of 651: parseFloat(s, result.t8UnderlyingLastPx, pos)
    of 669: parseFloat(s, result.t8LastParPx, pos)
    of 194: parseFloat(s, result.t8LastSpotRate, pos)
    of 195: parseFloat(s, result.t8LastForwardPoints, pos)
    of 30: parseStr(s, result.t8LastMkt, pos)
    of 336: parseStr(s, result.t8TradingSessionID, pos)
    of 625: parseStr(s, result.t8TradingSessionSubID, pos)
    of 943: parseStr(s, result.t8TimeBracket, pos)
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
    of 479: parseStr(s, result.t8CommCurrency, pos)
    of 497: parseChar(s, result.t8FundRenewWaiv, pos)
    of 218: parseFloat(s, result.t8Spread, pos)
    of 220: parseStr(s, result.t8BenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.t8BenchmarkCurveName, pos)
    of 222: parseStr(s, result.t8BenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.t8BenchmarkPrice, pos)
    of 663: parseInt(s, result.t8BenchmarkPriceType, pos)
    of 699: parseStr(s, result.t8BenchmarkSecurityID, pos)
    of 761: parseStr(s, result.t8BenchmarkSecurityIDSource, pos)
    of 235: parseStr(s, result.t8YieldType, pos)
    of 236: parseFloat(s, result.t8Yield, pos)
    of 701: parseStr(s, result.t8YieldCalcDate, pos)
    of 696: parseStr(s, result.t8YieldRedemptionDate, pos)
    of 697: parseFloat(s, result.t8YieldRedemptionPrice, pos)
    of 698: parseInt(s, result.t8YieldRedemptionPriceType, pos)
    of 381: parseUInt(s, result.t8GrossTradeAmt, pos)
    of 157: parseInt(s, result.t8NumDaysInterest, pos)
    of 230: parseStr(s, result.t8ExDate, pos)
    of 158: parseFloat(s, result.t8AccruedInterestRate, pos)
    of 159: parseUInt(s, result.t8AccruedInterestAmt, pos)
    of 738: parseUInt(s, result.t8InterestAtMaturity, pos)
    of 920: parseUInt(s, result.t8EndAccruedInterestAmt, pos)
    of 921: parseUInt(s, result.t8StartCash, pos)
    of 922: parseUInt(s, result.t8EndCash, pos)
    of 258: parseBool(s, result.t8TradedFlatSwitch, pos)
    of 259: parseStr(s, result.t8BasisFeatureDate, pos)
    of 260: parseFloat(s, result.t8BasisFeaturePrice, pos)
    of 238: parseUInt(s, result.t8Concession, pos)
    of 237: parseUInt(s, result.t8TotalTakedown, pos)
    of 118: parseUInt(s, result.t8NetMoney, pos)
    of 119: parseUInt(s, result.t8SettlCurrAmt, pos)
    of 120: parseStr(s, result.t8SettlCurrency, pos)
    of 155: parseStr(s, result.t8SettlCurrFxRate, pos)
    of 156: parseChar(s, result.t8SettlCurrFxRateCalc, pos)
    of 21: parseChar(s, result.t8HandlInst, pos)
    of 110: parseUInt(s, result.t8MinQty, pos)
    of 111: parseUInt(s, result.t8MaxFloor, pos)
    of 77: parseChar(s, result.t8PositionEffect, pos)
    of 210: parseUInt(s, result.t8MaxShow, pos)
    of 775: parseInt(s, result.t8BookingType, pos)
    of 58: parseStr(s, result.t8Text, pos)
    of 354: parseUInt(s, result.t8EncodedTextLen, pos)
    of 355: parseStr(s, result.t8EncodedText, pos)
    of 193: parseStr(s, result.t8SettlDate2, pos)
    of 192: parseUInt(s, result.t8OrderQty2, pos)
    of 641: parseFloat(s, result.t8LastForwardPoints2, pos)
    of 442: parseChar(s, result.t8MultiLegReportingType, pos)
    of 480: parseChar(s, result.t8CancellationRights, pos)
    of 481: parseChar(s, result.t8MoneyLaunderingStatus, pos)
    of 513: parseStr(s, result.t8RegistID, pos)
    of 494: parseStr(s, result.t8Designation, pos)
    of 483: parseStr(s, result.t8TransBkdTime, pos)
    of 515: parseStr(s, result.t8ExecValuationPoint, pos)
    of 484: parseChar(s, result.t8ExecPriceType, pos)
    of 485: parseStr(s, result.t8ExecPriceAdjustment, pos)
    of 638: parseInt(s, result.t8PriorityIndicator, pos)
    of 639: parseFloat(s, result.t8PriceImprovement, pos)
    of 851: parseInt(s, result.t8LastLiquidityInd, pos)
    of 518: skipValue(s, pos); parseNoContAmts(s, result.t8NoContAmts, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.t8NoLegs, pos)
    of 797: parseBool(s, result.t8CopyMsgIndicator, pos)
    of 136: skipValue(s, pos); parseNoMiscFees(s, result.t8NoMiscFees, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemt9(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mt9)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 37: parseStr(s, result.t9OrderID, pos)
    of 198: parseStr(s, result.t9SecondaryOrderID, pos)
    of 526: parseStr(s, result.t9SecondaryClOrdID, pos)
    of 11: parseStr(s, result.t9ClOrdID, pos)
    of 583: parseStr(s, result.t9ClOrdLinkID, pos)
    of 41: parseStr(s, result.t9OrigClOrdID, pos)
    of 39: parseChar(s, result.t9OrdStatus, pos)
    of 636: parseBool(s, result.t9WorkingIndicator, pos)
    of 586: parseStr(s, result.t9OrigOrdModTime, pos)
    of 66: parseStr(s, result.t9ListID, pos)
    of 1: parseStr(s, result.t9Account, pos)
    of 660: parseInt(s, result.t9AcctIDSource, pos)
    of 581: parseInt(s, result.t9AccountType, pos)
    of 229: parseStr(s, result.t9TradeOriginationDate, pos)
    of 75: parseStr(s, result.t9TradeDate, pos)
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

proc parsemtA(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtA)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 98: parseInt(s, result.aEncryptMethod, pos)
    of 108: parseInt(s, result.aHeartBtInt, pos)
    of 95: parseUInt(s, result.aRawDataLength, pos)
    of 96: parseStr(s, result.aRawData, pos)
    of 141: parseBool(s, result.aResetSeqNumFlag, pos)
    of 789: parseUInt(s, result.aNextExpectedMsgSeqNum, pos)
    of 383: parseUInt(s, result.aMaxMessageSize, pos)
    of 384: skipValue(s, pos); parseNoMsgTypes(s, result.aNoMsgTypes, pos)
    of 464: parseBool(s, result.aTestMessageIndicator, pos)
    of 553: parseStr(s, result.aUsername, pos)
    of 554: parseStr(s, result.aPassword, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtB(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtB)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 42: parseStr(s, result.bOrigTime, pos)
    of 61: parseChar(s, result.bUrgency, pos)
    of 148: parseStr(s, result.bHeadline, pos)
    of 358: parseUInt(s, result.bEncodedHeadlineLen, pos)
    of 359: parseStr(s, result.bEncodedHeadline, pos)
    of 215: skipValue(s, pos); parseNoRoutingIDs(s, result.bNoRoutingIDs, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.bNoRelatedSym, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.bNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.bNoUnderlyings, pos)
    of 33: skipValue(s, pos); parseNoLinesOfText(s, result.bNoLinesOfText, pos)
    of 149: parseStr(s, result.bURLLink, pos)
    of 95: parseUInt(s, result.bRawDataLength, pos)
    of 96: parseStr(s, result.bRawData, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtC(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtC)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 164: parseStr(s, result.cEmailThreadID, pos)
    of 94: parseChar(s, result.cEmailType, pos)
    of 42: parseStr(s, result.cOrigTime, pos)
    of 147: parseStr(s, result.cSubject, pos)
    of 356: parseUInt(s, result.cEncodedSubjectLen, pos)
    of 357: parseStr(s, result.cEncodedSubject, pos)
    of 215: skipValue(s, pos); parseNoRoutingIDs(s, result.cNoRoutingIDs, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.cNoRelatedSym, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.cNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.cNoLegs, pos)
    of 37: parseStr(s, result.cOrderID, pos)
    of 11: parseStr(s, result.cClOrdID, pos)
    of 33: skipValue(s, pos); parseNoLinesOfText(s, result.cNoLinesOfText, pos)
    of 95: parseUInt(s, result.cRawDataLength, pos)
    of 96: parseStr(s, result.cRawData, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtD(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtD)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 11: parseStr(s, result.dClOrdID, pos)
    of 526: parseStr(s, result.dSecondaryClOrdID, pos)
    of 583: parseStr(s, result.dClOrdLinkID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.dNoPartyIDs, pos)
    of 229: parseStr(s, result.dTradeOriginationDate, pos)
    of 75: parseStr(s, result.dTradeDate, pos)
    of 1: parseStr(s, result.dAccount, pos)
    of 660: parseInt(s, result.dAcctIDSource, pos)
    of 581: parseInt(s, result.dAccountType, pos)
    of 589: parseChar(s, result.dDayBookingInst, pos)
    of 590: parseChar(s, result.dBookingUnit, pos)
    of 591: parseChar(s, result.dPreallocMethod, pos)
    of 70: parseStr(s, result.dAllocID, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.dNoAllocs, pos)
    of 63: parseChar(s, result.dSettlType, pos)
    of 64: parseStr(s, result.dSettlDate, pos)
    of 544: parseChar(s, result.dCashMargin, pos)
    of 635: parseStr(s, result.dClearingFeeIndicator, pos)
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
    of 22: parseStr(s, result.dSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.dNoSecurityAltID, pos)
    of 460: parseInt(s, result.dProduct, pos)
    of 461: parseStr(s, result.dCFICode, pos)
    of 167: parseStr(s, result.dSecurityType, pos)
    of 762: parseStr(s, result.dSecuritySubType, pos)
    of 200: parseStr(s, result.dMaturityMonthYear, pos)
    of 541: parseStr(s, result.dMaturityDate, pos)
    of 201: parseInt(s, result.dPutOrCall, pos)
    of 224: parseStr(s, result.dCouponPaymentDate, pos)
    of 225: parseStr(s, result.dIssueDate, pos)
    of 239: parseStr(s, result.dRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.dRepurchaseTerm, pos)
    of 227: parseFloat(s, result.dRepurchaseRate, pos)
    of 228: parseStr(s, result.dFactor, pos)
    of 255: parseStr(s, result.dCreditRating, pos)
    of 543: parseStr(s, result.dInstrRegistry, pos)
    of 470: parseStr(s, result.dCountryOfIssue, pos)
    of 471: parseStr(s, result.dStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.dLocaleOfIssue, pos)
    of 240: parseStr(s, result.dRedemptionDate, pos)
    of 202: parseFloat(s, result.dStrikePrice, pos)
    of 947: parseStr(s, result.dStrikeCurrency, pos)
    of 206: parseChar(s, result.dOptAttribute, pos)
    of 231: parseStr(s, result.dContractMultiplier, pos)
    of 223: parseFloat(s, result.dCouponRate, pos)
    of 207: parseStr(s, result.dSecurityExchange, pos)
    of 106: parseStr(s, result.dIssuer, pos)
    of 348: parseUInt(s, result.dEncodedIssuerLen, pos)
    of 349: parseStr(s, result.dEncodedIssuer, pos)
    of 107: parseStr(s, result.dSecurityDesc, pos)
    of 350: parseUInt(s, result.dEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.dEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.dPool, pos)
    of 667: parseStr(s, result.dContractSettlMonth, pos)
    of 875: parseInt(s, result.dCPProgram, pos)
    of 876: parseStr(s, result.dCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.dNoEvents, pos)
    of 873: parseStr(s, result.dDatedDate, pos)
    of 874: parseStr(s, result.dInterestAccrualDate, pos)
    of 913: parseStr(s, result.dAgreementDesc, pos)
    of 914: parseStr(s, result.dAgreementID, pos)
    of 915: parseStr(s, result.dAgreementDate, pos)
    of 918: parseStr(s, result.dAgreementCurrency, pos)
    of 788: parseInt(s, result.dTerminationType, pos)
    of 916: parseStr(s, result.dStartDate, pos)
    of 917: parseStr(s, result.dEndDate, pos)
    of 919: parseInt(s, result.dDeliveryType, pos)
    of 898: parseFloat(s, result.dMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.dNoUnderlyings, pos)
    of 140: parseFloat(s, result.dPrevClosePx, pos)
    of 54: parseChar(s, result.dSide, pos)
    of 114: parseBool(s, result.dLocateReqd, pos)
    of 60: parseStr(s, result.dTransactTime, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.dNoStipulations, pos)
    of 854: parseInt(s, result.dQtyType, pos)
    of 38: parseUInt(s, result.dOrderQty, pos)
    of 152: parseUInt(s, result.dCashOrderQty, pos)
    of 516: parseFloat(s, result.dOrderPercent, pos)
    of 468: parseChar(s, result.dRoundingDirection, pos)
    of 469: parseStr(s, result.dRoundingModulus, pos)
    of 40: parseChar(s, result.dOrdType, pos)
    of 423: parseInt(s, result.dPriceType, pos)
    of 44: parseFloat(s, result.dPrice, pos)
    of 99: parseFloat(s, result.dStopPx, pos)
    of 218: parseFloat(s, result.dSpread, pos)
    of 220: parseStr(s, result.dBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.dBenchmarkCurveName, pos)
    of 222: parseStr(s, result.dBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.dBenchmarkPrice, pos)
    of 663: parseInt(s, result.dBenchmarkPriceType, pos)
    of 699: parseStr(s, result.dBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.dBenchmarkSecurityIDSource, pos)
    of 235: parseStr(s, result.dYieldType, pos)
    of 236: parseFloat(s, result.dYield, pos)
    of 701: parseStr(s, result.dYieldCalcDate, pos)
    of 696: parseStr(s, result.dYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.dYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.dYieldRedemptionPriceType, pos)
    of 15: parseStr(s, result.dCurrency, pos)
    of 376: parseStr(s, result.dComplianceID, pos)
    of 377: parseBool(s, result.dSolicitedFlag, pos)
    of 23: parseStr(s, result.dIOIID, pos)
    of 117: parseStr(s, result.dQuoteID, pos)
    of 59: parseChar(s, result.dTimeInForce, pos)
    of 168: parseStr(s, result.dEffectiveTime, pos)
    of 432: parseStr(s, result.dExpireDate, pos)
    of 126: parseStr(s, result.dExpireTime, pos)
    of 427: parseInt(s, result.dGTBookingInst, pos)
    of 12: parseUInt(s, result.dCommission, pos)
    of 13: parseChar(s, result.dCommType, pos)
    of 479: parseStr(s, result.dCommCurrency, pos)
    of 497: parseChar(s, result.dFundRenewWaiv, pos)
    of 528: parseChar(s, result.dOrderCapacity, pos)
    of 529: parseStr(s, result.dOrderRestrictions, pos)
    of 582: parseInt(s, result.dCustOrderCapacity, pos)
    of 121: parseBool(s, result.dForexReq, pos)
    of 120: parseStr(s, result.dSettlCurrency, pos)
    of 775: parseInt(s, result.dBookingType, pos)
    of 58: parseStr(s, result.dText, pos)
    of 354: parseUInt(s, result.dEncodedTextLen, pos)
    of 355: parseStr(s, result.dEncodedText, pos)
    of 193: parseStr(s, result.dSettlDate2, pos)
    of 192: parseUInt(s, result.dOrderQty2, pos)
    of 640: parseFloat(s, result.dPrice2, pos)
    of 77: parseChar(s, result.dPositionEffect, pos)
    of 203: parseInt(s, result.dCoveredOrUncovered, pos)
    of 210: parseUInt(s, result.dMaxShow, pos)
    of 211: parseStr(s, result.dPegOffsetValue, pos)
    of 835: parseInt(s, result.dPegMoveType, pos)
    of 836: parseInt(s, result.dPegOffsetType, pos)
    of 837: parseInt(s, result.dPegLimitType, pos)
    of 838: parseInt(s, result.dPegRoundDirection, pos)
    of 840: parseInt(s, result.dPegScope, pos)
    of 388: parseChar(s, result.dDiscretionInst, pos)
    of 389: parseStr(s, result.dDiscretionOffsetValue, pos)
    of 841: parseInt(s, result.dDiscretionMoveType, pos)
    of 842: parseInt(s, result.dDiscretionOffsetType, pos)
    of 843: parseInt(s, result.dDiscretionLimitType, pos)
    of 844: parseInt(s, result.dDiscretionRoundDirection, pos)
    of 846: parseInt(s, result.dDiscretionScope, pos)
    of 847: parseInt(s, result.dTargetStrategy, pos)
    of 848: parseStr(s, result.dTargetStrategyParameters, pos)
    of 849: parseFloat(s, result.dParticipationRate, pos)
    of 480: parseChar(s, result.dCancellationRights, pos)
    of 481: parseChar(s, result.dMoneyLaunderingStatus, pos)
    of 513: parseStr(s, result.dRegistID, pos)
    of 494: parseStr(s, result.dDesignation, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtE(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtE)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 66: parseStr(s, result.eListID, pos)
    of 390: parseStr(s, result.eBidID, pos)
    of 391: parseStr(s, result.eClientBidID, pos)
    of 414: parseInt(s, result.eProgRptReqs, pos)
    of 394: parseInt(s, result.eBidType, pos)
    of 415: parseInt(s, result.eProgPeriodInterval, pos)
    of 480: parseChar(s, result.eCancellationRights, pos)
    of 481: parseChar(s, result.eMoneyLaunderingStatus, pos)
    of 513: parseStr(s, result.eRegistID, pos)
    of 433: parseChar(s, result.eListExecInstType, pos)
    of 69: parseStr(s, result.eListExecInst, pos)
    of 352: parseUInt(s, result.eEncodedListExecInstLen, pos)
    of 353: parseStr(s, result.eEncodedListExecInst, pos)
    of 765: parseFloat(s, result.eAllowableOneSidednessPct, pos)
    of 766: parseUInt(s, result.eAllowableOneSidednessValue, pos)
    of 767: parseStr(s, result.eAllowableOneSidednessCurr, pos)
    of 68: parseInt(s, result.eTotNoOrders, pos)
    of 893: parseBool(s, result.eLastFragment, pos)
    of 73: skipValue(s, pos); parseNoOrders(s, result.eNoOrders, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtF(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtF)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 41: parseStr(s, result.fOrigClOrdID, pos)
    of 37: parseStr(s, result.fOrderID, pos)
    of 11: parseStr(s, result.fClOrdID, pos)
    of 526: parseStr(s, result.fSecondaryClOrdID, pos)
    of 583: parseStr(s, result.fClOrdLinkID, pos)
    of 66: parseStr(s, result.fListID, pos)
    of 586: parseStr(s, result.fOrigOrdModTime, pos)
    of 1: parseStr(s, result.fAccount, pos)
    of 660: parseInt(s, result.fAcctIDSource, pos)
    of 581: parseInt(s, result.fAccountType, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.fNoPartyIDs, pos)
    of 55: parseStr(s, result.fSymbol, pos)
    of 65: parseStr(s, result.fSymbolSfx, pos)
    of 48: parseStr(s, result.fSecurityID, pos)
    of 22: parseStr(s, result.fSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.fNoSecurityAltID, pos)
    of 460: parseInt(s, result.fProduct, pos)
    of 461: parseStr(s, result.fCFICode, pos)
    of 167: parseStr(s, result.fSecurityType, pos)
    of 762: parseStr(s, result.fSecuritySubType, pos)
    of 200: parseStr(s, result.fMaturityMonthYear, pos)
    of 541: parseStr(s, result.fMaturityDate, pos)
    of 201: parseInt(s, result.fPutOrCall, pos)
    of 224: parseStr(s, result.fCouponPaymentDate, pos)
    of 225: parseStr(s, result.fIssueDate, pos)
    of 239: parseStr(s, result.fRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.fRepurchaseTerm, pos)
    of 227: parseFloat(s, result.fRepurchaseRate, pos)
    of 228: parseStr(s, result.fFactor, pos)
    of 255: parseStr(s, result.fCreditRating, pos)
    of 543: parseStr(s, result.fInstrRegistry, pos)
    of 470: parseStr(s, result.fCountryOfIssue, pos)
    of 471: parseStr(s, result.fStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.fLocaleOfIssue, pos)
    of 240: parseStr(s, result.fRedemptionDate, pos)
    of 202: parseFloat(s, result.fStrikePrice, pos)
    of 947: parseStr(s, result.fStrikeCurrency, pos)
    of 206: parseChar(s, result.fOptAttribute, pos)
    of 231: parseStr(s, result.fContractMultiplier, pos)
    of 223: parseFloat(s, result.fCouponRate, pos)
    of 207: parseStr(s, result.fSecurityExchange, pos)
    of 106: parseStr(s, result.fIssuer, pos)
    of 348: parseUInt(s, result.fEncodedIssuerLen, pos)
    of 349: parseStr(s, result.fEncodedIssuer, pos)
    of 107: parseStr(s, result.fSecurityDesc, pos)
    of 350: parseUInt(s, result.fEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.fEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.fPool, pos)
    of 667: parseStr(s, result.fContractSettlMonth, pos)
    of 875: parseInt(s, result.fCPProgram, pos)
    of 876: parseStr(s, result.fCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.fNoEvents, pos)
    of 873: parseStr(s, result.fDatedDate, pos)
    of 874: parseStr(s, result.fInterestAccrualDate, pos)
    of 913: parseStr(s, result.fAgreementDesc, pos)
    of 914: parseStr(s, result.fAgreementID, pos)
    of 915: parseStr(s, result.fAgreementDate, pos)
    of 918: parseStr(s, result.fAgreementCurrency, pos)
    of 788: parseInt(s, result.fTerminationType, pos)
    of 916: parseStr(s, result.fStartDate, pos)
    of 917: parseStr(s, result.fEndDate, pos)
    of 919: parseInt(s, result.fDeliveryType, pos)
    of 898: parseFloat(s, result.fMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.fNoUnderlyings, pos)
    of 54: parseChar(s, result.fSide, pos)
    of 60: parseStr(s, result.fTransactTime, pos)
    of 38: parseUInt(s, result.fOrderQty, pos)
    of 152: parseUInt(s, result.fCashOrderQty, pos)
    of 516: parseFloat(s, result.fOrderPercent, pos)
    of 468: parseChar(s, result.fRoundingDirection, pos)
    of 469: parseStr(s, result.fRoundingModulus, pos)
    of 376: parseStr(s, result.fComplianceID, pos)
    of 58: parseStr(s, result.fText, pos)
    of 354: parseUInt(s, result.fEncodedTextLen, pos)
    of 355: parseStr(s, result.fEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtG(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtG)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 37: parseStr(s, result.gOrderID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.gNoPartyIDs, pos)
    of 229: parseStr(s, result.gTradeOriginationDate, pos)
    of 75: parseStr(s, result.gTradeDate, pos)
    of 41: parseStr(s, result.gOrigClOrdID, pos)
    of 11: parseStr(s, result.gClOrdID, pos)
    of 526: parseStr(s, result.gSecondaryClOrdID, pos)
    of 583: parseStr(s, result.gClOrdLinkID, pos)
    of 66: parseStr(s, result.gListID, pos)
    of 586: parseStr(s, result.gOrigOrdModTime, pos)
    of 1: parseStr(s, result.gAccount, pos)
    of 660: parseInt(s, result.gAcctIDSource, pos)
    of 581: parseInt(s, result.gAccountType, pos)
    of 589: parseChar(s, result.gDayBookingInst, pos)
    of 590: parseChar(s, result.gBookingUnit, pos)
    of 591: parseChar(s, result.gPreallocMethod, pos)
    of 70: parseStr(s, result.gAllocID, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.gNoAllocs, pos)
    of 63: parseChar(s, result.gSettlType, pos)
    of 64: parseStr(s, result.gSettlDate, pos)
    of 544: parseChar(s, result.gCashMargin, pos)
    of 635: parseStr(s, result.gClearingFeeIndicator, pos)
    of 21: parseChar(s, result.gHandlInst, pos)
    of 18: parseStr(s, result.gExecInst, pos)
    of 110: parseUInt(s, result.gMinQty, pos)
    of 111: parseUInt(s, result.gMaxFloor, pos)
    of 100: parseStr(s, result.gExDestination, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.gNoTradingSessions, pos)
    of 55: parseStr(s, result.gSymbol, pos)
    of 65: parseStr(s, result.gSymbolSfx, pos)
    of 48: parseStr(s, result.gSecurityID, pos)
    of 22: parseStr(s, result.gSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.gNoSecurityAltID, pos)
    of 460: parseInt(s, result.gProduct, pos)
    of 461: parseStr(s, result.gCFICode, pos)
    of 167: parseStr(s, result.gSecurityType, pos)
    of 762: parseStr(s, result.gSecuritySubType, pos)
    of 200: parseStr(s, result.gMaturityMonthYear, pos)
    of 541: parseStr(s, result.gMaturityDate, pos)
    of 201: parseInt(s, result.gPutOrCall, pos)
    of 224: parseStr(s, result.gCouponPaymentDate, pos)
    of 225: parseStr(s, result.gIssueDate, pos)
    of 239: parseStr(s, result.gRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.gRepurchaseTerm, pos)
    of 227: parseFloat(s, result.gRepurchaseRate, pos)
    of 228: parseStr(s, result.gFactor, pos)
    of 255: parseStr(s, result.gCreditRating, pos)
    of 543: parseStr(s, result.gInstrRegistry, pos)
    of 470: parseStr(s, result.gCountryOfIssue, pos)
    of 471: parseStr(s, result.gStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.gLocaleOfIssue, pos)
    of 240: parseStr(s, result.gRedemptionDate, pos)
    of 202: parseFloat(s, result.gStrikePrice, pos)
    of 947: parseStr(s, result.gStrikeCurrency, pos)
    of 206: parseChar(s, result.gOptAttribute, pos)
    of 231: parseStr(s, result.gContractMultiplier, pos)
    of 223: parseFloat(s, result.gCouponRate, pos)
    of 207: parseStr(s, result.gSecurityExchange, pos)
    of 106: parseStr(s, result.gIssuer, pos)
    of 348: parseUInt(s, result.gEncodedIssuerLen, pos)
    of 349: parseStr(s, result.gEncodedIssuer, pos)
    of 107: parseStr(s, result.gSecurityDesc, pos)
    of 350: parseUInt(s, result.gEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.gEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.gPool, pos)
    of 667: parseStr(s, result.gContractSettlMonth, pos)
    of 875: parseInt(s, result.gCPProgram, pos)
    of 876: parseStr(s, result.gCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.gNoEvents, pos)
    of 873: parseStr(s, result.gDatedDate, pos)
    of 874: parseStr(s, result.gInterestAccrualDate, pos)
    of 913: parseStr(s, result.gAgreementDesc, pos)
    of 914: parseStr(s, result.gAgreementID, pos)
    of 915: parseStr(s, result.gAgreementDate, pos)
    of 918: parseStr(s, result.gAgreementCurrency, pos)
    of 788: parseInt(s, result.gTerminationType, pos)
    of 916: parseStr(s, result.gStartDate, pos)
    of 917: parseStr(s, result.gEndDate, pos)
    of 919: parseInt(s, result.gDeliveryType, pos)
    of 898: parseFloat(s, result.gMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.gNoUnderlyings, pos)
    of 54: parseChar(s, result.gSide, pos)
    of 60: parseStr(s, result.gTransactTime, pos)
    of 854: parseInt(s, result.gQtyType, pos)
    of 38: parseUInt(s, result.gOrderQty, pos)
    of 152: parseUInt(s, result.gCashOrderQty, pos)
    of 516: parseFloat(s, result.gOrderPercent, pos)
    of 468: parseChar(s, result.gRoundingDirection, pos)
    of 469: parseStr(s, result.gRoundingModulus, pos)
    of 40: parseChar(s, result.gOrdType, pos)
    of 423: parseInt(s, result.gPriceType, pos)
    of 44: parseFloat(s, result.gPrice, pos)
    of 99: parseFloat(s, result.gStopPx, pos)
    of 218: parseFloat(s, result.gSpread, pos)
    of 220: parseStr(s, result.gBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.gBenchmarkCurveName, pos)
    of 222: parseStr(s, result.gBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.gBenchmarkPrice, pos)
    of 663: parseInt(s, result.gBenchmarkPriceType, pos)
    of 699: parseStr(s, result.gBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.gBenchmarkSecurityIDSource, pos)
    of 235: parseStr(s, result.gYieldType, pos)
    of 236: parseFloat(s, result.gYield, pos)
    of 701: parseStr(s, result.gYieldCalcDate, pos)
    of 696: parseStr(s, result.gYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.gYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.gYieldRedemptionPriceType, pos)
    of 211: parseStr(s, result.gPegOffsetValue, pos)
    of 835: parseInt(s, result.gPegMoveType, pos)
    of 836: parseInt(s, result.gPegOffsetType, pos)
    of 837: parseInt(s, result.gPegLimitType, pos)
    of 838: parseInt(s, result.gPegRoundDirection, pos)
    of 840: parseInt(s, result.gPegScope, pos)
    of 388: parseChar(s, result.gDiscretionInst, pos)
    of 389: parseStr(s, result.gDiscretionOffsetValue, pos)
    of 841: parseInt(s, result.gDiscretionMoveType, pos)
    of 842: parseInt(s, result.gDiscretionOffsetType, pos)
    of 843: parseInt(s, result.gDiscretionLimitType, pos)
    of 844: parseInt(s, result.gDiscretionRoundDirection, pos)
    of 846: parseInt(s, result.gDiscretionScope, pos)
    of 847: parseInt(s, result.gTargetStrategy, pos)
    of 848: parseStr(s, result.gTargetStrategyParameters, pos)
    of 849: parseFloat(s, result.gParticipationRate, pos)
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
    of 479: parseStr(s, result.gCommCurrency, pos)
    of 497: parseChar(s, result.gFundRenewWaiv, pos)
    of 528: parseChar(s, result.gOrderCapacity, pos)
    of 529: parseStr(s, result.gOrderRestrictions, pos)
    of 582: parseInt(s, result.gCustOrderCapacity, pos)
    of 121: parseBool(s, result.gForexReq, pos)
    of 120: parseStr(s, result.gSettlCurrency, pos)
    of 775: parseInt(s, result.gBookingType, pos)
    of 58: parseStr(s, result.gText, pos)
    of 354: parseUInt(s, result.gEncodedTextLen, pos)
    of 355: parseStr(s, result.gEncodedText, pos)
    of 193: parseStr(s, result.gSettlDate2, pos)
    of 192: parseUInt(s, result.gOrderQty2, pos)
    of 640: parseFloat(s, result.gPrice2, pos)
    of 77: parseChar(s, result.gPositionEffect, pos)
    of 203: parseInt(s, result.gCoveredOrUncovered, pos)
    of 210: parseUInt(s, result.gMaxShow, pos)
    of 114: parseBool(s, result.gLocateReqd, pos)
    of 480: parseChar(s, result.gCancellationRights, pos)
    of 481: parseChar(s, result.gMoneyLaunderingStatus, pos)
    of 513: parseStr(s, result.gRegistID, pos)
    of 494: parseStr(s, result.gDesignation, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtH(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtH)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 37: parseStr(s, result.hOrderID, pos)
    of 11: parseStr(s, result.hClOrdID, pos)
    of 526: parseStr(s, result.hSecondaryClOrdID, pos)
    of 583: parseStr(s, result.hClOrdLinkID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.hNoPartyIDs, pos)
    of 790: parseStr(s, result.hOrdStatusReqID, pos)
    of 1: parseStr(s, result.hAccount, pos)
    of 660: parseInt(s, result.hAcctIDSource, pos)
    of 55: parseStr(s, result.hSymbol, pos)
    of 65: parseStr(s, result.hSymbolSfx, pos)
    of 48: parseStr(s, result.hSecurityID, pos)
    of 22: parseStr(s, result.hSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.hNoSecurityAltID, pos)
    of 460: parseInt(s, result.hProduct, pos)
    of 461: parseStr(s, result.hCFICode, pos)
    of 167: parseStr(s, result.hSecurityType, pos)
    of 762: parseStr(s, result.hSecuritySubType, pos)
    of 200: parseStr(s, result.hMaturityMonthYear, pos)
    of 541: parseStr(s, result.hMaturityDate, pos)
    of 201: parseInt(s, result.hPutOrCall, pos)
    of 224: parseStr(s, result.hCouponPaymentDate, pos)
    of 225: parseStr(s, result.hIssueDate, pos)
    of 239: parseStr(s, result.hRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.hRepurchaseTerm, pos)
    of 227: parseFloat(s, result.hRepurchaseRate, pos)
    of 228: parseStr(s, result.hFactor, pos)
    of 255: parseStr(s, result.hCreditRating, pos)
    of 543: parseStr(s, result.hInstrRegistry, pos)
    of 470: parseStr(s, result.hCountryOfIssue, pos)
    of 471: parseStr(s, result.hStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.hLocaleOfIssue, pos)
    of 240: parseStr(s, result.hRedemptionDate, pos)
    of 202: parseFloat(s, result.hStrikePrice, pos)
    of 947: parseStr(s, result.hStrikeCurrency, pos)
    of 206: parseChar(s, result.hOptAttribute, pos)
    of 231: parseStr(s, result.hContractMultiplier, pos)
    of 223: parseFloat(s, result.hCouponRate, pos)
    of 207: parseStr(s, result.hSecurityExchange, pos)
    of 106: parseStr(s, result.hIssuer, pos)
    of 348: parseUInt(s, result.hEncodedIssuerLen, pos)
    of 349: parseStr(s, result.hEncodedIssuer, pos)
    of 107: parseStr(s, result.hSecurityDesc, pos)
    of 350: parseUInt(s, result.hEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.hEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.hPool, pos)
    of 667: parseStr(s, result.hContractSettlMonth, pos)
    of 875: parseInt(s, result.hCPProgram, pos)
    of 876: parseStr(s, result.hCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.hNoEvents, pos)
    of 873: parseStr(s, result.hDatedDate, pos)
    of 874: parseStr(s, result.hInterestAccrualDate, pos)
    of 913: parseStr(s, result.hAgreementDesc, pos)
    of 914: parseStr(s, result.hAgreementID, pos)
    of 915: parseStr(s, result.hAgreementDate, pos)
    of 918: parseStr(s, result.hAgreementCurrency, pos)
    of 788: parseInt(s, result.hTerminationType, pos)
    of 916: parseStr(s, result.hStartDate, pos)
    of 917: parseStr(s, result.hEndDate, pos)
    of 919: parseInt(s, result.hDeliveryType, pos)
    of 898: parseFloat(s, result.hMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.hNoUnderlyings, pos)
    of 54: parseChar(s, result.hSide, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtJ(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtJ)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 70: parseStr(s, result.jAllocID, pos)
    of 71: parseChar(s, result.jAllocTransType, pos)
    of 626: parseInt(s, result.jAllocType, pos)
    of 793: parseStr(s, result.jSecondaryAllocID, pos)
    of 72: parseStr(s, result.jRefAllocID, pos)
    of 796: parseInt(s, result.jAllocCancReplaceReason, pos)
    of 808: parseInt(s, result.jAllocIntermedReqType, pos)
    of 196: parseStr(s, result.jAllocLinkID, pos)
    of 197: parseInt(s, result.jAllocLinkType, pos)
    of 466: parseStr(s, result.jBookingRefID, pos)
    of 857: parseInt(s, result.jAllocNoOrdersType, pos)
    of 73: skipValue(s, pos); parseNoOrders(s, result.jNoOrders, pos)
    of 124: skipValue(s, pos); parseNoExecs(s, result.jNoExecs, pos)
    of 570: parseBool(s, result.jPreviouslyReported, pos)
    of 700: parseBool(s, result.jReversalIndicator, pos)
    of 574: parseStr(s, result.jMatchType, pos)
    of 54: parseChar(s, result.jSide, pos)
    of 55: parseStr(s, result.jSymbol, pos)
    of 65: parseStr(s, result.jSymbolSfx, pos)
    of 48: parseStr(s, result.jSecurityID, pos)
    of 22: parseStr(s, result.jSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.jNoSecurityAltID, pos)
    of 460: parseInt(s, result.jProduct, pos)
    of 461: parseStr(s, result.jCFICode, pos)
    of 167: parseStr(s, result.jSecurityType, pos)
    of 762: parseStr(s, result.jSecuritySubType, pos)
    of 200: parseStr(s, result.jMaturityMonthYear, pos)
    of 541: parseStr(s, result.jMaturityDate, pos)
    of 201: parseInt(s, result.jPutOrCall, pos)
    of 224: parseStr(s, result.jCouponPaymentDate, pos)
    of 225: parseStr(s, result.jIssueDate, pos)
    of 239: parseStr(s, result.jRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.jRepurchaseTerm, pos)
    of 227: parseFloat(s, result.jRepurchaseRate, pos)
    of 228: parseStr(s, result.jFactor, pos)
    of 255: parseStr(s, result.jCreditRating, pos)
    of 543: parseStr(s, result.jInstrRegistry, pos)
    of 470: parseStr(s, result.jCountryOfIssue, pos)
    of 471: parseStr(s, result.jStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.jLocaleOfIssue, pos)
    of 240: parseStr(s, result.jRedemptionDate, pos)
    of 202: parseFloat(s, result.jStrikePrice, pos)
    of 947: parseStr(s, result.jStrikeCurrency, pos)
    of 206: parseChar(s, result.jOptAttribute, pos)
    of 231: parseStr(s, result.jContractMultiplier, pos)
    of 223: parseFloat(s, result.jCouponRate, pos)
    of 207: parseStr(s, result.jSecurityExchange, pos)
    of 106: parseStr(s, result.jIssuer, pos)
    of 348: parseUInt(s, result.jEncodedIssuerLen, pos)
    of 349: parseStr(s, result.jEncodedIssuer, pos)
    of 107: parseStr(s, result.jSecurityDesc, pos)
    of 350: parseUInt(s, result.jEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.jEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.jPool, pos)
    of 667: parseStr(s, result.jContractSettlMonth, pos)
    of 875: parseInt(s, result.jCPProgram, pos)
    of 876: parseStr(s, result.jCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.jNoEvents, pos)
    of 873: parseStr(s, result.jDatedDate, pos)
    of 874: parseStr(s, result.jInterestAccrualDate, pos)
    of 668: parseInt(s, result.jDeliveryForm, pos)
    of 869: parseFloat(s, result.jPctAtRisk, pos)
    of 870: skipValue(s, pos); parseNoInstrAttrib(s, result.jNoInstrAttrib, pos)
    of 913: parseStr(s, result.jAgreementDesc, pos)
    of 914: parseStr(s, result.jAgreementID, pos)
    of 915: parseStr(s, result.jAgreementDate, pos)
    of 918: parseStr(s, result.jAgreementCurrency, pos)
    of 788: parseInt(s, result.jTerminationType, pos)
    of 916: parseStr(s, result.jStartDate, pos)
    of 917: parseStr(s, result.jEndDate, pos)
    of 919: parseInt(s, result.jDeliveryType, pos)
    of 898: parseFloat(s, result.jMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.jNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.jNoLegs, pos)
    of 53: parseUInt(s, result.jQuantity, pos)
    of 854: parseInt(s, result.jQtyType, pos)
    of 30: parseStr(s, result.jLastMkt, pos)
    of 229: parseStr(s, result.jTradeOriginationDate, pos)
    of 336: parseStr(s, result.jTradingSessionID, pos)
    of 625: parseStr(s, result.jTradingSessionSubID, pos)
    of 423: parseInt(s, result.jPriceType, pos)
    of 6: parseFloat(s, result.jAvgPx, pos)
    of 860: parseFloat(s, result.jAvgParPx, pos)
    of 218: parseFloat(s, result.jSpread, pos)
    of 220: parseStr(s, result.jBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.jBenchmarkCurveName, pos)
    of 222: parseStr(s, result.jBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.jBenchmarkPrice, pos)
    of 663: parseInt(s, result.jBenchmarkPriceType, pos)
    of 699: parseStr(s, result.jBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.jBenchmarkSecurityIDSource, pos)
    of 15: parseStr(s, result.jCurrency, pos)
    of 74: parseInt(s, result.jAvgPxPrecision, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.jNoPartyIDs, pos)
    of 75: parseStr(s, result.jTradeDate, pos)
    of 60: parseStr(s, result.jTransactTime, pos)
    of 63: parseChar(s, result.jSettlType, pos)
    of 64: parseStr(s, result.jSettlDate, pos)
    of 775: parseInt(s, result.jBookingType, pos)
    of 381: parseUInt(s, result.jGrossTradeAmt, pos)
    of 238: parseUInt(s, result.jConcession, pos)
    of 237: parseUInt(s, result.jTotalTakedown, pos)
    of 118: parseUInt(s, result.jNetMoney, pos)
    of 77: parseChar(s, result.jPositionEffect, pos)
    of 754: parseBool(s, result.jAutoAcceptIndicator, pos)
    of 58: parseStr(s, result.jText, pos)
    of 354: parseUInt(s, result.jEncodedTextLen, pos)
    of 355: parseStr(s, result.jEncodedText, pos)
    of 157: parseInt(s, result.jNumDaysInterest, pos)
    of 158: parseFloat(s, result.jAccruedInterestRate, pos)
    of 159: parseUInt(s, result.jAccruedInterestAmt, pos)
    of 540: parseUInt(s, result.jTotalAccruedInterestAmt, pos)
    of 738: parseUInt(s, result.jInterestAtMaturity, pos)
    of 920: parseUInt(s, result.jEndAccruedInterestAmt, pos)
    of 921: parseUInt(s, result.jStartCash, pos)
    of 922: parseUInt(s, result.jEndCash, pos)
    of 650: parseBool(s, result.jLegalConfirm, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.jNoStipulations, pos)
    of 235: parseStr(s, result.jYieldType, pos)
    of 236: parseFloat(s, result.jYield, pos)
    of 701: parseStr(s, result.jYieldCalcDate, pos)
    of 696: parseStr(s, result.jYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.jYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.jYieldRedemptionPriceType, pos)
    of 892: parseInt(s, result.jTotNoAllocs, pos)
    of 893: parseBool(s, result.jLastFragment, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.jNoAllocs, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtK(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtK)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 66: parseStr(s, result.kListID, pos)
    of 60: parseStr(s, result.kTransactTime, pos)
    of 229: parseStr(s, result.kTradeOriginationDate, pos)
    of 75: parseStr(s, result.kTradeDate, pos)
    of 58: parseStr(s, result.kText, pos)
    of 354: parseUInt(s, result.kEncodedTextLen, pos)
    of 355: parseStr(s, result.kEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtL(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtL)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
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

proc parsemtM(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtM)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 66: parseStr(s, result.mListID, pos)
    of 58: parseStr(s, result.mText, pos)
    of 354: parseUInt(s, result.mEncodedTextLen, pos)
    of 355: parseStr(s, result.mEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtN(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtN)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
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
    of 893: parseBool(s, result.nLastFragment, pos)
    of 73: skipValue(s, pos); parseNoOrders(s, result.nNoOrders, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtP(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtP)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 70: parseStr(s, result.pAllocID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.pNoPartyIDs, pos)
    of 793: parseStr(s, result.pSecondaryAllocID, pos)
    of 75: parseStr(s, result.pTradeDate, pos)
    of 60: parseStr(s, result.pTransactTime, pos)
    of 87: parseInt(s, result.pAllocStatus, pos)
    of 88: parseInt(s, result.pAllocRejCode, pos)
    of 626: parseInt(s, result.pAllocType, pos)
    of 808: parseInt(s, result.pAllocIntermedReqType, pos)
    of 573: parseChar(s, result.pMatchStatus, pos)
    of 460: parseInt(s, result.pProduct, pos)
    of 167: parseStr(s, result.pSecurityType, pos)
    of 58: parseStr(s, result.pText, pos)
    of 354: parseUInt(s, result.pEncodedTextLen, pos)
    of 355: parseStr(s, result.pEncodedText, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.pNoAllocs, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtQ(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtQ)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 37: parseStr(s, result.qOrderID, pos)
    of 198: parseStr(s, result.qSecondaryOrderID, pos)
    of 17: parseStr(s, result.qExecID, pos)
    of 127: parseChar(s, result.qDKReason, pos)
    of 55: parseStr(s, result.qSymbol, pos)
    of 65: parseStr(s, result.qSymbolSfx, pos)
    of 48: parseStr(s, result.qSecurityID, pos)
    of 22: parseStr(s, result.qSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.qNoSecurityAltID, pos)
    of 460: parseInt(s, result.qProduct, pos)
    of 461: parseStr(s, result.qCFICode, pos)
    of 167: parseStr(s, result.qSecurityType, pos)
    of 762: parseStr(s, result.qSecuritySubType, pos)
    of 200: parseStr(s, result.qMaturityMonthYear, pos)
    of 541: parseStr(s, result.qMaturityDate, pos)
    of 201: parseInt(s, result.qPutOrCall, pos)
    of 224: parseStr(s, result.qCouponPaymentDate, pos)
    of 225: parseStr(s, result.qIssueDate, pos)
    of 239: parseStr(s, result.qRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.qRepurchaseTerm, pos)
    of 227: parseFloat(s, result.qRepurchaseRate, pos)
    of 228: parseStr(s, result.qFactor, pos)
    of 255: parseStr(s, result.qCreditRating, pos)
    of 543: parseStr(s, result.qInstrRegistry, pos)
    of 470: parseStr(s, result.qCountryOfIssue, pos)
    of 471: parseStr(s, result.qStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.qLocaleOfIssue, pos)
    of 240: parseStr(s, result.qRedemptionDate, pos)
    of 202: parseFloat(s, result.qStrikePrice, pos)
    of 947: parseStr(s, result.qStrikeCurrency, pos)
    of 206: parseChar(s, result.qOptAttribute, pos)
    of 231: parseStr(s, result.qContractMultiplier, pos)
    of 223: parseFloat(s, result.qCouponRate, pos)
    of 207: parseStr(s, result.qSecurityExchange, pos)
    of 106: parseStr(s, result.qIssuer, pos)
    of 348: parseUInt(s, result.qEncodedIssuerLen, pos)
    of 349: parseStr(s, result.qEncodedIssuer, pos)
    of 107: parseStr(s, result.qSecurityDesc, pos)
    of 350: parseUInt(s, result.qEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.qEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.qPool, pos)
    of 667: parseStr(s, result.qContractSettlMonth, pos)
    of 875: parseInt(s, result.qCPProgram, pos)
    of 876: parseStr(s, result.qCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.qNoEvents, pos)
    of 873: parseStr(s, result.qDatedDate, pos)
    of 874: parseStr(s, result.qInterestAccrualDate, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.qNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.qNoLegs, pos)
    of 54: parseChar(s, result.qSide, pos)
    of 38: parseUInt(s, result.qOrderQty, pos)
    of 152: parseUInt(s, result.qCashOrderQty, pos)
    of 516: parseFloat(s, result.qOrderPercent, pos)
    of 468: parseChar(s, result.qRoundingDirection, pos)
    of 469: parseStr(s, result.qRoundingModulus, pos)
    of 32: parseUInt(s, result.qLastQty, pos)
    of 31: parseFloat(s, result.qLastPx, pos)
    of 58: parseStr(s, result.qText, pos)
    of 354: parseUInt(s, result.qEncodedTextLen, pos)
    of 355: parseStr(s, result.qEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtR(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtR)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 131: parseStr(s, result.rQuoteReqID, pos)
    of 644: parseStr(s, result.rRFQReqID, pos)
    of 11: parseStr(s, result.rClOrdID, pos)
    of 528: parseChar(s, result.rOrderCapacity, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.rNoRelatedSym, pos)
    of 58: parseStr(s, result.rText, pos)
    of 354: parseUInt(s, result.rEncodedTextLen, pos)
    of 355: parseStr(s, result.rEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtS(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtS)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 131: parseStr(s, result.sQuoteReqID, pos)
    of 117: parseStr(s, result.sQuoteID, pos)
    of 693: parseStr(s, result.sQuoteRespID, pos)
    of 537: parseInt(s, result.sQuoteType, pos)
    of 735: skipValue(s, pos); parseNoQuoteQualifiers(s, result.sNoQuoteQualifiers, pos)
    of 301: parseInt(s, result.sQuoteResponseLevel, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.sNoPartyIDs, pos)
    of 336: parseStr(s, result.sTradingSessionID, pos)
    of 625: parseStr(s, result.sTradingSessionSubID, pos)
    of 55: parseStr(s, result.sSymbol, pos)
    of 65: parseStr(s, result.sSymbolSfx, pos)
    of 48: parseStr(s, result.sSecurityID, pos)
    of 22: parseStr(s, result.sSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.sNoSecurityAltID, pos)
    of 460: parseInt(s, result.sProduct, pos)
    of 461: parseStr(s, result.sCFICode, pos)
    of 167: parseStr(s, result.sSecurityType, pos)
    of 762: parseStr(s, result.sSecuritySubType, pos)
    of 200: parseStr(s, result.sMaturityMonthYear, pos)
    of 541: parseStr(s, result.sMaturityDate, pos)
    of 201: parseInt(s, result.sPutOrCall, pos)
    of 224: parseStr(s, result.sCouponPaymentDate, pos)
    of 225: parseStr(s, result.sIssueDate, pos)
    of 239: parseStr(s, result.sRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.sRepurchaseTerm, pos)
    of 227: parseFloat(s, result.sRepurchaseRate, pos)
    of 228: parseStr(s, result.sFactor, pos)
    of 255: parseStr(s, result.sCreditRating, pos)
    of 543: parseStr(s, result.sInstrRegistry, pos)
    of 470: parseStr(s, result.sCountryOfIssue, pos)
    of 471: parseStr(s, result.sStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.sLocaleOfIssue, pos)
    of 240: parseStr(s, result.sRedemptionDate, pos)
    of 202: parseFloat(s, result.sStrikePrice, pos)
    of 947: parseStr(s, result.sStrikeCurrency, pos)
    of 206: parseChar(s, result.sOptAttribute, pos)
    of 231: parseStr(s, result.sContractMultiplier, pos)
    of 223: parseFloat(s, result.sCouponRate, pos)
    of 207: parseStr(s, result.sSecurityExchange, pos)
    of 106: parseStr(s, result.sIssuer, pos)
    of 348: parseUInt(s, result.sEncodedIssuerLen, pos)
    of 349: parseStr(s, result.sEncodedIssuer, pos)
    of 107: parseStr(s, result.sSecurityDesc, pos)
    of 350: parseUInt(s, result.sEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.sEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.sPool, pos)
    of 667: parseStr(s, result.sContractSettlMonth, pos)
    of 875: parseInt(s, result.sCPProgram, pos)
    of 876: parseStr(s, result.sCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.sNoEvents, pos)
    of 873: parseStr(s, result.sDatedDate, pos)
    of 874: parseStr(s, result.sInterestAccrualDate, pos)
    of 913: parseStr(s, result.sAgreementDesc, pos)
    of 914: parseStr(s, result.sAgreementID, pos)
    of 915: parseStr(s, result.sAgreementDate, pos)
    of 918: parseStr(s, result.sAgreementCurrency, pos)
    of 788: parseInt(s, result.sTerminationType, pos)
    of 916: parseStr(s, result.sStartDate, pos)
    of 917: parseStr(s, result.sEndDate, pos)
    of 919: parseInt(s, result.sDeliveryType, pos)
    of 898: parseFloat(s, result.sMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.sNoUnderlyings, pos)
    of 54: parseChar(s, result.sSide, pos)
    of 38: parseUInt(s, result.sOrderQty, pos)
    of 152: parseUInt(s, result.sCashOrderQty, pos)
    of 516: parseFloat(s, result.sOrderPercent, pos)
    of 468: parseChar(s, result.sRoundingDirection, pos)
    of 469: parseStr(s, result.sRoundingModulus, pos)
    of 63: parseChar(s, result.sSettlType, pos)
    of 64: parseStr(s, result.sSettlDate, pos)
    of 193: parseStr(s, result.sSettlDate2, pos)
    of 192: parseUInt(s, result.sOrderQty2, pos)
    of 15: parseStr(s, result.sCurrency, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.sNoStipulations, pos)
    of 1: parseStr(s, result.sAccount, pos)
    of 660: parseInt(s, result.sAcctIDSource, pos)
    of 581: parseInt(s, result.sAccountType, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.sNoLegs, pos)
    of 132: parseFloat(s, result.sBidPx, pos)
    of 133: parseFloat(s, result.sOfferPx, pos)
    of 645: parseFloat(s, result.sMktBidPx, pos)
    of 646: parseFloat(s, result.sMktOfferPx, pos)
    of 647: parseUInt(s, result.sMinBidSize, pos)
    of 134: parseUInt(s, result.sBidSize, pos)
    of 648: parseUInt(s, result.sMinOfferSize, pos)
    of 135: parseUInt(s, result.sOfferSize, pos)
    of 62: parseStr(s, result.sValidUntilTime, pos)
    of 188: parseFloat(s, result.sBidSpotRate, pos)
    of 190: parseFloat(s, result.sOfferSpotRate, pos)
    of 189: parseFloat(s, result.sBidForwardPoints, pos)
    of 191: parseFloat(s, result.sOfferForwardPoints, pos)
    of 631: parseFloat(s, result.sMidPx, pos)
    of 632: parseFloat(s, result.sBidYield, pos)
    of 633: parseFloat(s, result.sMidYield, pos)
    of 634: parseFloat(s, result.sOfferYield, pos)
    of 60: parseStr(s, result.sTransactTime, pos)
    of 40: parseChar(s, result.sOrdType, pos)
    of 642: parseFloat(s, result.sBidForwardPoints2, pos)
    of 643: parseFloat(s, result.sOfferForwardPoints2, pos)
    of 656: parseStr(s, result.sSettlCurrBidFxRate, pos)
    of 657: parseStr(s, result.sSettlCurrOfferFxRate, pos)
    of 156: parseChar(s, result.sSettlCurrFxRateCalc, pos)
    of 13: parseChar(s, result.sCommType, pos)
    of 12: parseUInt(s, result.sCommission, pos)
    of 582: parseInt(s, result.sCustOrderCapacity, pos)
    of 100: parseStr(s, result.sExDestination, pos)
    of 528: parseChar(s, result.sOrderCapacity, pos)
    of 423: parseInt(s, result.sPriceType, pos)
    of 218: parseFloat(s, result.sSpread, pos)
    of 220: parseStr(s, result.sBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.sBenchmarkCurveName, pos)
    of 222: parseStr(s, result.sBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.sBenchmarkPrice, pos)
    of 663: parseInt(s, result.sBenchmarkPriceType, pos)
    of 699: parseStr(s, result.sBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.sBenchmarkSecurityIDSource, pos)
    of 235: parseStr(s, result.sYieldType, pos)
    of 236: parseFloat(s, result.sYield, pos)
    of 701: parseStr(s, result.sYieldCalcDate, pos)
    of 696: parseStr(s, result.sYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.sYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.sYieldRedemptionPriceType, pos)
    of 58: parseStr(s, result.sText, pos)
    of 354: parseUInt(s, result.sEncodedTextLen, pos)
    of 355: parseStr(s, result.sEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtT(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtT)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 777: parseStr(s, result.tSettlInstMsgID, pos)
    of 791: parseStr(s, result.tSettlInstReqID, pos)
    of 160: parseChar(s, result.tSettlInstMode, pos)
    of 792: parseInt(s, result.tSettlInstReqRejCode, pos)
    of 58: parseStr(s, result.tText, pos)
    of 354: parseUInt(s, result.tEncodedTextLen, pos)
    of 355: parseStr(s, result.tEncodedText, pos)
    of 11: parseStr(s, result.tClOrdID, pos)
    of 60: parseStr(s, result.tTransactTime, pos)
    of 778: skipValue(s, pos); parseNoSettlInst(s, result.tNoSettlInst, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtV(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtV)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 262: parseStr(s, result.vMDReqID, pos)
    of 263: parseChar(s, result.vSubscriptionRequestType, pos)
    of 264: parseInt(s, result.vMarketDepth, pos)
    of 265: parseInt(s, result.vMDUpdateType, pos)
    of 266: parseBool(s, result.vAggregatedBook, pos)
    of 286: parseStr(s, result.vOpenCloseSettlFlag, pos)
    of 546: parseStr(s, result.vScope, pos)
    of 547: parseBool(s, result.vMDImplicitDelete, pos)
    of 267: skipValue(s, pos); parseNoMDEntryTypes(s, result.vNoMDEntryTypes, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.vNoRelatedSym, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.vNoTradingSessions, pos)
    of 815: parseInt(s, result.vApplQueueAction, pos)
    of 812: parseInt(s, result.vApplQueueMax, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtW(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtW)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 262: parseStr(s, result.wMDReqID, pos)
    of 55: parseStr(s, result.wSymbol, pos)
    of 65: parseStr(s, result.wSymbolSfx, pos)
    of 48: parseStr(s, result.wSecurityID, pos)
    of 22: parseStr(s, result.wSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.wNoSecurityAltID, pos)
    of 460: parseInt(s, result.wProduct, pos)
    of 461: parseStr(s, result.wCFICode, pos)
    of 167: parseStr(s, result.wSecurityType, pos)
    of 762: parseStr(s, result.wSecuritySubType, pos)
    of 200: parseStr(s, result.wMaturityMonthYear, pos)
    of 541: parseStr(s, result.wMaturityDate, pos)
    of 201: parseInt(s, result.wPutOrCall, pos)
    of 224: parseStr(s, result.wCouponPaymentDate, pos)
    of 225: parseStr(s, result.wIssueDate, pos)
    of 239: parseStr(s, result.wRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.wRepurchaseTerm, pos)
    of 227: parseFloat(s, result.wRepurchaseRate, pos)
    of 228: parseStr(s, result.wFactor, pos)
    of 255: parseStr(s, result.wCreditRating, pos)
    of 543: parseStr(s, result.wInstrRegistry, pos)
    of 470: parseStr(s, result.wCountryOfIssue, pos)
    of 471: parseStr(s, result.wStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.wLocaleOfIssue, pos)
    of 240: parseStr(s, result.wRedemptionDate, pos)
    of 202: parseFloat(s, result.wStrikePrice, pos)
    of 947: parseStr(s, result.wStrikeCurrency, pos)
    of 206: parseChar(s, result.wOptAttribute, pos)
    of 231: parseStr(s, result.wContractMultiplier, pos)
    of 223: parseFloat(s, result.wCouponRate, pos)
    of 207: parseStr(s, result.wSecurityExchange, pos)
    of 106: parseStr(s, result.wIssuer, pos)
    of 348: parseUInt(s, result.wEncodedIssuerLen, pos)
    of 349: parseStr(s, result.wEncodedIssuer, pos)
    of 107: parseStr(s, result.wSecurityDesc, pos)
    of 350: parseUInt(s, result.wEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.wEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.wPool, pos)
    of 667: parseStr(s, result.wContractSettlMonth, pos)
    of 875: parseInt(s, result.wCPProgram, pos)
    of 876: parseStr(s, result.wCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.wNoEvents, pos)
    of 873: parseStr(s, result.wDatedDate, pos)
    of 874: parseStr(s, result.wInterestAccrualDate, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.wNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.wNoLegs, pos)
    of 291: parseStr(s, result.wFinancialStatus, pos)
    of 292: parseStr(s, result.wCorporateAction, pos)
    of 451: parseFloat(s, result.wNetChgPrevDay, pos)
    of 268: skipValue(s, pos); parseNoMDEntries(s, result.wNoMDEntries, pos)
    of 813: parseInt(s, result.wApplQueueDepth, pos)
    of 814: parseInt(s, result.wApplQueueResolution, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtX(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtX)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 262: parseStr(s, result.xMDReqID, pos)
    of 268: skipValue(s, pos); parseNoMDEntries(s, result.xNoMDEntries, pos)
    of 813: parseInt(s, result.xApplQueueDepth, pos)
    of 814: parseInt(s, result.xApplQueueResolution, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtY(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtY)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 262: parseStr(s, result.yMDReqID, pos)
    of 281: parseChar(s, result.yMDReqRejReason, pos)
    of 816: skipValue(s, pos); parseNoAltMDSource(s, result.yNoAltMDSource, pos)
    of 58: parseStr(s, result.yText, pos)
    of 354: parseUInt(s, result.yEncodedTextLen, pos)
    of 355: parseStr(s, result.yEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtZ(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtZ)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 131: parseStr(s, result.zQuoteReqID, pos)
    of 117: parseStr(s, result.zQuoteID, pos)
    of 298: parseInt(s, result.zQuoteCancelType, pos)
    of 301: parseInt(s, result.zQuoteResponseLevel, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.zNoPartyIDs, pos)
    of 1: parseStr(s, result.zAccount, pos)
    of 660: parseInt(s, result.zAcctIDSource, pos)
    of 581: parseInt(s, result.zAccountType, pos)
    of 336: parseStr(s, result.zTradingSessionID, pos)
    of 625: parseStr(s, result.zTradingSessionSubID, pos)
    of 295: skipValue(s, pos); parseNoQuoteEntries(s, result.zNoQuoteEntries, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtALow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtALow)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 649: parseStr(s, result.alowQuoteStatusReqID, pos)
    of 117: parseStr(s, result.alowQuoteID, pos)
    of 55: parseStr(s, result.alowSymbol, pos)
    of 65: parseStr(s, result.alowSymbolSfx, pos)
    of 48: parseStr(s, result.alowSecurityID, pos)
    of 22: parseStr(s, result.alowSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.alowNoSecurityAltID, pos)
    of 460: parseInt(s, result.alowProduct, pos)
    of 461: parseStr(s, result.alowCFICode, pos)
    of 167: parseStr(s, result.alowSecurityType, pos)
    of 762: parseStr(s, result.alowSecuritySubType, pos)
    of 200: parseStr(s, result.alowMaturityMonthYear, pos)
    of 541: parseStr(s, result.alowMaturityDate, pos)
    of 201: parseInt(s, result.alowPutOrCall, pos)
    of 224: parseStr(s, result.alowCouponPaymentDate, pos)
    of 225: parseStr(s, result.alowIssueDate, pos)
    of 239: parseStr(s, result.alowRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.alowRepurchaseTerm, pos)
    of 227: parseFloat(s, result.alowRepurchaseRate, pos)
    of 228: parseStr(s, result.alowFactor, pos)
    of 255: parseStr(s, result.alowCreditRating, pos)
    of 543: parseStr(s, result.alowInstrRegistry, pos)
    of 470: parseStr(s, result.alowCountryOfIssue, pos)
    of 471: parseStr(s, result.alowStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.alowLocaleOfIssue, pos)
    of 240: parseStr(s, result.alowRedemptionDate, pos)
    of 202: parseFloat(s, result.alowStrikePrice, pos)
    of 947: parseStr(s, result.alowStrikeCurrency, pos)
    of 206: parseChar(s, result.alowOptAttribute, pos)
    of 231: parseStr(s, result.alowContractMultiplier, pos)
    of 223: parseFloat(s, result.alowCouponRate, pos)
    of 207: parseStr(s, result.alowSecurityExchange, pos)
    of 106: parseStr(s, result.alowIssuer, pos)
    of 348: parseUInt(s, result.alowEncodedIssuerLen, pos)
    of 349: parseStr(s, result.alowEncodedIssuer, pos)
    of 107: parseStr(s, result.alowSecurityDesc, pos)
    of 350: parseUInt(s, result.alowEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.alowEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.alowPool, pos)
    of 667: parseStr(s, result.alowContractSettlMonth, pos)
    of 875: parseInt(s, result.alowCPProgram, pos)
    of 876: parseStr(s, result.alowCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.alowNoEvents, pos)
    of 873: parseStr(s, result.alowDatedDate, pos)
    of 874: parseStr(s, result.alowInterestAccrualDate, pos)
    of 913: parseStr(s, result.alowAgreementDesc, pos)
    of 914: parseStr(s, result.alowAgreementID, pos)
    of 915: parseStr(s, result.alowAgreementDate, pos)
    of 918: parseStr(s, result.alowAgreementCurrency, pos)
    of 788: parseInt(s, result.alowTerminationType, pos)
    of 916: parseStr(s, result.alowStartDate, pos)
    of 917: parseStr(s, result.alowEndDate, pos)
    of 919: parseInt(s, result.alowDeliveryType, pos)
    of 898: parseFloat(s, result.alowMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.alowNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.alowNoLegs, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.alowNoPartyIDs, pos)
    of 1: parseStr(s, result.alowAccount, pos)
    of 660: parseInt(s, result.alowAcctIDSource, pos)
    of 581: parseInt(s, result.alowAccountType, pos)
    of 336: parseStr(s, result.alowTradingSessionID, pos)
    of 625: parseStr(s, result.alowTradingSessionSubID, pos)
    of 263: parseChar(s, result.alowSubscriptionRequestType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtBLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtBLow)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 131: parseStr(s, result.blowQuoteReqID, pos)
    of 117: parseStr(s, result.blowQuoteID, pos)
    of 297: parseInt(s, result.blowQuoteStatus, pos)
    of 300: parseInt(s, result.blowQuoteRejectReason, pos)
    of 301: parseInt(s, result.blowQuoteResponseLevel, pos)
    of 537: parseInt(s, result.blowQuoteType, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.blowNoPartyIDs, pos)
    of 1: parseStr(s, result.blowAccount, pos)
    of 660: parseInt(s, result.blowAcctIDSource, pos)
    of 581: parseInt(s, result.blowAccountType, pos)
    of 58: parseStr(s, result.blowText, pos)
    of 354: parseUInt(s, result.blowEncodedTextLen, pos)
    of 355: parseStr(s, result.blowEncodedText, pos)
    of 296: skipValue(s, pos); parseNoQuoteSets(s, result.blowNoQuoteSets, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtCLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtCLow)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 320: parseStr(s, result.clowSecurityReqID, pos)
    of 321: parseInt(s, result.clowSecurityRequestType, pos)
    of 55: parseStr(s, result.clowSymbol, pos)
    of 65: parseStr(s, result.clowSymbolSfx, pos)
    of 48: parseStr(s, result.clowSecurityID, pos)
    of 22: parseStr(s, result.clowSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.clowNoSecurityAltID, pos)
    of 460: parseInt(s, result.clowProduct, pos)
    of 461: parseStr(s, result.clowCFICode, pos)
    of 167: parseStr(s, result.clowSecurityType, pos)
    of 762: parseStr(s, result.clowSecuritySubType, pos)
    of 200: parseStr(s, result.clowMaturityMonthYear, pos)
    of 541: parseStr(s, result.clowMaturityDate, pos)
    of 201: parseInt(s, result.clowPutOrCall, pos)
    of 224: parseStr(s, result.clowCouponPaymentDate, pos)
    of 225: parseStr(s, result.clowIssueDate, pos)
    of 239: parseStr(s, result.clowRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.clowRepurchaseTerm, pos)
    of 227: parseFloat(s, result.clowRepurchaseRate, pos)
    of 228: parseStr(s, result.clowFactor, pos)
    of 255: parseStr(s, result.clowCreditRating, pos)
    of 543: parseStr(s, result.clowInstrRegistry, pos)
    of 470: parseStr(s, result.clowCountryOfIssue, pos)
    of 471: parseStr(s, result.clowStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.clowLocaleOfIssue, pos)
    of 240: parseStr(s, result.clowRedemptionDate, pos)
    of 202: parseFloat(s, result.clowStrikePrice, pos)
    of 947: parseStr(s, result.clowStrikeCurrency, pos)
    of 206: parseChar(s, result.clowOptAttribute, pos)
    of 231: parseStr(s, result.clowContractMultiplier, pos)
    of 223: parseFloat(s, result.clowCouponRate, pos)
    of 207: parseStr(s, result.clowSecurityExchange, pos)
    of 106: parseStr(s, result.clowIssuer, pos)
    of 348: parseUInt(s, result.clowEncodedIssuerLen, pos)
    of 349: parseStr(s, result.clowEncodedIssuer, pos)
    of 107: parseStr(s, result.clowSecurityDesc, pos)
    of 350: parseUInt(s, result.clowEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.clowEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.clowPool, pos)
    of 667: parseStr(s, result.clowContractSettlMonth, pos)
    of 875: parseInt(s, result.clowCPProgram, pos)
    of 876: parseStr(s, result.clowCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.clowNoEvents, pos)
    of 873: parseStr(s, result.clowDatedDate, pos)
    of 874: parseStr(s, result.clowInterestAccrualDate, pos)
    of 668: parseInt(s, result.clowDeliveryForm, pos)
    of 869: parseFloat(s, result.clowPctAtRisk, pos)
    of 870: skipValue(s, pos); parseNoInstrAttrib(s, result.clowNoInstrAttrib, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.clowNoUnderlyings, pos)
    of 15: parseStr(s, result.clowCurrency, pos)
    of 58: parseStr(s, result.clowText, pos)
    of 354: parseUInt(s, result.clowEncodedTextLen, pos)
    of 355: parseStr(s, result.clowEncodedText, pos)
    of 336: parseStr(s, result.clowTradingSessionID, pos)
    of 625: parseStr(s, result.clowTradingSessionSubID, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.clowNoLegs, pos)
    of 827: parseInt(s, result.clowExpirationCycle, pos)
    of 263: parseChar(s, result.clowSubscriptionRequestType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtDLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtDLow)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 320: parseStr(s, result.dlowSecurityReqID, pos)
    of 322: parseStr(s, result.dlowSecurityResponseID, pos)
    of 323: parseInt(s, result.dlowSecurityResponseType, pos)
    of 55: parseStr(s, result.dlowSymbol, pos)
    of 65: parseStr(s, result.dlowSymbolSfx, pos)
    of 48: parseStr(s, result.dlowSecurityID, pos)
    of 22: parseStr(s, result.dlowSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.dlowNoSecurityAltID, pos)
    of 460: parseInt(s, result.dlowProduct, pos)
    of 461: parseStr(s, result.dlowCFICode, pos)
    of 167: parseStr(s, result.dlowSecurityType, pos)
    of 762: parseStr(s, result.dlowSecuritySubType, pos)
    of 200: parseStr(s, result.dlowMaturityMonthYear, pos)
    of 541: parseStr(s, result.dlowMaturityDate, pos)
    of 201: parseInt(s, result.dlowPutOrCall, pos)
    of 224: parseStr(s, result.dlowCouponPaymentDate, pos)
    of 225: parseStr(s, result.dlowIssueDate, pos)
    of 239: parseStr(s, result.dlowRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.dlowRepurchaseTerm, pos)
    of 227: parseFloat(s, result.dlowRepurchaseRate, pos)
    of 228: parseStr(s, result.dlowFactor, pos)
    of 255: parseStr(s, result.dlowCreditRating, pos)
    of 543: parseStr(s, result.dlowInstrRegistry, pos)
    of 470: parseStr(s, result.dlowCountryOfIssue, pos)
    of 471: parseStr(s, result.dlowStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.dlowLocaleOfIssue, pos)
    of 240: parseStr(s, result.dlowRedemptionDate, pos)
    of 202: parseFloat(s, result.dlowStrikePrice, pos)
    of 947: parseStr(s, result.dlowStrikeCurrency, pos)
    of 206: parseChar(s, result.dlowOptAttribute, pos)
    of 231: parseStr(s, result.dlowContractMultiplier, pos)
    of 223: parseFloat(s, result.dlowCouponRate, pos)
    of 207: parseStr(s, result.dlowSecurityExchange, pos)
    of 106: parseStr(s, result.dlowIssuer, pos)
    of 348: parseUInt(s, result.dlowEncodedIssuerLen, pos)
    of 349: parseStr(s, result.dlowEncodedIssuer, pos)
    of 107: parseStr(s, result.dlowSecurityDesc, pos)
    of 350: parseUInt(s, result.dlowEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.dlowEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.dlowPool, pos)
    of 667: parseStr(s, result.dlowContractSettlMonth, pos)
    of 875: parseInt(s, result.dlowCPProgram, pos)
    of 876: parseStr(s, result.dlowCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.dlowNoEvents, pos)
    of 873: parseStr(s, result.dlowDatedDate, pos)
    of 874: parseStr(s, result.dlowInterestAccrualDate, pos)
    of 668: parseInt(s, result.dlowDeliveryForm, pos)
    of 869: parseFloat(s, result.dlowPctAtRisk, pos)
    of 870: skipValue(s, pos); parseNoInstrAttrib(s, result.dlowNoInstrAttrib, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.dlowNoUnderlyings, pos)
    of 15: parseStr(s, result.dlowCurrency, pos)
    of 336: parseStr(s, result.dlowTradingSessionID, pos)
    of 625: parseStr(s, result.dlowTradingSessionSubID, pos)
    of 58: parseStr(s, result.dlowText, pos)
    of 354: parseUInt(s, result.dlowEncodedTextLen, pos)
    of 355: parseStr(s, result.dlowEncodedText, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.dlowNoLegs, pos)
    of 827: parseInt(s, result.dlowExpirationCycle, pos)
    of 561: parseUInt(s, result.dlowRoundLot, pos)
    of 562: parseUInt(s, result.dlowMinTradeVol, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtELow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtELow)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 324: parseStr(s, result.elowSecurityStatusReqID, pos)
    of 55: parseStr(s, result.elowSymbol, pos)
    of 65: parseStr(s, result.elowSymbolSfx, pos)
    of 48: parseStr(s, result.elowSecurityID, pos)
    of 22: parseStr(s, result.elowSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.elowNoSecurityAltID, pos)
    of 460: parseInt(s, result.elowProduct, pos)
    of 461: parseStr(s, result.elowCFICode, pos)
    of 167: parseStr(s, result.elowSecurityType, pos)
    of 762: parseStr(s, result.elowSecuritySubType, pos)
    of 200: parseStr(s, result.elowMaturityMonthYear, pos)
    of 541: parseStr(s, result.elowMaturityDate, pos)
    of 201: parseInt(s, result.elowPutOrCall, pos)
    of 224: parseStr(s, result.elowCouponPaymentDate, pos)
    of 225: parseStr(s, result.elowIssueDate, pos)
    of 239: parseStr(s, result.elowRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.elowRepurchaseTerm, pos)
    of 227: parseFloat(s, result.elowRepurchaseRate, pos)
    of 228: parseStr(s, result.elowFactor, pos)
    of 255: parseStr(s, result.elowCreditRating, pos)
    of 543: parseStr(s, result.elowInstrRegistry, pos)
    of 470: parseStr(s, result.elowCountryOfIssue, pos)
    of 471: parseStr(s, result.elowStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.elowLocaleOfIssue, pos)
    of 240: parseStr(s, result.elowRedemptionDate, pos)
    of 202: parseFloat(s, result.elowStrikePrice, pos)
    of 947: parseStr(s, result.elowStrikeCurrency, pos)
    of 206: parseChar(s, result.elowOptAttribute, pos)
    of 231: parseStr(s, result.elowContractMultiplier, pos)
    of 223: parseFloat(s, result.elowCouponRate, pos)
    of 207: parseStr(s, result.elowSecurityExchange, pos)
    of 106: parseStr(s, result.elowIssuer, pos)
    of 348: parseUInt(s, result.elowEncodedIssuerLen, pos)
    of 349: parseStr(s, result.elowEncodedIssuer, pos)
    of 107: parseStr(s, result.elowSecurityDesc, pos)
    of 350: parseUInt(s, result.elowEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.elowEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.elowPool, pos)
    of 667: parseStr(s, result.elowContractSettlMonth, pos)
    of 875: parseInt(s, result.elowCPProgram, pos)
    of 876: parseStr(s, result.elowCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.elowNoEvents, pos)
    of 873: parseStr(s, result.elowDatedDate, pos)
    of 874: parseStr(s, result.elowInterestAccrualDate, pos)
    of 668: parseInt(s, result.elowDeliveryForm, pos)
    of 869: parseFloat(s, result.elowPctAtRisk, pos)
    of 870: skipValue(s, pos); parseNoInstrAttrib(s, result.elowNoInstrAttrib, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.elowNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.elowNoLegs, pos)
    of 15: parseStr(s, result.elowCurrency, pos)
    of 263: parseChar(s, result.elowSubscriptionRequestType, pos)
    of 336: parseStr(s, result.elowTradingSessionID, pos)
    of 625: parseStr(s, result.elowTradingSessionSubID, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtFLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtFLow)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 324: parseStr(s, result.flowSecurityStatusReqID, pos)
    of 55: parseStr(s, result.flowSymbol, pos)
    of 65: parseStr(s, result.flowSymbolSfx, pos)
    of 48: parseStr(s, result.flowSecurityID, pos)
    of 22: parseStr(s, result.flowSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.flowNoSecurityAltID, pos)
    of 460: parseInt(s, result.flowProduct, pos)
    of 461: parseStr(s, result.flowCFICode, pos)
    of 167: parseStr(s, result.flowSecurityType, pos)
    of 762: parseStr(s, result.flowSecuritySubType, pos)
    of 200: parseStr(s, result.flowMaturityMonthYear, pos)
    of 541: parseStr(s, result.flowMaturityDate, pos)
    of 201: parseInt(s, result.flowPutOrCall, pos)
    of 224: parseStr(s, result.flowCouponPaymentDate, pos)
    of 225: parseStr(s, result.flowIssueDate, pos)
    of 239: parseStr(s, result.flowRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.flowRepurchaseTerm, pos)
    of 227: parseFloat(s, result.flowRepurchaseRate, pos)
    of 228: parseStr(s, result.flowFactor, pos)
    of 255: parseStr(s, result.flowCreditRating, pos)
    of 543: parseStr(s, result.flowInstrRegistry, pos)
    of 470: parseStr(s, result.flowCountryOfIssue, pos)
    of 471: parseStr(s, result.flowStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.flowLocaleOfIssue, pos)
    of 240: parseStr(s, result.flowRedemptionDate, pos)
    of 202: parseFloat(s, result.flowStrikePrice, pos)
    of 947: parseStr(s, result.flowStrikeCurrency, pos)
    of 206: parseChar(s, result.flowOptAttribute, pos)
    of 231: parseStr(s, result.flowContractMultiplier, pos)
    of 223: parseFloat(s, result.flowCouponRate, pos)
    of 207: parseStr(s, result.flowSecurityExchange, pos)
    of 106: parseStr(s, result.flowIssuer, pos)
    of 348: parseUInt(s, result.flowEncodedIssuerLen, pos)
    of 349: parseStr(s, result.flowEncodedIssuer, pos)
    of 107: parseStr(s, result.flowSecurityDesc, pos)
    of 350: parseUInt(s, result.flowEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.flowEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.flowPool, pos)
    of 667: parseStr(s, result.flowContractSettlMonth, pos)
    of 875: parseInt(s, result.flowCPProgram, pos)
    of 876: parseStr(s, result.flowCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.flowNoEvents, pos)
    of 873: parseStr(s, result.flowDatedDate, pos)
    of 874: parseStr(s, result.flowInterestAccrualDate, pos)
    of 668: parseInt(s, result.flowDeliveryForm, pos)
    of 869: parseFloat(s, result.flowPctAtRisk, pos)
    of 870: skipValue(s, pos); parseNoInstrAttrib(s, result.flowNoInstrAttrib, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.flowNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.flowNoLegs, pos)
    of 15: parseStr(s, result.flowCurrency, pos)
    of 336: parseStr(s, result.flowTradingSessionID, pos)
    of 625: parseStr(s, result.flowTradingSessionSubID, pos)
    of 325: parseBool(s, result.flowUnsolicitedIndicator, pos)
    of 326: parseInt(s, result.flowSecurityTradingStatus, pos)
    of 291: parseStr(s, result.flowFinancialStatus, pos)
    of 292: parseStr(s, result.flowCorporateAction, pos)
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
    of 58: parseStr(s, result.flowText, pos)
    of 354: parseUInt(s, result.flowEncodedTextLen, pos)
    of 355: parseStr(s, result.flowEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtGLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtGLow)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 335: parseStr(s, result.glowTradSesReqID, pos)
    of 336: parseStr(s, result.glowTradingSessionID, pos)
    of 625: parseStr(s, result.glowTradingSessionSubID, pos)
    of 338: parseInt(s, result.glowTradSesMethod, pos)
    of 339: parseInt(s, result.glowTradSesMode, pos)
    of 263: parseChar(s, result.glowSubscriptionRequestType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtHLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtHLow)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 335: parseStr(s, result.hlowTradSesReqID, pos)
    of 336: parseStr(s, result.hlowTradingSessionID, pos)
    of 625: parseStr(s, result.hlowTradingSessionSubID, pos)
    of 338: parseInt(s, result.hlowTradSesMethod, pos)
    of 339: parseInt(s, result.hlowTradSesMode, pos)
    of 325: parseBool(s, result.hlowUnsolicitedIndicator, pos)
    of 340: parseInt(s, result.hlowTradSesStatus, pos)
    of 567: parseInt(s, result.hlowTradSesStatusRejReason, pos)
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

proc parsemtILow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtILow)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 131: parseStr(s, result.ilowQuoteReqID, pos)
    of 117: parseStr(s, result.ilowQuoteID, pos)
    of 537: parseInt(s, result.ilowQuoteType, pos)
    of 301: parseInt(s, result.ilowQuoteResponseLevel, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.ilowNoPartyIDs, pos)
    of 1: parseStr(s, result.ilowAccount, pos)
    of 660: parseInt(s, result.ilowAcctIDSource, pos)
    of 581: parseInt(s, result.ilowAccountType, pos)
    of 293: parseUInt(s, result.ilowDefBidSize, pos)
    of 294: parseUInt(s, result.ilowDefOfferSize, pos)
    of 296: skipValue(s, pos); parseNoQuoteSets(s, result.ilowNoQuoteSets, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtJLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtJLow)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 45: parseUInt(s, result.jlowRefSeqNum, pos)
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

proc parsemtKLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtKLow)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 390: parseStr(s, result.klowBidID, pos)
    of 391: parseStr(s, result.klowClientBidID, pos)
    of 374: parseChar(s, result.klowBidRequestTransType, pos)
    of 392: parseStr(s, result.klowListName, pos)
    of 393: parseInt(s, result.klowTotNoRelatedSym, pos)
    of 394: parseInt(s, result.klowBidType, pos)
    of 395: parseInt(s, result.klowNumTickets, pos)
    of 15: parseStr(s, result.klowCurrency, pos)
    of 396: parseUInt(s, result.klowSideValue1, pos)
    of 397: parseUInt(s, result.klowSideValue2, pos)
    of 398: skipValue(s, pos); parseNoBidDescriptors(s, result.klowNoBidDescriptors, pos)
    of 420: skipValue(s, pos); parseNoBidComponents(s, result.klowNoBidComponents, pos)
    of 409: parseInt(s, result.klowLiquidityIndType, pos)
    of 410: parseFloat(s, result.klowWtAverageLiquidity, pos)
    of 411: parseBool(s, result.klowExchangeForPhysical, pos)
    of 412: parseUInt(s, result.klowOutMainCntryUIndex, pos)
    of 413: parseFloat(s, result.klowCrossPercent, pos)
    of 414: parseInt(s, result.klowProgRptReqs, pos)
    of 415: parseInt(s, result.klowProgPeriodInterval, pos)
    of 416: parseInt(s, result.klowIncTaxInd, pos)
    of 121: parseBool(s, result.klowForexReq, pos)
    of 417: parseInt(s, result.klowNumBidders, pos)
    of 75: parseStr(s, result.klowTradeDate, pos)
    of 418: parseChar(s, result.klowBidTradeType, pos)
    of 419: parseChar(s, result.klowBasisPxType, pos)
    of 443: parseStr(s, result.klowStrikeTime, pos)
    of 58: parseStr(s, result.klowText, pos)
    of 354: parseUInt(s, result.klowEncodedTextLen, pos)
    of 355: parseStr(s, result.klowEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtLLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtLLow)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 390: parseStr(s, result.llowBidID, pos)
    of 391: parseStr(s, result.llowClientBidID, pos)
    of 420: skipValue(s, pos); parseNoBidComponents(s, result.llowNoBidComponents, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtMLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtMLow)
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 66: parseStr(s, result.mlowListID, pos)
    of 422: parseInt(s, result.mlowTotNoStrikes, pos)
    of 893: parseBool(s, result.mlowLastFragment, pos)
    of 428: skipValue(s, pos); parseNoStrikes(s, result.mlowNoStrikes, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.mlowNoUnderlyings, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtNLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtNLow)
  result.msgType = mtNLow
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtOLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtOLow)
  result.msgType = mtOLow
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 513: parseStr(s, result.olowRegistID, pos)
    of 514: parseChar(s, result.olowRegistTransType, pos)
    of 508: parseStr(s, result.olowRegistRefID, pos)
    of 11: parseStr(s, result.olowClOrdID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.olowNoPartyIDs, pos)
    of 1: parseStr(s, result.olowAccount, pos)
    of 660: parseInt(s, result.olowAcctIDSource, pos)
    of 493: parseStr(s, result.olowRegistAcctType, pos)
    of 495: parseInt(s, result.olowTaxAdvantageType, pos)
    of 517: parseChar(s, result.olowOwnershipType, pos)
    of 473: skipValue(s, pos); parseNoRegistDtls(s, result.olowNoRegistDtls, pos)
    of 510: skipValue(s, pos); parseNoDistribInsts(s, result.olowNoDistribInsts, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtPLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtPLow)
  result.msgType = mtPLow
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 513: parseStr(s, result.plowRegistID, pos)
    of 514: parseChar(s, result.plowRegistTransType, pos)
    of 508: parseStr(s, result.plowRegistRefID, pos)
    of 11: parseStr(s, result.plowClOrdID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.plowNoPartyIDs, pos)
    of 1: parseStr(s, result.plowAccount, pos)
    of 660: parseInt(s, result.plowAcctIDSource, pos)
    of 506: parseChar(s, result.plowRegistStatus, pos)
    of 507: parseInt(s, result.plowRegistRejReasonCode, pos)
    of 496: parseStr(s, result.plowRegistRejReasonText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtQLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtQLow)
  result.msgType = mtQLow
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 11: parseStr(s, result.qlowClOrdID, pos)
    of 526: parseStr(s, result.qlowSecondaryClOrdID, pos)
    of 530: parseChar(s, result.qlowMassCancelRequestType, pos)
    of 336: parseStr(s, result.qlowTradingSessionID, pos)
    of 625: parseStr(s, result.qlowTradingSessionSubID, pos)
    of 55: parseStr(s, result.qlowSymbol, pos)
    of 65: parseStr(s, result.qlowSymbolSfx, pos)
    of 48: parseStr(s, result.qlowSecurityID, pos)
    of 22: parseStr(s, result.qlowSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.qlowNoSecurityAltID, pos)
    of 460: parseInt(s, result.qlowProduct, pos)
    of 461: parseStr(s, result.qlowCFICode, pos)
    of 167: parseStr(s, result.qlowSecurityType, pos)
    of 762: parseStr(s, result.qlowSecuritySubType, pos)
    of 200: parseStr(s, result.qlowMaturityMonthYear, pos)
    of 541: parseStr(s, result.qlowMaturityDate, pos)
    of 201: parseInt(s, result.qlowPutOrCall, pos)
    of 224: parseStr(s, result.qlowCouponPaymentDate, pos)
    of 225: parseStr(s, result.qlowIssueDate, pos)
    of 239: parseStr(s, result.qlowRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.qlowRepurchaseTerm, pos)
    of 227: parseFloat(s, result.qlowRepurchaseRate, pos)
    of 228: parseStr(s, result.qlowFactor, pos)
    of 255: parseStr(s, result.qlowCreditRating, pos)
    of 543: parseStr(s, result.qlowInstrRegistry, pos)
    of 470: parseStr(s, result.qlowCountryOfIssue, pos)
    of 471: parseStr(s, result.qlowStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.qlowLocaleOfIssue, pos)
    of 240: parseStr(s, result.qlowRedemptionDate, pos)
    of 202: parseFloat(s, result.qlowStrikePrice, pos)
    of 947: parseStr(s, result.qlowStrikeCurrency, pos)
    of 206: parseChar(s, result.qlowOptAttribute, pos)
    of 231: parseStr(s, result.qlowContractMultiplier, pos)
    of 223: parseFloat(s, result.qlowCouponRate, pos)
    of 207: parseStr(s, result.qlowSecurityExchange, pos)
    of 106: parseStr(s, result.qlowIssuer, pos)
    of 348: parseUInt(s, result.qlowEncodedIssuerLen, pos)
    of 349: parseStr(s, result.qlowEncodedIssuer, pos)
    of 107: parseStr(s, result.qlowSecurityDesc, pos)
    of 350: parseUInt(s, result.qlowEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.qlowEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.qlowPool, pos)
    of 667: parseStr(s, result.qlowContractSettlMonth, pos)
    of 875: parseInt(s, result.qlowCPProgram, pos)
    of 876: parseStr(s, result.qlowCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.qlowNoEvents, pos)
    of 873: parseStr(s, result.qlowDatedDate, pos)
    of 874: parseStr(s, result.qlowInterestAccrualDate, pos)
    of 311: parseStr(s, result.qlowUnderlyingSymbol, pos)
    of 312: parseStr(s, result.qlowUnderlyingSymbolSfx, pos)
    of 309: parseStr(s, result.qlowUnderlyingSecurityID, pos)
    of 305: parseStr(s, result.qlowUnderlyingSecurityIDSource, pos)
    of 457: skipValue(s, pos); parseNoUnderlyingSecurityAltID(s, result.qlowNoUnderlyingSecurityAltID, pos)
    of 462: parseInt(s, result.qlowUnderlyingProduct, pos)
    of 463: parseStr(s, result.qlowUnderlyingCFICode, pos)
    of 310: parseStr(s, result.qlowUnderlyingSecurityType, pos)
    of 763: parseStr(s, result.qlowUnderlyingSecuritySubType, pos)
    of 313: parseStr(s, result.qlowUnderlyingMaturityMonthYear, pos)
    of 542: parseStr(s, result.qlowUnderlyingMaturityDate, pos)
    of 315: parseInt(s, result.qlowUnderlyingPutOrCall, pos)
    of 241: parseStr(s, result.qlowUnderlyingCouponPaymentDate, pos)
    of 242: parseStr(s, result.qlowUnderlyingIssueDate, pos)
    of 243: parseStr(s, result.qlowUnderlyingRepoCollateralSecurityType, pos)
    of 244: parseInt(s, result.qlowUnderlyingRepurchaseTerm, pos)
    of 245: parseFloat(s, result.qlowUnderlyingRepurchaseRate, pos)
    of 246: parseStr(s, result.qlowUnderlyingFactor, pos)
    of 256: parseStr(s, result.qlowUnderlyingCreditRating, pos)
    of 595: parseStr(s, result.qlowUnderlyingInstrRegistry, pos)
    of 592: parseStr(s, result.qlowUnderlyingCountryOfIssue, pos)
    of 593: parseStr(s, result.qlowUnderlyingStateOrProvinceOfIssue, pos)
    of 594: parseStr(s, result.qlowUnderlyingLocaleOfIssue, pos)
    of 247: parseStr(s, result.qlowUnderlyingRedemptionDate, pos)
    of 316: parseFloat(s, result.qlowUnderlyingStrikePrice, pos)
    of 941: parseStr(s, result.qlowUnderlyingStrikeCurrency, pos)
    of 317: parseChar(s, result.qlowUnderlyingOptAttribute, pos)
    of 436: parseStr(s, result.qlowUnderlyingContractMultiplier, pos)
    of 435: parseFloat(s, result.qlowUnderlyingCouponRate, pos)
    of 308: parseStr(s, result.qlowUnderlyingSecurityExchange, pos)
    of 306: parseStr(s, result.qlowUnderlyingIssuer, pos)
    of 362: parseUInt(s, result.qlowEncodedUnderlyingIssuerLen, pos)
    of 363: parseStr(s, result.qlowEncodedUnderlyingIssuer, pos)
    of 307: parseStr(s, result.qlowUnderlyingSecurityDesc, pos)
    of 364: parseUInt(s, result.qlowEncodedUnderlyingSecurityDescLen, pos)
    of 365: parseStr(s, result.qlowEncodedUnderlyingSecurityDesc, pos)
    of 877: parseStr(s, result.qlowUnderlyingCPProgram, pos)
    of 878: parseStr(s, result.qlowUnderlyingCPRegType, pos)
    of 318: parseStr(s, result.qlowUnderlyingCurrency, pos)
    of 879: parseUInt(s, result.qlowUnderlyingQty, pos)
    of 810: parseFloat(s, result.qlowUnderlyingPx, pos)
    of 882: parseFloat(s, result.qlowUnderlyingDirtyPrice, pos)
    of 883: parseFloat(s, result.qlowUnderlyingEndPrice, pos)
    of 884: parseUInt(s, result.qlowUnderlyingStartValue, pos)
    of 885: parseUInt(s, result.qlowUnderlyingCurrentValue, pos)
    of 886: parseUInt(s, result.qlowUnderlyingEndValue, pos)
    of 887: skipValue(s, pos); parseNoUnderlyingStips(s, result.qlowNoUnderlyingStips, pos)
    of 54: parseChar(s, result.qlowSide, pos)
    of 60: parseStr(s, result.qlowTransactTime, pos)
    of 58: parseStr(s, result.qlowText, pos)
    of 354: parseUInt(s, result.qlowEncodedTextLen, pos)
    of 355: parseStr(s, result.qlowEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtRLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtRLow)
  result.msgType = mtRLow
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 11: parseStr(s, result.rlowClOrdID, pos)
    of 526: parseStr(s, result.rlowSecondaryClOrdID, pos)
    of 37: parseStr(s, result.rlowOrderID, pos)
    of 198: parseStr(s, result.rlowSecondaryOrderID, pos)
    of 530: parseChar(s, result.rlowMassCancelRequestType, pos)
    of 531: parseChar(s, result.rlowMassCancelResponse, pos)
    of 532: parseChar(s, result.rlowMassCancelRejectReason, pos)
    of 533: parseInt(s, result.rlowTotalAffectedOrders, pos)
    of 534: skipValue(s, pos); parseNoAffectedOrders(s, result.rlowNoAffectedOrders, pos)
    of 336: parseStr(s, result.rlowTradingSessionID, pos)
    of 625: parseStr(s, result.rlowTradingSessionSubID, pos)
    of 55: parseStr(s, result.rlowSymbol, pos)
    of 65: parseStr(s, result.rlowSymbolSfx, pos)
    of 48: parseStr(s, result.rlowSecurityID, pos)
    of 22: parseStr(s, result.rlowSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.rlowNoSecurityAltID, pos)
    of 460: parseInt(s, result.rlowProduct, pos)
    of 461: parseStr(s, result.rlowCFICode, pos)
    of 167: parseStr(s, result.rlowSecurityType, pos)
    of 762: parseStr(s, result.rlowSecuritySubType, pos)
    of 200: parseStr(s, result.rlowMaturityMonthYear, pos)
    of 541: parseStr(s, result.rlowMaturityDate, pos)
    of 201: parseInt(s, result.rlowPutOrCall, pos)
    of 224: parseStr(s, result.rlowCouponPaymentDate, pos)
    of 225: parseStr(s, result.rlowIssueDate, pos)
    of 239: parseStr(s, result.rlowRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.rlowRepurchaseTerm, pos)
    of 227: parseFloat(s, result.rlowRepurchaseRate, pos)
    of 228: parseStr(s, result.rlowFactor, pos)
    of 255: parseStr(s, result.rlowCreditRating, pos)
    of 543: parseStr(s, result.rlowInstrRegistry, pos)
    of 470: parseStr(s, result.rlowCountryOfIssue, pos)
    of 471: parseStr(s, result.rlowStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.rlowLocaleOfIssue, pos)
    of 240: parseStr(s, result.rlowRedemptionDate, pos)
    of 202: parseFloat(s, result.rlowStrikePrice, pos)
    of 947: parseStr(s, result.rlowStrikeCurrency, pos)
    of 206: parseChar(s, result.rlowOptAttribute, pos)
    of 231: parseStr(s, result.rlowContractMultiplier, pos)
    of 223: parseFloat(s, result.rlowCouponRate, pos)
    of 207: parseStr(s, result.rlowSecurityExchange, pos)
    of 106: parseStr(s, result.rlowIssuer, pos)
    of 348: parseUInt(s, result.rlowEncodedIssuerLen, pos)
    of 349: parseStr(s, result.rlowEncodedIssuer, pos)
    of 107: parseStr(s, result.rlowSecurityDesc, pos)
    of 350: parseUInt(s, result.rlowEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.rlowEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.rlowPool, pos)
    of 667: parseStr(s, result.rlowContractSettlMonth, pos)
    of 875: parseInt(s, result.rlowCPProgram, pos)
    of 876: parseStr(s, result.rlowCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.rlowNoEvents, pos)
    of 873: parseStr(s, result.rlowDatedDate, pos)
    of 874: parseStr(s, result.rlowInterestAccrualDate, pos)
    of 311: parseStr(s, result.rlowUnderlyingSymbol, pos)
    of 312: parseStr(s, result.rlowUnderlyingSymbolSfx, pos)
    of 309: parseStr(s, result.rlowUnderlyingSecurityID, pos)
    of 305: parseStr(s, result.rlowUnderlyingSecurityIDSource, pos)
    of 457: skipValue(s, pos); parseNoUnderlyingSecurityAltID(s, result.rlowNoUnderlyingSecurityAltID, pos)
    of 462: parseInt(s, result.rlowUnderlyingProduct, pos)
    of 463: parseStr(s, result.rlowUnderlyingCFICode, pos)
    of 310: parseStr(s, result.rlowUnderlyingSecurityType, pos)
    of 763: parseStr(s, result.rlowUnderlyingSecuritySubType, pos)
    of 313: parseStr(s, result.rlowUnderlyingMaturityMonthYear, pos)
    of 542: parseStr(s, result.rlowUnderlyingMaturityDate, pos)
    of 315: parseInt(s, result.rlowUnderlyingPutOrCall, pos)
    of 241: parseStr(s, result.rlowUnderlyingCouponPaymentDate, pos)
    of 242: parseStr(s, result.rlowUnderlyingIssueDate, pos)
    of 243: parseStr(s, result.rlowUnderlyingRepoCollateralSecurityType, pos)
    of 244: parseInt(s, result.rlowUnderlyingRepurchaseTerm, pos)
    of 245: parseFloat(s, result.rlowUnderlyingRepurchaseRate, pos)
    of 246: parseStr(s, result.rlowUnderlyingFactor, pos)
    of 256: parseStr(s, result.rlowUnderlyingCreditRating, pos)
    of 595: parseStr(s, result.rlowUnderlyingInstrRegistry, pos)
    of 592: parseStr(s, result.rlowUnderlyingCountryOfIssue, pos)
    of 593: parseStr(s, result.rlowUnderlyingStateOrProvinceOfIssue, pos)
    of 594: parseStr(s, result.rlowUnderlyingLocaleOfIssue, pos)
    of 247: parseStr(s, result.rlowUnderlyingRedemptionDate, pos)
    of 316: parseFloat(s, result.rlowUnderlyingStrikePrice, pos)
    of 941: parseStr(s, result.rlowUnderlyingStrikeCurrency, pos)
    of 317: parseChar(s, result.rlowUnderlyingOptAttribute, pos)
    of 436: parseStr(s, result.rlowUnderlyingContractMultiplier, pos)
    of 435: parseFloat(s, result.rlowUnderlyingCouponRate, pos)
    of 308: parseStr(s, result.rlowUnderlyingSecurityExchange, pos)
    of 306: parseStr(s, result.rlowUnderlyingIssuer, pos)
    of 362: parseUInt(s, result.rlowEncodedUnderlyingIssuerLen, pos)
    of 363: parseStr(s, result.rlowEncodedUnderlyingIssuer, pos)
    of 307: parseStr(s, result.rlowUnderlyingSecurityDesc, pos)
    of 364: parseUInt(s, result.rlowEncodedUnderlyingSecurityDescLen, pos)
    of 365: parseStr(s, result.rlowEncodedUnderlyingSecurityDesc, pos)
    of 877: parseStr(s, result.rlowUnderlyingCPProgram, pos)
    of 878: parseStr(s, result.rlowUnderlyingCPRegType, pos)
    of 318: parseStr(s, result.rlowUnderlyingCurrency, pos)
    of 879: parseUInt(s, result.rlowUnderlyingQty, pos)
    of 810: parseFloat(s, result.rlowUnderlyingPx, pos)
    of 882: parseFloat(s, result.rlowUnderlyingDirtyPrice, pos)
    of 883: parseFloat(s, result.rlowUnderlyingEndPrice, pos)
    of 884: parseUInt(s, result.rlowUnderlyingStartValue, pos)
    of 885: parseUInt(s, result.rlowUnderlyingCurrentValue, pos)
    of 886: parseUInt(s, result.rlowUnderlyingEndValue, pos)
    of 887: skipValue(s, pos); parseNoUnderlyingStips(s, result.rlowNoUnderlyingStips, pos)
    of 54: parseChar(s, result.rlowSide, pos)
    of 60: parseStr(s, result.rlowTransactTime, pos)
    of 58: parseStr(s, result.rlowText, pos)
    of 354: parseUInt(s, result.rlowEncodedTextLen, pos)
    of 355: parseStr(s, result.rlowEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtSLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtSLow)
  result.msgType = mtSLow
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 548: parseStr(s, result.slowCrossID, pos)
    of 549: parseInt(s, result.slowCrossType, pos)
    of 550: parseInt(s, result.slowCrossPrioritization, pos)
    of 552: skipValue(s, pos); parseNoSides(s, result.slowNoSides, pos)
    of 55: parseStr(s, result.slowSymbol, pos)
    of 65: parseStr(s, result.slowSymbolSfx, pos)
    of 48: parseStr(s, result.slowSecurityID, pos)
    of 22: parseStr(s, result.slowSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.slowNoSecurityAltID, pos)
    of 460: parseInt(s, result.slowProduct, pos)
    of 461: parseStr(s, result.slowCFICode, pos)
    of 167: parseStr(s, result.slowSecurityType, pos)
    of 762: parseStr(s, result.slowSecuritySubType, pos)
    of 200: parseStr(s, result.slowMaturityMonthYear, pos)
    of 541: parseStr(s, result.slowMaturityDate, pos)
    of 201: parseInt(s, result.slowPutOrCall, pos)
    of 224: parseStr(s, result.slowCouponPaymentDate, pos)
    of 225: parseStr(s, result.slowIssueDate, pos)
    of 239: parseStr(s, result.slowRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.slowRepurchaseTerm, pos)
    of 227: parseFloat(s, result.slowRepurchaseRate, pos)
    of 228: parseStr(s, result.slowFactor, pos)
    of 255: parseStr(s, result.slowCreditRating, pos)
    of 543: parseStr(s, result.slowInstrRegistry, pos)
    of 470: parseStr(s, result.slowCountryOfIssue, pos)
    of 471: parseStr(s, result.slowStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.slowLocaleOfIssue, pos)
    of 240: parseStr(s, result.slowRedemptionDate, pos)
    of 202: parseFloat(s, result.slowStrikePrice, pos)
    of 947: parseStr(s, result.slowStrikeCurrency, pos)
    of 206: parseChar(s, result.slowOptAttribute, pos)
    of 231: parseStr(s, result.slowContractMultiplier, pos)
    of 223: parseFloat(s, result.slowCouponRate, pos)
    of 207: parseStr(s, result.slowSecurityExchange, pos)
    of 106: parseStr(s, result.slowIssuer, pos)
    of 348: parseUInt(s, result.slowEncodedIssuerLen, pos)
    of 349: parseStr(s, result.slowEncodedIssuer, pos)
    of 107: parseStr(s, result.slowSecurityDesc, pos)
    of 350: parseUInt(s, result.slowEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.slowEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.slowPool, pos)
    of 667: parseStr(s, result.slowContractSettlMonth, pos)
    of 875: parseInt(s, result.slowCPProgram, pos)
    of 876: parseStr(s, result.slowCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.slowNoEvents, pos)
    of 873: parseStr(s, result.slowDatedDate, pos)
    of 874: parseStr(s, result.slowInterestAccrualDate, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.slowNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.slowNoLegs, pos)
    of 63: parseChar(s, result.slowSettlType, pos)
    of 64: parseStr(s, result.slowSettlDate, pos)
    of 21: parseChar(s, result.slowHandlInst, pos)
    of 18: parseStr(s, result.slowExecInst, pos)
    of 110: parseUInt(s, result.slowMinQty, pos)
    of 111: parseUInt(s, result.slowMaxFloor, pos)
    of 100: parseStr(s, result.slowExDestination, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.slowNoTradingSessions, pos)
    of 81: parseChar(s, result.slowProcessCode, pos)
    of 140: parseFloat(s, result.slowPrevClosePx, pos)
    of 114: parseBool(s, result.slowLocateReqd, pos)
    of 60: parseStr(s, result.slowTransactTime, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.slowNoStipulations, pos)
    of 40: parseChar(s, result.slowOrdType, pos)
    of 423: parseInt(s, result.slowPriceType, pos)
    of 44: parseFloat(s, result.slowPrice, pos)
    of 99: parseFloat(s, result.slowStopPx, pos)
    of 218: parseFloat(s, result.slowSpread, pos)
    of 220: parseStr(s, result.slowBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.slowBenchmarkCurveName, pos)
    of 222: parseStr(s, result.slowBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.slowBenchmarkPrice, pos)
    of 663: parseInt(s, result.slowBenchmarkPriceType, pos)
    of 699: parseStr(s, result.slowBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.slowBenchmarkSecurityIDSource, pos)
    of 235: parseStr(s, result.slowYieldType, pos)
    of 236: parseFloat(s, result.slowYield, pos)
    of 701: parseStr(s, result.slowYieldCalcDate, pos)
    of 696: parseStr(s, result.slowYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.slowYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.slowYieldRedemptionPriceType, pos)
    of 15: parseStr(s, result.slowCurrency, pos)
    of 376: parseStr(s, result.slowComplianceID, pos)
    of 23: parseStr(s, result.slowIOIID, pos)
    of 117: parseStr(s, result.slowQuoteID, pos)
    of 59: parseChar(s, result.slowTimeInForce, pos)
    of 168: parseStr(s, result.slowEffectiveTime, pos)
    of 432: parseStr(s, result.slowExpireDate, pos)
    of 126: parseStr(s, result.slowExpireTime, pos)
    of 427: parseInt(s, result.slowGTBookingInst, pos)
    of 210: parseUInt(s, result.slowMaxShow, pos)
    of 211: parseStr(s, result.slowPegOffsetValue, pos)
    of 835: parseInt(s, result.slowPegMoveType, pos)
    of 836: parseInt(s, result.slowPegOffsetType, pos)
    of 837: parseInt(s, result.slowPegLimitType, pos)
    of 838: parseInt(s, result.slowPegRoundDirection, pos)
    of 840: parseInt(s, result.slowPegScope, pos)
    of 388: parseChar(s, result.slowDiscretionInst, pos)
    of 389: parseStr(s, result.slowDiscretionOffsetValue, pos)
    of 841: parseInt(s, result.slowDiscretionMoveType, pos)
    of 842: parseInt(s, result.slowDiscretionOffsetType, pos)
    of 843: parseInt(s, result.slowDiscretionLimitType, pos)
    of 844: parseInt(s, result.slowDiscretionRoundDirection, pos)
    of 846: parseInt(s, result.slowDiscretionScope, pos)
    of 847: parseInt(s, result.slowTargetStrategy, pos)
    of 848: parseStr(s, result.slowTargetStrategyParameters, pos)
    of 849: parseFloat(s, result.slowParticipationRate, pos)
    of 480: parseChar(s, result.slowCancellationRights, pos)
    of 481: parseChar(s, result.slowMoneyLaunderingStatus, pos)
    of 513: parseStr(s, result.slowRegistID, pos)
    of 494: parseStr(s, result.slowDesignation, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtTLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtTLow)
  result.msgType = mtTLow
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 37: parseStr(s, result.tlowOrderID, pos)
    of 548: parseStr(s, result.tlowCrossID, pos)
    of 551: parseStr(s, result.tlowOrigCrossID, pos)
    of 549: parseInt(s, result.tlowCrossType, pos)
    of 550: parseInt(s, result.tlowCrossPrioritization, pos)
    of 552: skipValue(s, pos); parseNoSides(s, result.tlowNoSides, pos)
    of 55: parseStr(s, result.tlowSymbol, pos)
    of 65: parseStr(s, result.tlowSymbolSfx, pos)
    of 48: parseStr(s, result.tlowSecurityID, pos)
    of 22: parseStr(s, result.tlowSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.tlowNoSecurityAltID, pos)
    of 460: parseInt(s, result.tlowProduct, pos)
    of 461: parseStr(s, result.tlowCFICode, pos)
    of 167: parseStr(s, result.tlowSecurityType, pos)
    of 762: parseStr(s, result.tlowSecuritySubType, pos)
    of 200: parseStr(s, result.tlowMaturityMonthYear, pos)
    of 541: parseStr(s, result.tlowMaturityDate, pos)
    of 201: parseInt(s, result.tlowPutOrCall, pos)
    of 224: parseStr(s, result.tlowCouponPaymentDate, pos)
    of 225: parseStr(s, result.tlowIssueDate, pos)
    of 239: parseStr(s, result.tlowRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.tlowRepurchaseTerm, pos)
    of 227: parseFloat(s, result.tlowRepurchaseRate, pos)
    of 228: parseStr(s, result.tlowFactor, pos)
    of 255: parseStr(s, result.tlowCreditRating, pos)
    of 543: parseStr(s, result.tlowInstrRegistry, pos)
    of 470: parseStr(s, result.tlowCountryOfIssue, pos)
    of 471: parseStr(s, result.tlowStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.tlowLocaleOfIssue, pos)
    of 240: parseStr(s, result.tlowRedemptionDate, pos)
    of 202: parseFloat(s, result.tlowStrikePrice, pos)
    of 947: parseStr(s, result.tlowStrikeCurrency, pos)
    of 206: parseChar(s, result.tlowOptAttribute, pos)
    of 231: parseStr(s, result.tlowContractMultiplier, pos)
    of 223: parseFloat(s, result.tlowCouponRate, pos)
    of 207: parseStr(s, result.tlowSecurityExchange, pos)
    of 106: parseStr(s, result.tlowIssuer, pos)
    of 348: parseUInt(s, result.tlowEncodedIssuerLen, pos)
    of 349: parseStr(s, result.tlowEncodedIssuer, pos)
    of 107: parseStr(s, result.tlowSecurityDesc, pos)
    of 350: parseUInt(s, result.tlowEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.tlowEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.tlowPool, pos)
    of 667: parseStr(s, result.tlowContractSettlMonth, pos)
    of 875: parseInt(s, result.tlowCPProgram, pos)
    of 876: parseStr(s, result.tlowCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.tlowNoEvents, pos)
    of 873: parseStr(s, result.tlowDatedDate, pos)
    of 874: parseStr(s, result.tlowInterestAccrualDate, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.tlowNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.tlowNoLegs, pos)
    of 63: parseChar(s, result.tlowSettlType, pos)
    of 64: parseStr(s, result.tlowSettlDate, pos)
    of 21: parseChar(s, result.tlowHandlInst, pos)
    of 18: parseStr(s, result.tlowExecInst, pos)
    of 110: parseUInt(s, result.tlowMinQty, pos)
    of 111: parseUInt(s, result.tlowMaxFloor, pos)
    of 100: parseStr(s, result.tlowExDestination, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.tlowNoTradingSessions, pos)
    of 81: parseChar(s, result.tlowProcessCode, pos)
    of 140: parseFloat(s, result.tlowPrevClosePx, pos)
    of 114: parseBool(s, result.tlowLocateReqd, pos)
    of 60: parseStr(s, result.tlowTransactTime, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.tlowNoStipulations, pos)
    of 40: parseChar(s, result.tlowOrdType, pos)
    of 423: parseInt(s, result.tlowPriceType, pos)
    of 44: parseFloat(s, result.tlowPrice, pos)
    of 99: parseFloat(s, result.tlowStopPx, pos)
    of 218: parseFloat(s, result.tlowSpread, pos)
    of 220: parseStr(s, result.tlowBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.tlowBenchmarkCurveName, pos)
    of 222: parseStr(s, result.tlowBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.tlowBenchmarkPrice, pos)
    of 663: parseInt(s, result.tlowBenchmarkPriceType, pos)
    of 699: parseStr(s, result.tlowBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.tlowBenchmarkSecurityIDSource, pos)
    of 235: parseStr(s, result.tlowYieldType, pos)
    of 236: parseFloat(s, result.tlowYield, pos)
    of 701: parseStr(s, result.tlowYieldCalcDate, pos)
    of 696: parseStr(s, result.tlowYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.tlowYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.tlowYieldRedemptionPriceType, pos)
    of 15: parseStr(s, result.tlowCurrency, pos)
    of 376: parseStr(s, result.tlowComplianceID, pos)
    of 23: parseStr(s, result.tlowIOIID, pos)
    of 117: parseStr(s, result.tlowQuoteID, pos)
    of 59: parseChar(s, result.tlowTimeInForce, pos)
    of 168: parseStr(s, result.tlowEffectiveTime, pos)
    of 432: parseStr(s, result.tlowExpireDate, pos)
    of 126: parseStr(s, result.tlowExpireTime, pos)
    of 427: parseInt(s, result.tlowGTBookingInst, pos)
    of 210: parseUInt(s, result.tlowMaxShow, pos)
    of 211: parseStr(s, result.tlowPegOffsetValue, pos)
    of 835: parseInt(s, result.tlowPegMoveType, pos)
    of 836: parseInt(s, result.tlowPegOffsetType, pos)
    of 837: parseInt(s, result.tlowPegLimitType, pos)
    of 838: parseInt(s, result.tlowPegRoundDirection, pos)
    of 840: parseInt(s, result.tlowPegScope, pos)
    of 388: parseChar(s, result.tlowDiscretionInst, pos)
    of 389: parseStr(s, result.tlowDiscretionOffsetValue, pos)
    of 841: parseInt(s, result.tlowDiscretionMoveType, pos)
    of 842: parseInt(s, result.tlowDiscretionOffsetType, pos)
    of 843: parseInt(s, result.tlowDiscretionLimitType, pos)
    of 844: parseInt(s, result.tlowDiscretionRoundDirection, pos)
    of 846: parseInt(s, result.tlowDiscretionScope, pos)
    of 847: parseInt(s, result.tlowTargetStrategy, pos)
    of 848: parseStr(s, result.tlowTargetStrategyParameters, pos)
    of 849: parseFloat(s, result.tlowParticipationRate, pos)
    of 480: parseChar(s, result.tlowCancellationRights, pos)
    of 481: parseChar(s, result.tlowMoneyLaunderingStatus, pos)
    of 513: parseStr(s, result.tlowRegistID, pos)
    of 494: parseStr(s, result.tlowDesignation, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtULow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtULow)
  result.msgType = mtULow
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 37: parseStr(s, result.ulowOrderID, pos)
    of 548: parseStr(s, result.ulowCrossID, pos)
    of 551: parseStr(s, result.ulowOrigCrossID, pos)
    of 549: parseInt(s, result.ulowCrossType, pos)
    of 550: parseInt(s, result.ulowCrossPrioritization, pos)
    of 552: skipValue(s, pos); parseNoSides(s, result.ulowNoSides, pos)
    of 55: parseStr(s, result.ulowSymbol, pos)
    of 65: parseStr(s, result.ulowSymbolSfx, pos)
    of 48: parseStr(s, result.ulowSecurityID, pos)
    of 22: parseStr(s, result.ulowSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.ulowNoSecurityAltID, pos)
    of 460: parseInt(s, result.ulowProduct, pos)
    of 461: parseStr(s, result.ulowCFICode, pos)
    of 167: parseStr(s, result.ulowSecurityType, pos)
    of 762: parseStr(s, result.ulowSecuritySubType, pos)
    of 200: parseStr(s, result.ulowMaturityMonthYear, pos)
    of 541: parseStr(s, result.ulowMaturityDate, pos)
    of 201: parseInt(s, result.ulowPutOrCall, pos)
    of 224: parseStr(s, result.ulowCouponPaymentDate, pos)
    of 225: parseStr(s, result.ulowIssueDate, pos)
    of 239: parseStr(s, result.ulowRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.ulowRepurchaseTerm, pos)
    of 227: parseFloat(s, result.ulowRepurchaseRate, pos)
    of 228: parseStr(s, result.ulowFactor, pos)
    of 255: parseStr(s, result.ulowCreditRating, pos)
    of 543: parseStr(s, result.ulowInstrRegistry, pos)
    of 470: parseStr(s, result.ulowCountryOfIssue, pos)
    of 471: parseStr(s, result.ulowStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.ulowLocaleOfIssue, pos)
    of 240: parseStr(s, result.ulowRedemptionDate, pos)
    of 202: parseFloat(s, result.ulowStrikePrice, pos)
    of 947: parseStr(s, result.ulowStrikeCurrency, pos)
    of 206: parseChar(s, result.ulowOptAttribute, pos)
    of 231: parseStr(s, result.ulowContractMultiplier, pos)
    of 223: parseFloat(s, result.ulowCouponRate, pos)
    of 207: parseStr(s, result.ulowSecurityExchange, pos)
    of 106: parseStr(s, result.ulowIssuer, pos)
    of 348: parseUInt(s, result.ulowEncodedIssuerLen, pos)
    of 349: parseStr(s, result.ulowEncodedIssuer, pos)
    of 107: parseStr(s, result.ulowSecurityDesc, pos)
    of 350: parseUInt(s, result.ulowEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.ulowEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.ulowPool, pos)
    of 667: parseStr(s, result.ulowContractSettlMonth, pos)
    of 875: parseInt(s, result.ulowCPProgram, pos)
    of 876: parseStr(s, result.ulowCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.ulowNoEvents, pos)
    of 873: parseStr(s, result.ulowDatedDate, pos)
    of 874: parseStr(s, result.ulowInterestAccrualDate, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.ulowNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.ulowNoLegs, pos)
    of 60: parseStr(s, result.ulowTransactTime, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtVLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtVLow)
  result.msgType = mtVLow
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 320: parseStr(s, result.vlowSecurityReqID, pos)
    of 58: parseStr(s, result.vlowText, pos)
    of 354: parseUInt(s, result.vlowEncodedTextLen, pos)
    of 355: parseStr(s, result.vlowEncodedText, pos)
    of 336: parseStr(s, result.vlowTradingSessionID, pos)
    of 625: parseStr(s, result.vlowTradingSessionSubID, pos)
    of 460: parseInt(s, result.vlowProduct, pos)
    of 167: parseStr(s, result.vlowSecurityType, pos)
    of 762: parseStr(s, result.vlowSecuritySubType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtWLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtWLow)
  result.msgType = mtWLow
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 320: parseStr(s, result.wlowSecurityReqID, pos)
    of 322: parseStr(s, result.wlowSecurityResponseID, pos)
    of 323: parseInt(s, result.wlowSecurityResponseType, pos)
    of 557: parseInt(s, result.wlowTotNoSecurityTypes, pos)
    of 893: parseBool(s, result.wlowLastFragment, pos)
    of 558: skipValue(s, pos); parseNoSecurityTypes(s, result.wlowNoSecurityTypes, pos)
    of 58: parseStr(s, result.wlowText, pos)
    of 354: parseUInt(s, result.wlowEncodedTextLen, pos)
    of 355: parseStr(s, result.wlowEncodedText, pos)
    of 336: parseStr(s, result.wlowTradingSessionID, pos)
    of 625: parseStr(s, result.wlowTradingSessionSubID, pos)
    of 263: parseChar(s, result.wlowSubscriptionRequestType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtXLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtXLow)
  result.msgType = mtXLow
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 320: parseStr(s, result.xlowSecurityReqID, pos)
    of 559: parseInt(s, result.xlowSecurityListRequestType, pos)
    of 55: parseStr(s, result.xlowSymbol, pos)
    of 65: parseStr(s, result.xlowSymbolSfx, pos)
    of 48: parseStr(s, result.xlowSecurityID, pos)
    of 22: parseStr(s, result.xlowSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.xlowNoSecurityAltID, pos)
    of 460: parseInt(s, result.xlowProduct, pos)
    of 461: parseStr(s, result.xlowCFICode, pos)
    of 167: parseStr(s, result.xlowSecurityType, pos)
    of 762: parseStr(s, result.xlowSecuritySubType, pos)
    of 200: parseStr(s, result.xlowMaturityMonthYear, pos)
    of 541: parseStr(s, result.xlowMaturityDate, pos)
    of 201: parseInt(s, result.xlowPutOrCall, pos)
    of 224: parseStr(s, result.xlowCouponPaymentDate, pos)
    of 225: parseStr(s, result.xlowIssueDate, pos)
    of 239: parseStr(s, result.xlowRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.xlowRepurchaseTerm, pos)
    of 227: parseFloat(s, result.xlowRepurchaseRate, pos)
    of 228: parseStr(s, result.xlowFactor, pos)
    of 255: parseStr(s, result.xlowCreditRating, pos)
    of 543: parseStr(s, result.xlowInstrRegistry, pos)
    of 470: parseStr(s, result.xlowCountryOfIssue, pos)
    of 471: parseStr(s, result.xlowStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.xlowLocaleOfIssue, pos)
    of 240: parseStr(s, result.xlowRedemptionDate, pos)
    of 202: parseFloat(s, result.xlowStrikePrice, pos)
    of 947: parseStr(s, result.xlowStrikeCurrency, pos)
    of 206: parseChar(s, result.xlowOptAttribute, pos)
    of 231: parseStr(s, result.xlowContractMultiplier, pos)
    of 223: parseFloat(s, result.xlowCouponRate, pos)
    of 207: parseStr(s, result.xlowSecurityExchange, pos)
    of 106: parseStr(s, result.xlowIssuer, pos)
    of 348: parseUInt(s, result.xlowEncodedIssuerLen, pos)
    of 349: parseStr(s, result.xlowEncodedIssuer, pos)
    of 107: parseStr(s, result.xlowSecurityDesc, pos)
    of 350: parseUInt(s, result.xlowEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.xlowEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.xlowPool, pos)
    of 667: parseStr(s, result.xlowContractSettlMonth, pos)
    of 875: parseInt(s, result.xlowCPProgram, pos)
    of 876: parseStr(s, result.xlowCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.xlowNoEvents, pos)
    of 873: parseStr(s, result.xlowDatedDate, pos)
    of 874: parseStr(s, result.xlowInterestAccrualDate, pos)
    of 668: parseInt(s, result.xlowDeliveryForm, pos)
    of 869: parseFloat(s, result.xlowPctAtRisk, pos)
    of 870: skipValue(s, pos); parseNoInstrAttrib(s, result.xlowNoInstrAttrib, pos)
    of 913: parseStr(s, result.xlowAgreementDesc, pos)
    of 914: parseStr(s, result.xlowAgreementID, pos)
    of 915: parseStr(s, result.xlowAgreementDate, pos)
    of 918: parseStr(s, result.xlowAgreementCurrency, pos)
    of 788: parseInt(s, result.xlowTerminationType, pos)
    of 916: parseStr(s, result.xlowStartDate, pos)
    of 917: parseStr(s, result.xlowEndDate, pos)
    of 919: parseInt(s, result.xlowDeliveryType, pos)
    of 898: parseFloat(s, result.xlowMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.xlowNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.xlowNoLegs, pos)
    of 15: parseStr(s, result.xlowCurrency, pos)
    of 58: parseStr(s, result.xlowText, pos)
    of 354: parseUInt(s, result.xlowEncodedTextLen, pos)
    of 355: parseStr(s, result.xlowEncodedText, pos)
    of 336: parseStr(s, result.xlowTradingSessionID, pos)
    of 625: parseStr(s, result.xlowTradingSessionSubID, pos)
    of 263: parseChar(s, result.xlowSubscriptionRequestType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtYLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtYLow)
  result.msgType = mtYLow
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 320: parseStr(s, result.ylowSecurityReqID, pos)
    of 322: parseStr(s, result.ylowSecurityResponseID, pos)
    of 560: parseInt(s, result.ylowSecurityRequestResult, pos)
    of 393: parseInt(s, result.ylowTotNoRelatedSym, pos)
    of 893: parseBool(s, result.ylowLastFragment, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.ylowNoRelatedSym, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtZLow(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtZLow)
  result.msgType = mtZLow
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 320: parseStr(s, result.zlowSecurityReqID, pos)
    of 559: parseInt(s, result.zlowSecurityListRequestType, pos)
    of 311: parseStr(s, result.zlowUnderlyingSymbol, pos)
    of 312: parseStr(s, result.zlowUnderlyingSymbolSfx, pos)
    of 309: parseStr(s, result.zlowUnderlyingSecurityID, pos)
    of 305: parseStr(s, result.zlowUnderlyingSecurityIDSource, pos)
    of 457: skipValue(s, pos); parseNoUnderlyingSecurityAltID(s, result.zlowNoUnderlyingSecurityAltID, pos)
    of 462: parseInt(s, result.zlowUnderlyingProduct, pos)
    of 463: parseStr(s, result.zlowUnderlyingCFICode, pos)
    of 310: parseStr(s, result.zlowUnderlyingSecurityType, pos)
    of 763: parseStr(s, result.zlowUnderlyingSecuritySubType, pos)
    of 313: parseStr(s, result.zlowUnderlyingMaturityMonthYear, pos)
    of 542: parseStr(s, result.zlowUnderlyingMaturityDate, pos)
    of 315: parseInt(s, result.zlowUnderlyingPutOrCall, pos)
    of 241: parseStr(s, result.zlowUnderlyingCouponPaymentDate, pos)
    of 242: parseStr(s, result.zlowUnderlyingIssueDate, pos)
    of 243: parseStr(s, result.zlowUnderlyingRepoCollateralSecurityType, pos)
    of 244: parseInt(s, result.zlowUnderlyingRepurchaseTerm, pos)
    of 245: parseFloat(s, result.zlowUnderlyingRepurchaseRate, pos)
    of 246: parseStr(s, result.zlowUnderlyingFactor, pos)
    of 256: parseStr(s, result.zlowUnderlyingCreditRating, pos)
    of 595: parseStr(s, result.zlowUnderlyingInstrRegistry, pos)
    of 592: parseStr(s, result.zlowUnderlyingCountryOfIssue, pos)
    of 593: parseStr(s, result.zlowUnderlyingStateOrProvinceOfIssue, pos)
    of 594: parseStr(s, result.zlowUnderlyingLocaleOfIssue, pos)
    of 247: parseStr(s, result.zlowUnderlyingRedemptionDate, pos)
    of 316: parseFloat(s, result.zlowUnderlyingStrikePrice, pos)
    of 941: parseStr(s, result.zlowUnderlyingStrikeCurrency, pos)
    of 317: parseChar(s, result.zlowUnderlyingOptAttribute, pos)
    of 436: parseStr(s, result.zlowUnderlyingContractMultiplier, pos)
    of 435: parseFloat(s, result.zlowUnderlyingCouponRate, pos)
    of 308: parseStr(s, result.zlowUnderlyingSecurityExchange, pos)
    of 306: parseStr(s, result.zlowUnderlyingIssuer, pos)
    of 362: parseUInt(s, result.zlowEncodedUnderlyingIssuerLen, pos)
    of 363: parseStr(s, result.zlowEncodedUnderlyingIssuer, pos)
    of 307: parseStr(s, result.zlowUnderlyingSecurityDesc, pos)
    of 364: parseUInt(s, result.zlowEncodedUnderlyingSecurityDescLen, pos)
    of 365: parseStr(s, result.zlowEncodedUnderlyingSecurityDesc, pos)
    of 877: parseStr(s, result.zlowUnderlyingCPProgram, pos)
    of 878: parseStr(s, result.zlowUnderlyingCPRegType, pos)
    of 318: parseStr(s, result.zlowUnderlyingCurrency, pos)
    of 879: parseUInt(s, result.zlowUnderlyingQty, pos)
    of 810: parseFloat(s, result.zlowUnderlyingPx, pos)
    of 882: parseFloat(s, result.zlowUnderlyingDirtyPrice, pos)
    of 883: parseFloat(s, result.zlowUnderlyingEndPrice, pos)
    of 884: parseUInt(s, result.zlowUnderlyingStartValue, pos)
    of 885: parseUInt(s, result.zlowUnderlyingCurrentValue, pos)
    of 886: parseUInt(s, result.zlowUnderlyingEndValue, pos)
    of 887: skipValue(s, pos); parseNoUnderlyingStips(s, result.zlowNoUnderlyingStips, pos)
    of 762: parseStr(s, result.zlowSecuritySubType, pos)
    of 15: parseStr(s, result.zlowCurrency, pos)
    of 58: parseStr(s, result.zlowText, pos)
    of 354: parseUInt(s, result.zlowEncodedTextLen, pos)
    of 355: parseStr(s, result.zlowEncodedText, pos)
    of 336: parseStr(s, result.zlowTradingSessionID, pos)
    of 625: parseStr(s, result.zlowTradingSessionSubID, pos)
    of 263: parseChar(s, result.zlowSubscriptionRequestType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAA(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAA)
  result.msgType = mtAA
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 320: parseStr(s, result.aaSecurityReqID, pos)
    of 322: parseStr(s, result.aaSecurityResponseID, pos)
    of 560: parseInt(s, result.aaSecurityRequestResult, pos)
    of 311: parseStr(s, result.aaUnderlyingSymbol, pos)
    of 312: parseStr(s, result.aaUnderlyingSymbolSfx, pos)
    of 309: parseStr(s, result.aaUnderlyingSecurityID, pos)
    of 305: parseStr(s, result.aaUnderlyingSecurityIDSource, pos)
    of 457: skipValue(s, pos); parseNoUnderlyingSecurityAltID(s, result.aaNoUnderlyingSecurityAltID, pos)
    of 462: parseInt(s, result.aaUnderlyingProduct, pos)
    of 463: parseStr(s, result.aaUnderlyingCFICode, pos)
    of 310: parseStr(s, result.aaUnderlyingSecurityType, pos)
    of 763: parseStr(s, result.aaUnderlyingSecuritySubType, pos)
    of 313: parseStr(s, result.aaUnderlyingMaturityMonthYear, pos)
    of 542: parseStr(s, result.aaUnderlyingMaturityDate, pos)
    of 315: parseInt(s, result.aaUnderlyingPutOrCall, pos)
    of 241: parseStr(s, result.aaUnderlyingCouponPaymentDate, pos)
    of 242: parseStr(s, result.aaUnderlyingIssueDate, pos)
    of 243: parseStr(s, result.aaUnderlyingRepoCollateralSecurityType, pos)
    of 244: parseInt(s, result.aaUnderlyingRepurchaseTerm, pos)
    of 245: parseFloat(s, result.aaUnderlyingRepurchaseRate, pos)
    of 246: parseStr(s, result.aaUnderlyingFactor, pos)
    of 256: parseStr(s, result.aaUnderlyingCreditRating, pos)
    of 595: parseStr(s, result.aaUnderlyingInstrRegistry, pos)
    of 592: parseStr(s, result.aaUnderlyingCountryOfIssue, pos)
    of 593: parseStr(s, result.aaUnderlyingStateOrProvinceOfIssue, pos)
    of 594: parseStr(s, result.aaUnderlyingLocaleOfIssue, pos)
    of 247: parseStr(s, result.aaUnderlyingRedemptionDate, pos)
    of 316: parseFloat(s, result.aaUnderlyingStrikePrice, pos)
    of 941: parseStr(s, result.aaUnderlyingStrikeCurrency, pos)
    of 317: parseChar(s, result.aaUnderlyingOptAttribute, pos)
    of 436: parseStr(s, result.aaUnderlyingContractMultiplier, pos)
    of 435: parseFloat(s, result.aaUnderlyingCouponRate, pos)
    of 308: parseStr(s, result.aaUnderlyingSecurityExchange, pos)
    of 306: parseStr(s, result.aaUnderlyingIssuer, pos)
    of 362: parseUInt(s, result.aaEncodedUnderlyingIssuerLen, pos)
    of 363: parseStr(s, result.aaEncodedUnderlyingIssuer, pos)
    of 307: parseStr(s, result.aaUnderlyingSecurityDesc, pos)
    of 364: parseUInt(s, result.aaEncodedUnderlyingSecurityDescLen, pos)
    of 365: parseStr(s, result.aaEncodedUnderlyingSecurityDesc, pos)
    of 877: parseStr(s, result.aaUnderlyingCPProgram, pos)
    of 878: parseStr(s, result.aaUnderlyingCPRegType, pos)
    of 318: parseStr(s, result.aaUnderlyingCurrency, pos)
    of 879: parseUInt(s, result.aaUnderlyingQty, pos)
    of 810: parseFloat(s, result.aaUnderlyingPx, pos)
    of 882: parseFloat(s, result.aaUnderlyingDirtyPrice, pos)
    of 883: parseFloat(s, result.aaUnderlyingEndPrice, pos)
    of 884: parseUInt(s, result.aaUnderlyingStartValue, pos)
    of 885: parseUInt(s, result.aaUnderlyingCurrentValue, pos)
    of 886: parseUInt(s, result.aaUnderlyingEndValue, pos)
    of 887: skipValue(s, pos); parseNoUnderlyingStips(s, result.aaNoUnderlyingStips, pos)
    of 393: parseInt(s, result.aaTotNoRelatedSym, pos)
    of 893: parseBool(s, result.aaLastFragment, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.aaNoRelatedSym, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAB(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAB)
  result.msgType = mtAB
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 11: parseStr(s, result.abClOrdID, pos)
    of 526: parseStr(s, result.abSecondaryClOrdID, pos)
    of 583: parseStr(s, result.abClOrdLinkID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.abNoPartyIDs, pos)
    of 229: parseStr(s, result.abTradeOriginationDate, pos)
    of 75: parseStr(s, result.abTradeDate, pos)
    of 1: parseStr(s, result.abAccount, pos)
    of 660: parseInt(s, result.abAcctIDSource, pos)
    of 581: parseInt(s, result.abAccountType, pos)
    of 589: parseChar(s, result.abDayBookingInst, pos)
    of 590: parseChar(s, result.abBookingUnit, pos)
    of 591: parseChar(s, result.abPreallocMethod, pos)
    of 70: parseStr(s, result.abAllocID, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.abNoAllocs, pos)
    of 63: parseChar(s, result.abSettlType, pos)
    of 64: parseStr(s, result.abSettlDate, pos)
    of 544: parseChar(s, result.abCashMargin, pos)
    of 635: parseStr(s, result.abClearingFeeIndicator, pos)
    of 21: parseChar(s, result.abHandlInst, pos)
    of 18: parseStr(s, result.abExecInst, pos)
    of 110: parseUInt(s, result.abMinQty, pos)
    of 111: parseUInt(s, result.abMaxFloor, pos)
    of 100: parseStr(s, result.abExDestination, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.abNoTradingSessions, pos)
    of 81: parseChar(s, result.abProcessCode, pos)
    of 54: parseChar(s, result.abSide, pos)
    of 55: parseStr(s, result.abSymbol, pos)
    of 65: parseStr(s, result.abSymbolSfx, pos)
    of 48: parseStr(s, result.abSecurityID, pos)
    of 22: parseStr(s, result.abSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.abNoSecurityAltID, pos)
    of 460: parseInt(s, result.abProduct, pos)
    of 461: parseStr(s, result.abCFICode, pos)
    of 167: parseStr(s, result.abSecurityType, pos)
    of 762: parseStr(s, result.abSecuritySubType, pos)
    of 200: parseStr(s, result.abMaturityMonthYear, pos)
    of 541: parseStr(s, result.abMaturityDate, pos)
    of 201: parseInt(s, result.abPutOrCall, pos)
    of 224: parseStr(s, result.abCouponPaymentDate, pos)
    of 225: parseStr(s, result.abIssueDate, pos)
    of 239: parseStr(s, result.abRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.abRepurchaseTerm, pos)
    of 227: parseFloat(s, result.abRepurchaseRate, pos)
    of 228: parseStr(s, result.abFactor, pos)
    of 255: parseStr(s, result.abCreditRating, pos)
    of 543: parseStr(s, result.abInstrRegistry, pos)
    of 470: parseStr(s, result.abCountryOfIssue, pos)
    of 471: parseStr(s, result.abStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.abLocaleOfIssue, pos)
    of 240: parseStr(s, result.abRedemptionDate, pos)
    of 202: parseFloat(s, result.abStrikePrice, pos)
    of 947: parseStr(s, result.abStrikeCurrency, pos)
    of 206: parseChar(s, result.abOptAttribute, pos)
    of 231: parseStr(s, result.abContractMultiplier, pos)
    of 223: parseFloat(s, result.abCouponRate, pos)
    of 207: parseStr(s, result.abSecurityExchange, pos)
    of 106: parseStr(s, result.abIssuer, pos)
    of 348: parseUInt(s, result.abEncodedIssuerLen, pos)
    of 349: parseStr(s, result.abEncodedIssuer, pos)
    of 107: parseStr(s, result.abSecurityDesc, pos)
    of 350: parseUInt(s, result.abEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.abEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.abPool, pos)
    of 667: parseStr(s, result.abContractSettlMonth, pos)
    of 875: parseInt(s, result.abCPProgram, pos)
    of 876: parseStr(s, result.abCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.abNoEvents, pos)
    of 873: parseStr(s, result.abDatedDate, pos)
    of 874: parseStr(s, result.abInterestAccrualDate, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.abNoUnderlyings, pos)
    of 140: parseFloat(s, result.abPrevClosePx, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.abNoLegs, pos)
    of 114: parseBool(s, result.abLocateReqd, pos)
    of 60: parseStr(s, result.abTransactTime, pos)
    of 854: parseInt(s, result.abQtyType, pos)
    of 38: parseUInt(s, result.abOrderQty, pos)
    of 152: parseUInt(s, result.abCashOrderQty, pos)
    of 516: parseFloat(s, result.abOrderPercent, pos)
    of 468: parseChar(s, result.abRoundingDirection, pos)
    of 469: parseStr(s, result.abRoundingModulus, pos)
    of 40: parseChar(s, result.abOrdType, pos)
    of 423: parseInt(s, result.abPriceType, pos)
    of 44: parseFloat(s, result.abPrice, pos)
    of 99: parseFloat(s, result.abStopPx, pos)
    of 15: parseStr(s, result.abCurrency, pos)
    of 376: parseStr(s, result.abComplianceID, pos)
    of 377: parseBool(s, result.abSolicitedFlag, pos)
    of 23: parseStr(s, result.abIOIID, pos)
    of 117: parseStr(s, result.abQuoteID, pos)
    of 59: parseChar(s, result.abTimeInForce, pos)
    of 168: parseStr(s, result.abEffectiveTime, pos)
    of 432: parseStr(s, result.abExpireDate, pos)
    of 126: parseStr(s, result.abExpireTime, pos)
    of 427: parseInt(s, result.abGTBookingInst, pos)
    of 12: parseUInt(s, result.abCommission, pos)
    of 13: parseChar(s, result.abCommType, pos)
    of 479: parseStr(s, result.abCommCurrency, pos)
    of 497: parseChar(s, result.abFundRenewWaiv, pos)
    of 528: parseChar(s, result.abOrderCapacity, pos)
    of 529: parseStr(s, result.abOrderRestrictions, pos)
    of 582: parseInt(s, result.abCustOrderCapacity, pos)
    of 121: parseBool(s, result.abForexReq, pos)
    of 120: parseStr(s, result.abSettlCurrency, pos)
    of 775: parseInt(s, result.abBookingType, pos)
    of 58: parseStr(s, result.abText, pos)
    of 354: parseUInt(s, result.abEncodedTextLen, pos)
    of 355: parseStr(s, result.abEncodedText, pos)
    of 77: parseChar(s, result.abPositionEffect, pos)
    of 203: parseInt(s, result.abCoveredOrUncovered, pos)
    of 210: parseUInt(s, result.abMaxShow, pos)
    of 211: parseStr(s, result.abPegOffsetValue, pos)
    of 835: parseInt(s, result.abPegMoveType, pos)
    of 836: parseInt(s, result.abPegOffsetType, pos)
    of 837: parseInt(s, result.abPegLimitType, pos)
    of 838: parseInt(s, result.abPegRoundDirection, pos)
    of 840: parseInt(s, result.abPegScope, pos)
    of 388: parseChar(s, result.abDiscretionInst, pos)
    of 389: parseStr(s, result.abDiscretionOffsetValue, pos)
    of 841: parseInt(s, result.abDiscretionMoveType, pos)
    of 842: parseInt(s, result.abDiscretionOffsetType, pos)
    of 843: parseInt(s, result.abDiscretionLimitType, pos)
    of 844: parseInt(s, result.abDiscretionRoundDirection, pos)
    of 846: parseInt(s, result.abDiscretionScope, pos)
    of 847: parseInt(s, result.abTargetStrategy, pos)
    of 848: parseStr(s, result.abTargetStrategyParameters, pos)
    of 849: parseFloat(s, result.abParticipationRate, pos)
    of 480: parseChar(s, result.abCancellationRights, pos)
    of 481: parseChar(s, result.abMoneyLaunderingStatus, pos)
    of 513: parseStr(s, result.abRegistID, pos)
    of 494: parseStr(s, result.abDesignation, pos)
    of 563: parseInt(s, result.abMultiLegRptTypeReq, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAC(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAC)
  result.msgType = mtAC
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 37: parseStr(s, result.acOrderID, pos)
    of 41: parseStr(s, result.acOrigClOrdID, pos)
    of 11: parseStr(s, result.acClOrdID, pos)
    of 526: parseStr(s, result.acSecondaryClOrdID, pos)
    of 583: parseStr(s, result.acClOrdLinkID, pos)
    of 586: parseStr(s, result.acOrigOrdModTime, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.acNoPartyIDs, pos)
    of 229: parseStr(s, result.acTradeOriginationDate, pos)
    of 75: parseStr(s, result.acTradeDate, pos)
    of 1: parseStr(s, result.acAccount, pos)
    of 660: parseInt(s, result.acAcctIDSource, pos)
    of 581: parseInt(s, result.acAccountType, pos)
    of 589: parseChar(s, result.acDayBookingInst, pos)
    of 590: parseChar(s, result.acBookingUnit, pos)
    of 591: parseChar(s, result.acPreallocMethod, pos)
    of 70: parseStr(s, result.acAllocID, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.acNoAllocs, pos)
    of 63: parseChar(s, result.acSettlType, pos)
    of 64: parseStr(s, result.acSettlDate, pos)
    of 544: parseChar(s, result.acCashMargin, pos)
    of 635: parseStr(s, result.acClearingFeeIndicator, pos)
    of 21: parseChar(s, result.acHandlInst, pos)
    of 18: parseStr(s, result.acExecInst, pos)
    of 110: parseUInt(s, result.acMinQty, pos)
    of 111: parseUInt(s, result.acMaxFloor, pos)
    of 100: parseStr(s, result.acExDestination, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.acNoTradingSessions, pos)
    of 81: parseChar(s, result.acProcessCode, pos)
    of 54: parseChar(s, result.acSide, pos)
    of 55: parseStr(s, result.acSymbol, pos)
    of 65: parseStr(s, result.acSymbolSfx, pos)
    of 48: parseStr(s, result.acSecurityID, pos)
    of 22: parseStr(s, result.acSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.acNoSecurityAltID, pos)
    of 460: parseInt(s, result.acProduct, pos)
    of 461: parseStr(s, result.acCFICode, pos)
    of 167: parseStr(s, result.acSecurityType, pos)
    of 762: parseStr(s, result.acSecuritySubType, pos)
    of 200: parseStr(s, result.acMaturityMonthYear, pos)
    of 541: parseStr(s, result.acMaturityDate, pos)
    of 201: parseInt(s, result.acPutOrCall, pos)
    of 224: parseStr(s, result.acCouponPaymentDate, pos)
    of 225: parseStr(s, result.acIssueDate, pos)
    of 239: parseStr(s, result.acRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.acRepurchaseTerm, pos)
    of 227: parseFloat(s, result.acRepurchaseRate, pos)
    of 228: parseStr(s, result.acFactor, pos)
    of 255: parseStr(s, result.acCreditRating, pos)
    of 543: parseStr(s, result.acInstrRegistry, pos)
    of 470: parseStr(s, result.acCountryOfIssue, pos)
    of 471: parseStr(s, result.acStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.acLocaleOfIssue, pos)
    of 240: parseStr(s, result.acRedemptionDate, pos)
    of 202: parseFloat(s, result.acStrikePrice, pos)
    of 947: parseStr(s, result.acStrikeCurrency, pos)
    of 206: parseChar(s, result.acOptAttribute, pos)
    of 231: parseStr(s, result.acContractMultiplier, pos)
    of 223: parseFloat(s, result.acCouponRate, pos)
    of 207: parseStr(s, result.acSecurityExchange, pos)
    of 106: parseStr(s, result.acIssuer, pos)
    of 348: parseUInt(s, result.acEncodedIssuerLen, pos)
    of 349: parseStr(s, result.acEncodedIssuer, pos)
    of 107: parseStr(s, result.acSecurityDesc, pos)
    of 350: parseUInt(s, result.acEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.acEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.acPool, pos)
    of 667: parseStr(s, result.acContractSettlMonth, pos)
    of 875: parseInt(s, result.acCPProgram, pos)
    of 876: parseStr(s, result.acCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.acNoEvents, pos)
    of 873: parseStr(s, result.acDatedDate, pos)
    of 874: parseStr(s, result.acInterestAccrualDate, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.acNoUnderlyings, pos)
    of 140: parseFloat(s, result.acPrevClosePx, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.acNoLegs, pos)
    of 114: parseBool(s, result.acLocateReqd, pos)
    of 60: parseStr(s, result.acTransactTime, pos)
    of 854: parseInt(s, result.acQtyType, pos)
    of 38: parseUInt(s, result.acOrderQty, pos)
    of 152: parseUInt(s, result.acCashOrderQty, pos)
    of 516: parseFloat(s, result.acOrderPercent, pos)
    of 468: parseChar(s, result.acRoundingDirection, pos)
    of 469: parseStr(s, result.acRoundingModulus, pos)
    of 40: parseChar(s, result.acOrdType, pos)
    of 423: parseInt(s, result.acPriceType, pos)
    of 44: parseFloat(s, result.acPrice, pos)
    of 99: parseFloat(s, result.acStopPx, pos)
    of 15: parseStr(s, result.acCurrency, pos)
    of 376: parseStr(s, result.acComplianceID, pos)
    of 377: parseBool(s, result.acSolicitedFlag, pos)
    of 23: parseStr(s, result.acIOIID, pos)
    of 117: parseStr(s, result.acQuoteID, pos)
    of 59: parseChar(s, result.acTimeInForce, pos)
    of 168: parseStr(s, result.acEffectiveTime, pos)
    of 432: parseStr(s, result.acExpireDate, pos)
    of 126: parseStr(s, result.acExpireTime, pos)
    of 427: parseInt(s, result.acGTBookingInst, pos)
    of 12: parseUInt(s, result.acCommission, pos)
    of 13: parseChar(s, result.acCommType, pos)
    of 479: parseStr(s, result.acCommCurrency, pos)
    of 497: parseChar(s, result.acFundRenewWaiv, pos)
    of 528: parseChar(s, result.acOrderCapacity, pos)
    of 529: parseStr(s, result.acOrderRestrictions, pos)
    of 582: parseInt(s, result.acCustOrderCapacity, pos)
    of 121: parseBool(s, result.acForexReq, pos)
    of 120: parseStr(s, result.acSettlCurrency, pos)
    of 775: parseInt(s, result.acBookingType, pos)
    of 58: parseStr(s, result.acText, pos)
    of 354: parseUInt(s, result.acEncodedTextLen, pos)
    of 355: parseStr(s, result.acEncodedText, pos)
    of 77: parseChar(s, result.acPositionEffect, pos)
    of 203: parseInt(s, result.acCoveredOrUncovered, pos)
    of 210: parseUInt(s, result.acMaxShow, pos)
    of 211: parseStr(s, result.acPegOffsetValue, pos)
    of 835: parseInt(s, result.acPegMoveType, pos)
    of 836: parseInt(s, result.acPegOffsetType, pos)
    of 837: parseInt(s, result.acPegLimitType, pos)
    of 838: parseInt(s, result.acPegRoundDirection, pos)
    of 840: parseInt(s, result.acPegScope, pos)
    of 388: parseChar(s, result.acDiscretionInst, pos)
    of 389: parseStr(s, result.acDiscretionOffsetValue, pos)
    of 841: parseInt(s, result.acDiscretionMoveType, pos)
    of 842: parseInt(s, result.acDiscretionOffsetType, pos)
    of 843: parseInt(s, result.acDiscretionLimitType, pos)
    of 844: parseInt(s, result.acDiscretionRoundDirection, pos)
    of 846: parseInt(s, result.acDiscretionScope, pos)
    of 847: parseInt(s, result.acTargetStrategy, pos)
    of 848: parseStr(s, result.acTargetStrategyParameters, pos)
    of 849: parseFloat(s, result.acParticipationRate, pos)
    of 480: parseChar(s, result.acCancellationRights, pos)
    of 481: parseChar(s, result.acMoneyLaunderingStatus, pos)
    of 513: parseStr(s, result.acRegistID, pos)
    of 494: parseStr(s, result.acDesignation, pos)
    of 563: parseInt(s, result.acMultiLegRptTypeReq, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAD(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAD)
  result.msgType = mtAD
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 568: parseStr(s, result.adTradeRequestID, pos)
    of 569: parseInt(s, result.adTradeRequestType, pos)
    of 263: parseChar(s, result.adSubscriptionRequestType, pos)
    of 571: parseStr(s, result.adTradeReportID, pos)
    of 818: parseStr(s, result.adSecondaryTradeReportID, pos)
    of 17: parseStr(s, result.adExecID, pos)
    of 150: parseChar(s, result.adExecType, pos)
    of 37: parseStr(s, result.adOrderID, pos)
    of 11: parseStr(s, result.adClOrdID, pos)
    of 573: parseChar(s, result.adMatchStatus, pos)
    of 828: parseInt(s, result.adTrdType, pos)
    of 829: parseInt(s, result.adTrdSubType, pos)
    of 830: parseStr(s, result.adTransferReason, pos)
    of 855: parseInt(s, result.adSecondaryTrdType, pos)
    of 820: parseStr(s, result.adTradeLinkID, pos)
    of 880: parseStr(s, result.adTrdMatchID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.adNoPartyIDs, pos)
    of 55: parseStr(s, result.adSymbol, pos)
    of 65: parseStr(s, result.adSymbolSfx, pos)
    of 48: parseStr(s, result.adSecurityID, pos)
    of 22: parseStr(s, result.adSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.adNoSecurityAltID, pos)
    of 460: parseInt(s, result.adProduct, pos)
    of 461: parseStr(s, result.adCFICode, pos)
    of 167: parseStr(s, result.adSecurityType, pos)
    of 762: parseStr(s, result.adSecuritySubType, pos)
    of 200: parseStr(s, result.adMaturityMonthYear, pos)
    of 541: parseStr(s, result.adMaturityDate, pos)
    of 201: parseInt(s, result.adPutOrCall, pos)
    of 224: parseStr(s, result.adCouponPaymentDate, pos)
    of 225: parseStr(s, result.adIssueDate, pos)
    of 239: parseStr(s, result.adRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.adRepurchaseTerm, pos)
    of 227: parseFloat(s, result.adRepurchaseRate, pos)
    of 228: parseStr(s, result.adFactor, pos)
    of 255: parseStr(s, result.adCreditRating, pos)
    of 543: parseStr(s, result.adInstrRegistry, pos)
    of 470: parseStr(s, result.adCountryOfIssue, pos)
    of 471: parseStr(s, result.adStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.adLocaleOfIssue, pos)
    of 240: parseStr(s, result.adRedemptionDate, pos)
    of 202: parseFloat(s, result.adStrikePrice, pos)
    of 947: parseStr(s, result.adStrikeCurrency, pos)
    of 206: parseChar(s, result.adOptAttribute, pos)
    of 231: parseStr(s, result.adContractMultiplier, pos)
    of 223: parseFloat(s, result.adCouponRate, pos)
    of 207: parseStr(s, result.adSecurityExchange, pos)
    of 106: parseStr(s, result.adIssuer, pos)
    of 348: parseUInt(s, result.adEncodedIssuerLen, pos)
    of 349: parseStr(s, result.adEncodedIssuer, pos)
    of 107: parseStr(s, result.adSecurityDesc, pos)
    of 350: parseUInt(s, result.adEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.adEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.adPool, pos)
    of 667: parseStr(s, result.adContractSettlMonth, pos)
    of 875: parseInt(s, result.adCPProgram, pos)
    of 876: parseStr(s, result.adCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.adNoEvents, pos)
    of 873: parseStr(s, result.adDatedDate, pos)
    of 874: parseStr(s, result.adInterestAccrualDate, pos)
    of 668: parseInt(s, result.adDeliveryForm, pos)
    of 869: parseFloat(s, result.adPctAtRisk, pos)
    of 870: skipValue(s, pos); parseNoInstrAttrib(s, result.adNoInstrAttrib, pos)
    of 913: parseStr(s, result.adAgreementDesc, pos)
    of 914: parseStr(s, result.adAgreementID, pos)
    of 915: parseStr(s, result.adAgreementDate, pos)
    of 918: parseStr(s, result.adAgreementCurrency, pos)
    of 788: parseInt(s, result.adTerminationType, pos)
    of 916: parseStr(s, result.adStartDate, pos)
    of 917: parseStr(s, result.adEndDate, pos)
    of 919: parseInt(s, result.adDeliveryType, pos)
    of 898: parseFloat(s, result.adMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.adNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.adNoLegs, pos)
    of 580: skipValue(s, pos); parseNoDates(s, result.adNoDates, pos)
    of 715: parseStr(s, result.adClearingBusinessDate, pos)
    of 336: parseStr(s, result.adTradingSessionID, pos)
    of 625: parseStr(s, result.adTradingSessionSubID, pos)
    of 943: parseStr(s, result.adTimeBracket, pos)
    of 54: parseChar(s, result.adSide, pos)
    of 442: parseChar(s, result.adMultiLegReportingType, pos)
    of 578: parseStr(s, result.adTradeInputSource, pos)
    of 579: parseStr(s, result.adTradeInputDevice, pos)
    of 725: parseInt(s, result.adResponseTransportType, pos)
    of 726: parseStr(s, result.adResponseDestination, pos)
    of 58: parseStr(s, result.adText, pos)
    of 354: parseUInt(s, result.adEncodedTextLen, pos)
    of 355: parseStr(s, result.adEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAE(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAE)
  result.msgType = mtAE
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 571: parseStr(s, result.aeTradeReportID, pos)
    of 487: parseInt(s, result.aeTradeReportTransType, pos)
    of 856: parseInt(s, result.aeTradeReportType, pos)
    of 568: parseStr(s, result.aeTradeRequestID, pos)
    of 828: parseInt(s, result.aeTrdType, pos)
    of 829: parseInt(s, result.aeTrdSubType, pos)
    of 855: parseInt(s, result.aeSecondaryTrdType, pos)
    of 830: parseStr(s, result.aeTransferReason, pos)
    of 150: parseChar(s, result.aeExecType, pos)
    of 748: parseInt(s, result.aeTotNumTradeReports, pos)
    of 912: parseBool(s, result.aeLastRptRequested, pos)
    of 325: parseBool(s, result.aeUnsolicitedIndicator, pos)
    of 263: parseChar(s, result.aeSubscriptionRequestType, pos)
    of 572: parseStr(s, result.aeTradeReportRefID, pos)
    of 881: parseStr(s, result.aeSecondaryTradeReportRefID, pos)
    of 818: parseStr(s, result.aeSecondaryTradeReportID, pos)
    of 820: parseStr(s, result.aeTradeLinkID, pos)
    of 880: parseStr(s, result.aeTrdMatchID, pos)
    of 17: parseStr(s, result.aeExecID, pos)
    of 39: parseChar(s, result.aeOrdStatus, pos)
    of 527: parseStr(s, result.aeSecondaryExecID, pos)
    of 378: parseInt(s, result.aeExecRestatementReason, pos)
    of 570: parseBool(s, result.aePreviouslyReported, pos)
    of 423: parseInt(s, result.aePriceType, pos)
    of 55: parseStr(s, result.aeSymbol, pos)
    of 65: parseStr(s, result.aeSymbolSfx, pos)
    of 48: parseStr(s, result.aeSecurityID, pos)
    of 22: parseStr(s, result.aeSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.aeNoSecurityAltID, pos)
    of 460: parseInt(s, result.aeProduct, pos)
    of 461: parseStr(s, result.aeCFICode, pos)
    of 167: parseStr(s, result.aeSecurityType, pos)
    of 762: parseStr(s, result.aeSecuritySubType, pos)
    of 200: parseStr(s, result.aeMaturityMonthYear, pos)
    of 541: parseStr(s, result.aeMaturityDate, pos)
    of 201: parseInt(s, result.aePutOrCall, pos)
    of 224: parseStr(s, result.aeCouponPaymentDate, pos)
    of 225: parseStr(s, result.aeIssueDate, pos)
    of 239: parseStr(s, result.aeRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.aeRepurchaseTerm, pos)
    of 227: parseFloat(s, result.aeRepurchaseRate, pos)
    of 228: parseStr(s, result.aeFactor, pos)
    of 255: parseStr(s, result.aeCreditRating, pos)
    of 543: parseStr(s, result.aeInstrRegistry, pos)
    of 470: parseStr(s, result.aeCountryOfIssue, pos)
    of 471: parseStr(s, result.aeStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.aeLocaleOfIssue, pos)
    of 240: parseStr(s, result.aeRedemptionDate, pos)
    of 202: parseFloat(s, result.aeStrikePrice, pos)
    of 947: parseStr(s, result.aeStrikeCurrency, pos)
    of 206: parseChar(s, result.aeOptAttribute, pos)
    of 231: parseStr(s, result.aeContractMultiplier, pos)
    of 223: parseFloat(s, result.aeCouponRate, pos)
    of 207: parseStr(s, result.aeSecurityExchange, pos)
    of 106: parseStr(s, result.aeIssuer, pos)
    of 348: parseUInt(s, result.aeEncodedIssuerLen, pos)
    of 349: parseStr(s, result.aeEncodedIssuer, pos)
    of 107: parseStr(s, result.aeSecurityDesc, pos)
    of 350: parseUInt(s, result.aeEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.aeEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.aePool, pos)
    of 667: parseStr(s, result.aeContractSettlMonth, pos)
    of 875: parseInt(s, result.aeCPProgram, pos)
    of 876: parseStr(s, result.aeCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.aeNoEvents, pos)
    of 873: parseStr(s, result.aeDatedDate, pos)
    of 874: parseStr(s, result.aeInterestAccrualDate, pos)
    of 913: parseStr(s, result.aeAgreementDesc, pos)
    of 914: parseStr(s, result.aeAgreementID, pos)
    of 915: parseStr(s, result.aeAgreementDate, pos)
    of 918: parseStr(s, result.aeAgreementCurrency, pos)
    of 788: parseInt(s, result.aeTerminationType, pos)
    of 916: parseStr(s, result.aeStartDate, pos)
    of 917: parseStr(s, result.aeEndDate, pos)
    of 919: parseInt(s, result.aeDeliveryType, pos)
    of 898: parseFloat(s, result.aeMarginRatio, pos)
    of 38: parseUInt(s, result.aeOrderQty, pos)
    of 152: parseUInt(s, result.aeCashOrderQty, pos)
    of 516: parseFloat(s, result.aeOrderPercent, pos)
    of 468: parseChar(s, result.aeRoundingDirection, pos)
    of 469: parseStr(s, result.aeRoundingModulus, pos)
    of 854: parseInt(s, result.aeQtyType, pos)
    of 235: parseStr(s, result.aeYieldType, pos)
    of 236: parseFloat(s, result.aeYield, pos)
    of 701: parseStr(s, result.aeYieldCalcDate, pos)
    of 696: parseStr(s, result.aeYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.aeYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.aeYieldRedemptionPriceType, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.aeNoUnderlyings, pos)
    of 822: parseStr(s, result.aeUnderlyingTradingSessionID, pos)
    of 823: parseStr(s, result.aeUnderlyingTradingSessionSubID, pos)
    of 32: parseUInt(s, result.aeLastQty, pos)
    of 31: parseFloat(s, result.aeLastPx, pos)
    of 669: parseFloat(s, result.aeLastParPx, pos)
    of 194: parseFloat(s, result.aeLastSpotRate, pos)
    of 195: parseFloat(s, result.aeLastForwardPoints, pos)
    of 30: parseStr(s, result.aeLastMkt, pos)
    of 75: parseStr(s, result.aeTradeDate, pos)
    of 715: parseStr(s, result.aeClearingBusinessDate, pos)
    of 6: parseFloat(s, result.aeAvgPx, pos)
    of 218: parseFloat(s, result.aeSpread, pos)
    of 220: parseStr(s, result.aeBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.aeBenchmarkCurveName, pos)
    of 222: parseStr(s, result.aeBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.aeBenchmarkPrice, pos)
    of 663: parseInt(s, result.aeBenchmarkPriceType, pos)
    of 699: parseStr(s, result.aeBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.aeBenchmarkSecurityIDSource, pos)
    of 819: parseInt(s, result.aeAvgPxIndicator, pos)
    of 753: skipValue(s, pos); parseNoPosAmt(s, result.aeNoPosAmt, pos)
    of 442: parseChar(s, result.aeMultiLegReportingType, pos)
    of 824: parseStr(s, result.aeTradeLegRefID, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.aeNoLegs, pos)
    of 60: parseStr(s, result.aeTransactTime, pos)
    of 768: skipValue(s, pos); parseNoTrdRegTimestamps(s, result.aeNoTrdRegTimestamps, pos)
    of 63: parseChar(s, result.aeSettlType, pos)
    of 64: parseStr(s, result.aeSettlDate, pos)
    of 573: parseChar(s, result.aeMatchStatus, pos)
    of 574: parseStr(s, result.aeMatchType, pos)
    of 552: skipValue(s, pos); parseNoSides(s, result.aeNoSides, pos)
    of 797: parseBool(s, result.aeCopyMsgIndicator, pos)
    of 852: parseBool(s, result.aePublishTrdIndicator, pos)
    of 853: parseInt(s, result.aeShortSaleReason, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAF(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAF)
  result.msgType = mtAF
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 584: parseStr(s, result.afMassStatusReqID, pos)
    of 585: parseInt(s, result.afMassStatusReqType, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.afNoPartyIDs, pos)
    of 1: parseStr(s, result.afAccount, pos)
    of 660: parseInt(s, result.afAcctIDSource, pos)
    of 336: parseStr(s, result.afTradingSessionID, pos)
    of 625: parseStr(s, result.afTradingSessionSubID, pos)
    of 55: parseStr(s, result.afSymbol, pos)
    of 65: parseStr(s, result.afSymbolSfx, pos)
    of 48: parseStr(s, result.afSecurityID, pos)
    of 22: parseStr(s, result.afSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.afNoSecurityAltID, pos)
    of 460: parseInt(s, result.afProduct, pos)
    of 461: parseStr(s, result.afCFICode, pos)
    of 167: parseStr(s, result.afSecurityType, pos)
    of 762: parseStr(s, result.afSecuritySubType, pos)
    of 200: parseStr(s, result.afMaturityMonthYear, pos)
    of 541: parseStr(s, result.afMaturityDate, pos)
    of 201: parseInt(s, result.afPutOrCall, pos)
    of 224: parseStr(s, result.afCouponPaymentDate, pos)
    of 225: parseStr(s, result.afIssueDate, pos)
    of 239: parseStr(s, result.afRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.afRepurchaseTerm, pos)
    of 227: parseFloat(s, result.afRepurchaseRate, pos)
    of 228: parseStr(s, result.afFactor, pos)
    of 255: parseStr(s, result.afCreditRating, pos)
    of 543: parseStr(s, result.afInstrRegistry, pos)
    of 470: parseStr(s, result.afCountryOfIssue, pos)
    of 471: parseStr(s, result.afStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.afLocaleOfIssue, pos)
    of 240: parseStr(s, result.afRedemptionDate, pos)
    of 202: parseFloat(s, result.afStrikePrice, pos)
    of 947: parseStr(s, result.afStrikeCurrency, pos)
    of 206: parseChar(s, result.afOptAttribute, pos)
    of 231: parseStr(s, result.afContractMultiplier, pos)
    of 223: parseFloat(s, result.afCouponRate, pos)
    of 207: parseStr(s, result.afSecurityExchange, pos)
    of 106: parseStr(s, result.afIssuer, pos)
    of 348: parseUInt(s, result.afEncodedIssuerLen, pos)
    of 349: parseStr(s, result.afEncodedIssuer, pos)
    of 107: parseStr(s, result.afSecurityDesc, pos)
    of 350: parseUInt(s, result.afEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.afEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.afPool, pos)
    of 667: parseStr(s, result.afContractSettlMonth, pos)
    of 875: parseInt(s, result.afCPProgram, pos)
    of 876: parseStr(s, result.afCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.afNoEvents, pos)
    of 873: parseStr(s, result.afDatedDate, pos)
    of 874: parseStr(s, result.afInterestAccrualDate, pos)
    of 311: parseStr(s, result.afUnderlyingSymbol, pos)
    of 312: parseStr(s, result.afUnderlyingSymbolSfx, pos)
    of 309: parseStr(s, result.afUnderlyingSecurityID, pos)
    of 305: parseStr(s, result.afUnderlyingSecurityIDSource, pos)
    of 457: skipValue(s, pos); parseNoUnderlyingSecurityAltID(s, result.afNoUnderlyingSecurityAltID, pos)
    of 462: parseInt(s, result.afUnderlyingProduct, pos)
    of 463: parseStr(s, result.afUnderlyingCFICode, pos)
    of 310: parseStr(s, result.afUnderlyingSecurityType, pos)
    of 763: parseStr(s, result.afUnderlyingSecuritySubType, pos)
    of 313: parseStr(s, result.afUnderlyingMaturityMonthYear, pos)
    of 542: parseStr(s, result.afUnderlyingMaturityDate, pos)
    of 315: parseInt(s, result.afUnderlyingPutOrCall, pos)
    of 241: parseStr(s, result.afUnderlyingCouponPaymentDate, pos)
    of 242: parseStr(s, result.afUnderlyingIssueDate, pos)
    of 243: parseStr(s, result.afUnderlyingRepoCollateralSecurityType, pos)
    of 244: parseInt(s, result.afUnderlyingRepurchaseTerm, pos)
    of 245: parseFloat(s, result.afUnderlyingRepurchaseRate, pos)
    of 246: parseStr(s, result.afUnderlyingFactor, pos)
    of 256: parseStr(s, result.afUnderlyingCreditRating, pos)
    of 595: parseStr(s, result.afUnderlyingInstrRegistry, pos)
    of 592: parseStr(s, result.afUnderlyingCountryOfIssue, pos)
    of 593: parseStr(s, result.afUnderlyingStateOrProvinceOfIssue, pos)
    of 594: parseStr(s, result.afUnderlyingLocaleOfIssue, pos)
    of 247: parseStr(s, result.afUnderlyingRedemptionDate, pos)
    of 316: parseFloat(s, result.afUnderlyingStrikePrice, pos)
    of 941: parseStr(s, result.afUnderlyingStrikeCurrency, pos)
    of 317: parseChar(s, result.afUnderlyingOptAttribute, pos)
    of 436: parseStr(s, result.afUnderlyingContractMultiplier, pos)
    of 435: parseFloat(s, result.afUnderlyingCouponRate, pos)
    of 308: parseStr(s, result.afUnderlyingSecurityExchange, pos)
    of 306: parseStr(s, result.afUnderlyingIssuer, pos)
    of 362: parseUInt(s, result.afEncodedUnderlyingIssuerLen, pos)
    of 363: parseStr(s, result.afEncodedUnderlyingIssuer, pos)
    of 307: parseStr(s, result.afUnderlyingSecurityDesc, pos)
    of 364: parseUInt(s, result.afEncodedUnderlyingSecurityDescLen, pos)
    of 365: parseStr(s, result.afEncodedUnderlyingSecurityDesc, pos)
    of 877: parseStr(s, result.afUnderlyingCPProgram, pos)
    of 878: parseStr(s, result.afUnderlyingCPRegType, pos)
    of 318: parseStr(s, result.afUnderlyingCurrency, pos)
    of 879: parseUInt(s, result.afUnderlyingQty, pos)
    of 810: parseFloat(s, result.afUnderlyingPx, pos)
    of 882: parseFloat(s, result.afUnderlyingDirtyPrice, pos)
    of 883: parseFloat(s, result.afUnderlyingEndPrice, pos)
    of 884: parseUInt(s, result.afUnderlyingStartValue, pos)
    of 885: parseUInt(s, result.afUnderlyingCurrentValue, pos)
    of 886: parseUInt(s, result.afUnderlyingEndValue, pos)
    of 887: skipValue(s, pos); parseNoUnderlyingStips(s, result.afNoUnderlyingStips, pos)
    of 54: parseChar(s, result.afSide, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAG(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAG)
  result.msgType = mtAG
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 131: parseStr(s, result.agQuoteReqID, pos)
    of 644: parseStr(s, result.agRFQReqID, pos)
    of 658: parseInt(s, result.agQuoteRequestRejectReason, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.agNoRelatedSym, pos)
    of 58: parseStr(s, result.agText, pos)
    of 354: parseUInt(s, result.agEncodedTextLen, pos)
    of 355: parseStr(s, result.agEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAH(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAH)
  result.msgType = mtAH
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 644: parseStr(s, result.ahRFQReqID, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.ahNoRelatedSym, pos)
    of 263: parseChar(s, result.ahSubscriptionRequestType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAI(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAI)
  result.msgType = mtAI
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 649: parseStr(s, result.aiQuoteStatusReqID, pos)
    of 131: parseStr(s, result.aiQuoteReqID, pos)
    of 117: parseStr(s, result.aiQuoteID, pos)
    of 693: parseStr(s, result.aiQuoteRespID, pos)
    of 537: parseInt(s, result.aiQuoteType, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.aiNoPartyIDs, pos)
    of 336: parseStr(s, result.aiTradingSessionID, pos)
    of 625: parseStr(s, result.aiTradingSessionSubID, pos)
    of 55: parseStr(s, result.aiSymbol, pos)
    of 65: parseStr(s, result.aiSymbolSfx, pos)
    of 48: parseStr(s, result.aiSecurityID, pos)
    of 22: parseStr(s, result.aiSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.aiNoSecurityAltID, pos)
    of 460: parseInt(s, result.aiProduct, pos)
    of 461: parseStr(s, result.aiCFICode, pos)
    of 167: parseStr(s, result.aiSecurityType, pos)
    of 762: parseStr(s, result.aiSecuritySubType, pos)
    of 200: parseStr(s, result.aiMaturityMonthYear, pos)
    of 541: parseStr(s, result.aiMaturityDate, pos)
    of 201: parseInt(s, result.aiPutOrCall, pos)
    of 224: parseStr(s, result.aiCouponPaymentDate, pos)
    of 225: parseStr(s, result.aiIssueDate, pos)
    of 239: parseStr(s, result.aiRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.aiRepurchaseTerm, pos)
    of 227: parseFloat(s, result.aiRepurchaseRate, pos)
    of 228: parseStr(s, result.aiFactor, pos)
    of 255: parseStr(s, result.aiCreditRating, pos)
    of 543: parseStr(s, result.aiInstrRegistry, pos)
    of 470: parseStr(s, result.aiCountryOfIssue, pos)
    of 471: parseStr(s, result.aiStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.aiLocaleOfIssue, pos)
    of 240: parseStr(s, result.aiRedemptionDate, pos)
    of 202: parseFloat(s, result.aiStrikePrice, pos)
    of 947: parseStr(s, result.aiStrikeCurrency, pos)
    of 206: parseChar(s, result.aiOptAttribute, pos)
    of 231: parseStr(s, result.aiContractMultiplier, pos)
    of 223: parseFloat(s, result.aiCouponRate, pos)
    of 207: parseStr(s, result.aiSecurityExchange, pos)
    of 106: parseStr(s, result.aiIssuer, pos)
    of 348: parseUInt(s, result.aiEncodedIssuerLen, pos)
    of 349: parseStr(s, result.aiEncodedIssuer, pos)
    of 107: parseStr(s, result.aiSecurityDesc, pos)
    of 350: parseUInt(s, result.aiEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.aiEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.aiPool, pos)
    of 667: parseStr(s, result.aiContractSettlMonth, pos)
    of 875: parseInt(s, result.aiCPProgram, pos)
    of 876: parseStr(s, result.aiCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.aiNoEvents, pos)
    of 873: parseStr(s, result.aiDatedDate, pos)
    of 874: parseStr(s, result.aiInterestAccrualDate, pos)
    of 913: parseStr(s, result.aiAgreementDesc, pos)
    of 914: parseStr(s, result.aiAgreementID, pos)
    of 915: parseStr(s, result.aiAgreementDate, pos)
    of 918: parseStr(s, result.aiAgreementCurrency, pos)
    of 788: parseInt(s, result.aiTerminationType, pos)
    of 916: parseStr(s, result.aiStartDate, pos)
    of 917: parseStr(s, result.aiEndDate, pos)
    of 919: parseInt(s, result.aiDeliveryType, pos)
    of 898: parseFloat(s, result.aiMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.aiNoUnderlyings, pos)
    of 54: parseChar(s, result.aiSide, pos)
    of 38: parseUInt(s, result.aiOrderQty, pos)
    of 152: parseUInt(s, result.aiCashOrderQty, pos)
    of 516: parseFloat(s, result.aiOrderPercent, pos)
    of 468: parseChar(s, result.aiRoundingDirection, pos)
    of 469: parseStr(s, result.aiRoundingModulus, pos)
    of 63: parseChar(s, result.aiSettlType, pos)
    of 64: parseStr(s, result.aiSettlDate, pos)
    of 193: parseStr(s, result.aiSettlDate2, pos)
    of 192: parseUInt(s, result.aiOrderQty2, pos)
    of 15: parseStr(s, result.aiCurrency, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.aiNoStipulations, pos)
    of 1: parseStr(s, result.aiAccount, pos)
    of 660: parseInt(s, result.aiAcctIDSource, pos)
    of 581: parseInt(s, result.aiAccountType, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.aiNoLegs, pos)
    of 735: skipValue(s, pos); parseNoQuoteQualifiers(s, result.aiNoQuoteQualifiers, pos)
    of 126: parseStr(s, result.aiExpireTime, pos)
    of 44: parseFloat(s, result.aiPrice, pos)
    of 423: parseInt(s, result.aiPriceType, pos)
    of 218: parseFloat(s, result.aiSpread, pos)
    of 220: parseStr(s, result.aiBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.aiBenchmarkCurveName, pos)
    of 222: parseStr(s, result.aiBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.aiBenchmarkPrice, pos)
    of 663: parseInt(s, result.aiBenchmarkPriceType, pos)
    of 699: parseStr(s, result.aiBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.aiBenchmarkSecurityIDSource, pos)
    of 235: parseStr(s, result.aiYieldType, pos)
    of 236: parseFloat(s, result.aiYield, pos)
    of 701: parseStr(s, result.aiYieldCalcDate, pos)
    of 696: parseStr(s, result.aiYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.aiYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.aiYieldRedemptionPriceType, pos)
    of 132: parseFloat(s, result.aiBidPx, pos)
    of 133: parseFloat(s, result.aiOfferPx, pos)
    of 645: parseFloat(s, result.aiMktBidPx, pos)
    of 646: parseFloat(s, result.aiMktOfferPx, pos)
    of 647: parseUInt(s, result.aiMinBidSize, pos)
    of 134: parseUInt(s, result.aiBidSize, pos)
    of 648: parseUInt(s, result.aiMinOfferSize, pos)
    of 135: parseUInt(s, result.aiOfferSize, pos)
    of 62: parseStr(s, result.aiValidUntilTime, pos)
    of 188: parseFloat(s, result.aiBidSpotRate, pos)
    of 190: parseFloat(s, result.aiOfferSpotRate, pos)
    of 189: parseFloat(s, result.aiBidForwardPoints, pos)
    of 191: parseFloat(s, result.aiOfferForwardPoints, pos)
    of 631: parseFloat(s, result.aiMidPx, pos)
    of 632: parseFloat(s, result.aiBidYield, pos)
    of 633: parseFloat(s, result.aiMidYield, pos)
    of 634: parseFloat(s, result.aiOfferYield, pos)
    of 60: parseStr(s, result.aiTransactTime, pos)
    of 40: parseChar(s, result.aiOrdType, pos)
    of 642: parseFloat(s, result.aiBidForwardPoints2, pos)
    of 643: parseFloat(s, result.aiOfferForwardPoints2, pos)
    of 656: parseStr(s, result.aiSettlCurrBidFxRate, pos)
    of 657: parseStr(s, result.aiSettlCurrOfferFxRate, pos)
    of 156: parseChar(s, result.aiSettlCurrFxRateCalc, pos)
    of 13: parseChar(s, result.aiCommType, pos)
    of 12: parseUInt(s, result.aiCommission, pos)
    of 582: parseInt(s, result.aiCustOrderCapacity, pos)
    of 100: parseStr(s, result.aiExDestination, pos)
    of 297: parseInt(s, result.aiQuoteStatus, pos)
    of 58: parseStr(s, result.aiText, pos)
    of 354: parseUInt(s, result.aiEncodedTextLen, pos)
    of 355: parseStr(s, result.aiEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAJ(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAJ)
  result.msgType = mtAJ
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 693: parseStr(s, result.ajQuoteRespID, pos)
    of 117: parseStr(s, result.ajQuoteID, pos)
    of 694: parseInt(s, result.ajQuoteRespType, pos)
    of 11: parseStr(s, result.ajClOrdID, pos)
    of 528: parseChar(s, result.ajOrderCapacity, pos)
    of 23: parseStr(s, result.ajIOIID, pos)
    of 537: parseInt(s, result.ajQuoteType, pos)
    of 735: skipValue(s, pos); parseNoQuoteQualifiers(s, result.ajNoQuoteQualifiers, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.ajNoPartyIDs, pos)
    of 336: parseStr(s, result.ajTradingSessionID, pos)
    of 625: parseStr(s, result.ajTradingSessionSubID, pos)
    of 55: parseStr(s, result.ajSymbol, pos)
    of 65: parseStr(s, result.ajSymbolSfx, pos)
    of 48: parseStr(s, result.ajSecurityID, pos)
    of 22: parseStr(s, result.ajSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.ajNoSecurityAltID, pos)
    of 460: parseInt(s, result.ajProduct, pos)
    of 461: parseStr(s, result.ajCFICode, pos)
    of 167: parseStr(s, result.ajSecurityType, pos)
    of 762: parseStr(s, result.ajSecuritySubType, pos)
    of 200: parseStr(s, result.ajMaturityMonthYear, pos)
    of 541: parseStr(s, result.ajMaturityDate, pos)
    of 201: parseInt(s, result.ajPutOrCall, pos)
    of 224: parseStr(s, result.ajCouponPaymentDate, pos)
    of 225: parseStr(s, result.ajIssueDate, pos)
    of 239: parseStr(s, result.ajRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.ajRepurchaseTerm, pos)
    of 227: parseFloat(s, result.ajRepurchaseRate, pos)
    of 228: parseStr(s, result.ajFactor, pos)
    of 255: parseStr(s, result.ajCreditRating, pos)
    of 543: parseStr(s, result.ajInstrRegistry, pos)
    of 470: parseStr(s, result.ajCountryOfIssue, pos)
    of 471: parseStr(s, result.ajStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.ajLocaleOfIssue, pos)
    of 240: parseStr(s, result.ajRedemptionDate, pos)
    of 202: parseFloat(s, result.ajStrikePrice, pos)
    of 947: parseStr(s, result.ajStrikeCurrency, pos)
    of 206: parseChar(s, result.ajOptAttribute, pos)
    of 231: parseStr(s, result.ajContractMultiplier, pos)
    of 223: parseFloat(s, result.ajCouponRate, pos)
    of 207: parseStr(s, result.ajSecurityExchange, pos)
    of 106: parseStr(s, result.ajIssuer, pos)
    of 348: parseUInt(s, result.ajEncodedIssuerLen, pos)
    of 349: parseStr(s, result.ajEncodedIssuer, pos)
    of 107: parseStr(s, result.ajSecurityDesc, pos)
    of 350: parseUInt(s, result.ajEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.ajEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.ajPool, pos)
    of 667: parseStr(s, result.ajContractSettlMonth, pos)
    of 875: parseInt(s, result.ajCPProgram, pos)
    of 876: parseStr(s, result.ajCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.ajNoEvents, pos)
    of 873: parseStr(s, result.ajDatedDate, pos)
    of 874: parseStr(s, result.ajInterestAccrualDate, pos)
    of 913: parseStr(s, result.ajAgreementDesc, pos)
    of 914: parseStr(s, result.ajAgreementID, pos)
    of 915: parseStr(s, result.ajAgreementDate, pos)
    of 918: parseStr(s, result.ajAgreementCurrency, pos)
    of 788: parseInt(s, result.ajTerminationType, pos)
    of 916: parseStr(s, result.ajStartDate, pos)
    of 917: parseStr(s, result.ajEndDate, pos)
    of 919: parseInt(s, result.ajDeliveryType, pos)
    of 898: parseFloat(s, result.ajMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.ajNoUnderlyings, pos)
    of 54: parseChar(s, result.ajSide, pos)
    of 38: parseUInt(s, result.ajOrderQty, pos)
    of 152: parseUInt(s, result.ajCashOrderQty, pos)
    of 516: parseFloat(s, result.ajOrderPercent, pos)
    of 468: parseChar(s, result.ajRoundingDirection, pos)
    of 469: parseStr(s, result.ajRoundingModulus, pos)
    of 63: parseChar(s, result.ajSettlType, pos)
    of 64: parseStr(s, result.ajSettlDate, pos)
    of 193: parseStr(s, result.ajSettlDate2, pos)
    of 192: parseUInt(s, result.ajOrderQty2, pos)
    of 15: parseStr(s, result.ajCurrency, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.ajNoStipulations, pos)
    of 1: parseStr(s, result.ajAccount, pos)
    of 660: parseInt(s, result.ajAcctIDSource, pos)
    of 581: parseInt(s, result.ajAccountType, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.ajNoLegs, pos)
    of 132: parseFloat(s, result.ajBidPx, pos)
    of 133: parseFloat(s, result.ajOfferPx, pos)
    of 645: parseFloat(s, result.ajMktBidPx, pos)
    of 646: parseFloat(s, result.ajMktOfferPx, pos)
    of 647: parseUInt(s, result.ajMinBidSize, pos)
    of 134: parseUInt(s, result.ajBidSize, pos)
    of 648: parseUInt(s, result.ajMinOfferSize, pos)
    of 135: parseUInt(s, result.ajOfferSize, pos)
    of 62: parseStr(s, result.ajValidUntilTime, pos)
    of 188: parseFloat(s, result.ajBidSpotRate, pos)
    of 190: parseFloat(s, result.ajOfferSpotRate, pos)
    of 189: parseFloat(s, result.ajBidForwardPoints, pos)
    of 191: parseFloat(s, result.ajOfferForwardPoints, pos)
    of 631: parseFloat(s, result.ajMidPx, pos)
    of 632: parseFloat(s, result.ajBidYield, pos)
    of 633: parseFloat(s, result.ajMidYield, pos)
    of 634: parseFloat(s, result.ajOfferYield, pos)
    of 60: parseStr(s, result.ajTransactTime, pos)
    of 40: parseChar(s, result.ajOrdType, pos)
    of 642: parseFloat(s, result.ajBidForwardPoints2, pos)
    of 643: parseFloat(s, result.ajOfferForwardPoints2, pos)
    of 656: parseStr(s, result.ajSettlCurrBidFxRate, pos)
    of 657: parseStr(s, result.ajSettlCurrOfferFxRate, pos)
    of 156: parseChar(s, result.ajSettlCurrFxRateCalc, pos)
    of 12: parseUInt(s, result.ajCommission, pos)
    of 13: parseChar(s, result.ajCommType, pos)
    of 582: parseInt(s, result.ajCustOrderCapacity, pos)
    of 100: parseStr(s, result.ajExDestination, pos)
    of 58: parseStr(s, result.ajText, pos)
    of 354: parseUInt(s, result.ajEncodedTextLen, pos)
    of 355: parseStr(s, result.ajEncodedText, pos)
    of 44: parseFloat(s, result.ajPrice, pos)
    of 423: parseInt(s, result.ajPriceType, pos)
    of 218: parseFloat(s, result.ajSpread, pos)
    of 220: parseStr(s, result.ajBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.ajBenchmarkCurveName, pos)
    of 222: parseStr(s, result.ajBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.ajBenchmarkPrice, pos)
    of 663: parseInt(s, result.ajBenchmarkPriceType, pos)
    of 699: parseStr(s, result.ajBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.ajBenchmarkSecurityIDSource, pos)
    of 235: parseStr(s, result.ajYieldType, pos)
    of 236: parseFloat(s, result.ajYield, pos)
    of 701: parseStr(s, result.ajYieldCalcDate, pos)
    of 696: parseStr(s, result.ajYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.ajYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.ajYieldRedemptionPriceType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAK(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAK)
  result.msgType = mtAK
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 664: parseStr(s, result.akConfirmID, pos)
    of 772: parseStr(s, result.akConfirmRefID, pos)
    of 859: parseStr(s, result.akConfirmReqID, pos)
    of 666: parseInt(s, result.akConfirmTransType, pos)
    of 773: parseInt(s, result.akConfirmType, pos)
    of 797: parseBool(s, result.akCopyMsgIndicator, pos)
    of 650: parseBool(s, result.akLegalConfirm, pos)
    of 665: parseInt(s, result.akConfirmStatus, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.akNoPartyIDs, pos)
    of 73: skipValue(s, pos); parseNoOrders(s, result.akNoOrders, pos)
    of 70: parseStr(s, result.akAllocID, pos)
    of 793: parseStr(s, result.akSecondaryAllocID, pos)
    of 467: parseStr(s, result.akIndividualAllocID, pos)
    of 60: parseStr(s, result.akTransactTime, pos)
    of 75: parseStr(s, result.akTradeDate, pos)
    of 768: skipValue(s, pos); parseNoTrdRegTimestamps(s, result.akNoTrdRegTimestamps, pos)
    of 55: parseStr(s, result.akSymbol, pos)
    of 65: parseStr(s, result.akSymbolSfx, pos)
    of 48: parseStr(s, result.akSecurityID, pos)
    of 22: parseStr(s, result.akSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.akNoSecurityAltID, pos)
    of 460: parseInt(s, result.akProduct, pos)
    of 461: parseStr(s, result.akCFICode, pos)
    of 167: parseStr(s, result.akSecurityType, pos)
    of 762: parseStr(s, result.akSecuritySubType, pos)
    of 200: parseStr(s, result.akMaturityMonthYear, pos)
    of 541: parseStr(s, result.akMaturityDate, pos)
    of 201: parseInt(s, result.akPutOrCall, pos)
    of 224: parseStr(s, result.akCouponPaymentDate, pos)
    of 225: parseStr(s, result.akIssueDate, pos)
    of 239: parseStr(s, result.akRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.akRepurchaseTerm, pos)
    of 227: parseFloat(s, result.akRepurchaseRate, pos)
    of 228: parseStr(s, result.akFactor, pos)
    of 255: parseStr(s, result.akCreditRating, pos)
    of 543: parseStr(s, result.akInstrRegistry, pos)
    of 470: parseStr(s, result.akCountryOfIssue, pos)
    of 471: parseStr(s, result.akStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.akLocaleOfIssue, pos)
    of 240: parseStr(s, result.akRedemptionDate, pos)
    of 202: parseFloat(s, result.akStrikePrice, pos)
    of 947: parseStr(s, result.akStrikeCurrency, pos)
    of 206: parseChar(s, result.akOptAttribute, pos)
    of 231: parseStr(s, result.akContractMultiplier, pos)
    of 223: parseFloat(s, result.akCouponRate, pos)
    of 207: parseStr(s, result.akSecurityExchange, pos)
    of 106: parseStr(s, result.akIssuer, pos)
    of 348: parseUInt(s, result.akEncodedIssuerLen, pos)
    of 349: parseStr(s, result.akEncodedIssuer, pos)
    of 107: parseStr(s, result.akSecurityDesc, pos)
    of 350: parseUInt(s, result.akEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.akEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.akPool, pos)
    of 667: parseStr(s, result.akContractSettlMonth, pos)
    of 875: parseInt(s, result.akCPProgram, pos)
    of 876: parseStr(s, result.akCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.akNoEvents, pos)
    of 873: parseStr(s, result.akDatedDate, pos)
    of 874: parseStr(s, result.akInterestAccrualDate, pos)
    of 668: parseInt(s, result.akDeliveryForm, pos)
    of 869: parseFloat(s, result.akPctAtRisk, pos)
    of 870: skipValue(s, pos); parseNoInstrAttrib(s, result.akNoInstrAttrib, pos)
    of 913: parseStr(s, result.akAgreementDesc, pos)
    of 914: parseStr(s, result.akAgreementID, pos)
    of 915: parseStr(s, result.akAgreementDate, pos)
    of 918: parseStr(s, result.akAgreementCurrency, pos)
    of 788: parseInt(s, result.akTerminationType, pos)
    of 916: parseStr(s, result.akStartDate, pos)
    of 917: parseStr(s, result.akEndDate, pos)
    of 919: parseInt(s, result.akDeliveryType, pos)
    of 898: parseFloat(s, result.akMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.akNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.akNoLegs, pos)
    of 235: parseStr(s, result.akYieldType, pos)
    of 236: parseFloat(s, result.akYield, pos)
    of 701: parseStr(s, result.akYieldCalcDate, pos)
    of 696: parseStr(s, result.akYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.akYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.akYieldRedemptionPriceType, pos)
    of 80: parseUInt(s, result.akAllocQty, pos)
    of 854: parseInt(s, result.akQtyType, pos)
    of 54: parseChar(s, result.akSide, pos)
    of 15: parseStr(s, result.akCurrency, pos)
    of 30: parseStr(s, result.akLastMkt, pos)
    of 862: skipValue(s, pos); parseNoCapacities(s, result.akNoCapacities, pos)
    of 79: parseStr(s, result.akAllocAccount, pos)
    of 661: parseInt(s, result.akAllocAcctIDSource, pos)
    of 798: parseInt(s, result.akAllocAccountType, pos)
    of 6: parseFloat(s, result.akAvgPx, pos)
    of 74: parseInt(s, result.akAvgPxPrecision, pos)
    of 423: parseInt(s, result.akPriceType, pos)
    of 860: parseFloat(s, result.akAvgParPx, pos)
    of 218: parseFloat(s, result.akSpread, pos)
    of 220: parseStr(s, result.akBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.akBenchmarkCurveName, pos)
    of 222: parseStr(s, result.akBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.akBenchmarkPrice, pos)
    of 663: parseInt(s, result.akBenchmarkPriceType, pos)
    of 699: parseStr(s, result.akBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.akBenchmarkSecurityIDSource, pos)
    of 861: parseFloat(s, result.akReportedPx, pos)
    of 58: parseStr(s, result.akText, pos)
    of 354: parseUInt(s, result.akEncodedTextLen, pos)
    of 355: parseStr(s, result.akEncodedText, pos)
    of 81: parseChar(s, result.akProcessCode, pos)
    of 381: parseUInt(s, result.akGrossTradeAmt, pos)
    of 157: parseInt(s, result.akNumDaysInterest, pos)
    of 230: parseStr(s, result.akExDate, pos)
    of 158: parseFloat(s, result.akAccruedInterestRate, pos)
    of 159: parseUInt(s, result.akAccruedInterestAmt, pos)
    of 738: parseUInt(s, result.akInterestAtMaturity, pos)
    of 920: parseUInt(s, result.akEndAccruedInterestAmt, pos)
    of 921: parseUInt(s, result.akStartCash, pos)
    of 922: parseUInt(s, result.akEndCash, pos)
    of 238: parseUInt(s, result.akConcession, pos)
    of 237: parseUInt(s, result.akTotalTakedown, pos)
    of 118: parseUInt(s, result.akNetMoney, pos)
    of 890: parseUInt(s, result.akMaturityNetMoney, pos)
    of 119: parseUInt(s, result.akSettlCurrAmt, pos)
    of 120: parseStr(s, result.akSettlCurrency, pos)
    of 155: parseStr(s, result.akSettlCurrFxRate, pos)
    of 156: parseChar(s, result.akSettlCurrFxRateCalc, pos)
    of 63: parseChar(s, result.akSettlType, pos)
    of 64: parseStr(s, result.akSettlDate, pos)
    of 172: parseInt(s, result.akSettlDeliveryType, pos)
    of 169: parseInt(s, result.akStandInstDbType, pos)
    of 170: parseStr(s, result.akStandInstDbName, pos)
    of 171: parseStr(s, result.akStandInstDbID, pos)
    of 85: skipValue(s, pos); parseNoDlvyInst(s, result.akNoDlvyInst, pos)
    of 12: parseUInt(s, result.akCommission, pos)
    of 13: parseChar(s, result.akCommType, pos)
    of 479: parseStr(s, result.akCommCurrency, pos)
    of 497: parseChar(s, result.akFundRenewWaiv, pos)
    of 858: parseUInt(s, result.akSharedCommission, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.akNoStipulations, pos)
    of 136: skipValue(s, pos); parseNoMiscFees(s, result.akNoMiscFees, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAL(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAL)
  result.msgType = mtAL
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 710: parseStr(s, result.alPosReqID, pos)
    of 709: parseInt(s, result.alPosTransType, pos)
    of 712: parseInt(s, result.alPosMaintAction, pos)
    of 713: parseStr(s, result.alOrigPosReqRefID, pos)
    of 714: parseStr(s, result.alPosMaintRptRefID, pos)
    of 715: parseStr(s, result.alClearingBusinessDate, pos)
    of 716: parseStr(s, result.alSettlSessID, pos)
    of 717: parseStr(s, result.alSettlSessSubID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.alNoPartyIDs, pos)
    of 1: parseStr(s, result.alAccount, pos)
    of 660: parseInt(s, result.alAcctIDSource, pos)
    of 581: parseInt(s, result.alAccountType, pos)
    of 55: parseStr(s, result.alSymbol, pos)
    of 65: parseStr(s, result.alSymbolSfx, pos)
    of 48: parseStr(s, result.alSecurityID, pos)
    of 22: parseStr(s, result.alSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.alNoSecurityAltID, pos)
    of 460: parseInt(s, result.alProduct, pos)
    of 461: parseStr(s, result.alCFICode, pos)
    of 167: parseStr(s, result.alSecurityType, pos)
    of 762: parseStr(s, result.alSecuritySubType, pos)
    of 200: parseStr(s, result.alMaturityMonthYear, pos)
    of 541: parseStr(s, result.alMaturityDate, pos)
    of 201: parseInt(s, result.alPutOrCall, pos)
    of 224: parseStr(s, result.alCouponPaymentDate, pos)
    of 225: parseStr(s, result.alIssueDate, pos)
    of 239: parseStr(s, result.alRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.alRepurchaseTerm, pos)
    of 227: parseFloat(s, result.alRepurchaseRate, pos)
    of 228: parseStr(s, result.alFactor, pos)
    of 255: parseStr(s, result.alCreditRating, pos)
    of 543: parseStr(s, result.alInstrRegistry, pos)
    of 470: parseStr(s, result.alCountryOfIssue, pos)
    of 471: parseStr(s, result.alStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.alLocaleOfIssue, pos)
    of 240: parseStr(s, result.alRedemptionDate, pos)
    of 202: parseFloat(s, result.alStrikePrice, pos)
    of 947: parseStr(s, result.alStrikeCurrency, pos)
    of 206: parseChar(s, result.alOptAttribute, pos)
    of 231: parseStr(s, result.alContractMultiplier, pos)
    of 223: parseFloat(s, result.alCouponRate, pos)
    of 207: parseStr(s, result.alSecurityExchange, pos)
    of 106: parseStr(s, result.alIssuer, pos)
    of 348: parseUInt(s, result.alEncodedIssuerLen, pos)
    of 349: parseStr(s, result.alEncodedIssuer, pos)
    of 107: parseStr(s, result.alSecurityDesc, pos)
    of 350: parseUInt(s, result.alEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.alEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.alPool, pos)
    of 667: parseStr(s, result.alContractSettlMonth, pos)
    of 875: parseInt(s, result.alCPProgram, pos)
    of 876: parseStr(s, result.alCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.alNoEvents, pos)
    of 873: parseStr(s, result.alDatedDate, pos)
    of 874: parseStr(s, result.alInterestAccrualDate, pos)
    of 15: parseStr(s, result.alCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.alNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.alNoUnderlyings, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.alNoTradingSessions, pos)
    of 60: parseStr(s, result.alTransactTime, pos)
    of 702: skipValue(s, pos); parseNoPositions(s, result.alNoPositions, pos)
    of 718: parseInt(s, result.alAdjustmentType, pos)
    of 719: parseBool(s, result.alContraryInstructionIndicator, pos)
    of 720: parseBool(s, result.alPriorSpreadIndicator, pos)
    of 834: parseFloat(s, result.alThresholdAmount, pos)
    of 58: parseStr(s, result.alText, pos)
    of 354: parseUInt(s, result.alEncodedTextLen, pos)
    of 355: parseStr(s, result.alEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAM(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAM)
  result.msgType = mtAM
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 721: parseStr(s, result.amPosMaintRptID, pos)
    of 709: parseInt(s, result.amPosTransType, pos)
    of 710: parseStr(s, result.amPosReqID, pos)
    of 712: parseInt(s, result.amPosMaintAction, pos)
    of 713: parseStr(s, result.amOrigPosReqRefID, pos)
    of 722: parseInt(s, result.amPosMaintStatus, pos)
    of 723: parseInt(s, result.amPosMaintResult, pos)
    of 715: parseStr(s, result.amClearingBusinessDate, pos)
    of 716: parseStr(s, result.amSettlSessID, pos)
    of 717: parseStr(s, result.amSettlSessSubID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.amNoPartyIDs, pos)
    of 1: parseStr(s, result.amAccount, pos)
    of 660: parseInt(s, result.amAcctIDSource, pos)
    of 581: parseInt(s, result.amAccountType, pos)
    of 55: parseStr(s, result.amSymbol, pos)
    of 65: parseStr(s, result.amSymbolSfx, pos)
    of 48: parseStr(s, result.amSecurityID, pos)
    of 22: parseStr(s, result.amSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.amNoSecurityAltID, pos)
    of 460: parseInt(s, result.amProduct, pos)
    of 461: parseStr(s, result.amCFICode, pos)
    of 167: parseStr(s, result.amSecurityType, pos)
    of 762: parseStr(s, result.amSecuritySubType, pos)
    of 200: parseStr(s, result.amMaturityMonthYear, pos)
    of 541: parseStr(s, result.amMaturityDate, pos)
    of 201: parseInt(s, result.amPutOrCall, pos)
    of 224: parseStr(s, result.amCouponPaymentDate, pos)
    of 225: parseStr(s, result.amIssueDate, pos)
    of 239: parseStr(s, result.amRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.amRepurchaseTerm, pos)
    of 227: parseFloat(s, result.amRepurchaseRate, pos)
    of 228: parseStr(s, result.amFactor, pos)
    of 255: parseStr(s, result.amCreditRating, pos)
    of 543: parseStr(s, result.amInstrRegistry, pos)
    of 470: parseStr(s, result.amCountryOfIssue, pos)
    of 471: parseStr(s, result.amStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.amLocaleOfIssue, pos)
    of 240: parseStr(s, result.amRedemptionDate, pos)
    of 202: parseFloat(s, result.amStrikePrice, pos)
    of 947: parseStr(s, result.amStrikeCurrency, pos)
    of 206: parseChar(s, result.amOptAttribute, pos)
    of 231: parseStr(s, result.amContractMultiplier, pos)
    of 223: parseFloat(s, result.amCouponRate, pos)
    of 207: parseStr(s, result.amSecurityExchange, pos)
    of 106: parseStr(s, result.amIssuer, pos)
    of 348: parseUInt(s, result.amEncodedIssuerLen, pos)
    of 349: parseStr(s, result.amEncodedIssuer, pos)
    of 107: parseStr(s, result.amSecurityDesc, pos)
    of 350: parseUInt(s, result.amEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.amEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.amPool, pos)
    of 667: parseStr(s, result.amContractSettlMonth, pos)
    of 875: parseInt(s, result.amCPProgram, pos)
    of 876: parseStr(s, result.amCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.amNoEvents, pos)
    of 873: parseStr(s, result.amDatedDate, pos)
    of 874: parseStr(s, result.amInterestAccrualDate, pos)
    of 15: parseStr(s, result.amCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.amNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.amNoUnderlyings, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.amNoTradingSessions, pos)
    of 60: parseStr(s, result.amTransactTime, pos)
    of 702: skipValue(s, pos); parseNoPositions(s, result.amNoPositions, pos)
    of 753: skipValue(s, pos); parseNoPosAmt(s, result.amNoPosAmt, pos)
    of 718: parseInt(s, result.amAdjustmentType, pos)
    of 834: parseFloat(s, result.amThresholdAmount, pos)
    of 58: parseStr(s, result.amText, pos)
    of 354: parseUInt(s, result.amEncodedTextLen, pos)
    of 355: parseStr(s, result.amEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAN(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAN)
  result.msgType = mtAN
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 710: parseStr(s, result.anPosReqID, pos)
    of 724: parseInt(s, result.anPosReqType, pos)
    of 573: parseChar(s, result.anMatchStatus, pos)
    of 263: parseChar(s, result.anSubscriptionRequestType, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.anNoPartyIDs, pos)
    of 1: parseStr(s, result.anAccount, pos)
    of 660: parseInt(s, result.anAcctIDSource, pos)
    of 581: parseInt(s, result.anAccountType, pos)
    of 55: parseStr(s, result.anSymbol, pos)
    of 65: parseStr(s, result.anSymbolSfx, pos)
    of 48: parseStr(s, result.anSecurityID, pos)
    of 22: parseStr(s, result.anSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.anNoSecurityAltID, pos)
    of 460: parseInt(s, result.anProduct, pos)
    of 461: parseStr(s, result.anCFICode, pos)
    of 167: parseStr(s, result.anSecurityType, pos)
    of 762: parseStr(s, result.anSecuritySubType, pos)
    of 200: parseStr(s, result.anMaturityMonthYear, pos)
    of 541: parseStr(s, result.anMaturityDate, pos)
    of 201: parseInt(s, result.anPutOrCall, pos)
    of 224: parseStr(s, result.anCouponPaymentDate, pos)
    of 225: parseStr(s, result.anIssueDate, pos)
    of 239: parseStr(s, result.anRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.anRepurchaseTerm, pos)
    of 227: parseFloat(s, result.anRepurchaseRate, pos)
    of 228: parseStr(s, result.anFactor, pos)
    of 255: parseStr(s, result.anCreditRating, pos)
    of 543: parseStr(s, result.anInstrRegistry, pos)
    of 470: parseStr(s, result.anCountryOfIssue, pos)
    of 471: parseStr(s, result.anStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.anLocaleOfIssue, pos)
    of 240: parseStr(s, result.anRedemptionDate, pos)
    of 202: parseFloat(s, result.anStrikePrice, pos)
    of 947: parseStr(s, result.anStrikeCurrency, pos)
    of 206: parseChar(s, result.anOptAttribute, pos)
    of 231: parseStr(s, result.anContractMultiplier, pos)
    of 223: parseFloat(s, result.anCouponRate, pos)
    of 207: parseStr(s, result.anSecurityExchange, pos)
    of 106: parseStr(s, result.anIssuer, pos)
    of 348: parseUInt(s, result.anEncodedIssuerLen, pos)
    of 349: parseStr(s, result.anEncodedIssuer, pos)
    of 107: parseStr(s, result.anSecurityDesc, pos)
    of 350: parseUInt(s, result.anEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.anEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.anPool, pos)
    of 667: parseStr(s, result.anContractSettlMonth, pos)
    of 875: parseInt(s, result.anCPProgram, pos)
    of 876: parseStr(s, result.anCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.anNoEvents, pos)
    of 873: parseStr(s, result.anDatedDate, pos)
    of 874: parseStr(s, result.anInterestAccrualDate, pos)
    of 15: parseStr(s, result.anCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.anNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.anNoUnderlyings, pos)
    of 715: parseStr(s, result.anClearingBusinessDate, pos)
    of 716: parseStr(s, result.anSettlSessID, pos)
    of 717: parseStr(s, result.anSettlSessSubID, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.anNoTradingSessions, pos)
    of 60: parseStr(s, result.anTransactTime, pos)
    of 725: parseInt(s, result.anResponseTransportType, pos)
    of 726: parseStr(s, result.anResponseDestination, pos)
    of 58: parseStr(s, result.anText, pos)
    of 354: parseUInt(s, result.anEncodedTextLen, pos)
    of 355: parseStr(s, result.anEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAO(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAO)
  result.msgType = mtAO
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 721: parseStr(s, result.aoPosMaintRptID, pos)
    of 710: parseStr(s, result.aoPosReqID, pos)
    of 727: parseInt(s, result.aoTotalNumPosReports, pos)
    of 325: parseBool(s, result.aoUnsolicitedIndicator, pos)
    of 728: parseInt(s, result.aoPosReqResult, pos)
    of 729: parseInt(s, result.aoPosReqStatus, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.aoNoPartyIDs, pos)
    of 1: parseStr(s, result.aoAccount, pos)
    of 660: parseInt(s, result.aoAcctIDSource, pos)
    of 581: parseInt(s, result.aoAccountType, pos)
    of 55: parseStr(s, result.aoSymbol, pos)
    of 65: parseStr(s, result.aoSymbolSfx, pos)
    of 48: parseStr(s, result.aoSecurityID, pos)
    of 22: parseStr(s, result.aoSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.aoNoSecurityAltID, pos)
    of 460: parseInt(s, result.aoProduct, pos)
    of 461: parseStr(s, result.aoCFICode, pos)
    of 167: parseStr(s, result.aoSecurityType, pos)
    of 762: parseStr(s, result.aoSecuritySubType, pos)
    of 200: parseStr(s, result.aoMaturityMonthYear, pos)
    of 541: parseStr(s, result.aoMaturityDate, pos)
    of 201: parseInt(s, result.aoPutOrCall, pos)
    of 224: parseStr(s, result.aoCouponPaymentDate, pos)
    of 225: parseStr(s, result.aoIssueDate, pos)
    of 239: parseStr(s, result.aoRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.aoRepurchaseTerm, pos)
    of 227: parseFloat(s, result.aoRepurchaseRate, pos)
    of 228: parseStr(s, result.aoFactor, pos)
    of 255: parseStr(s, result.aoCreditRating, pos)
    of 543: parseStr(s, result.aoInstrRegistry, pos)
    of 470: parseStr(s, result.aoCountryOfIssue, pos)
    of 471: parseStr(s, result.aoStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.aoLocaleOfIssue, pos)
    of 240: parseStr(s, result.aoRedemptionDate, pos)
    of 202: parseFloat(s, result.aoStrikePrice, pos)
    of 947: parseStr(s, result.aoStrikeCurrency, pos)
    of 206: parseChar(s, result.aoOptAttribute, pos)
    of 231: parseStr(s, result.aoContractMultiplier, pos)
    of 223: parseFloat(s, result.aoCouponRate, pos)
    of 207: parseStr(s, result.aoSecurityExchange, pos)
    of 106: parseStr(s, result.aoIssuer, pos)
    of 348: parseUInt(s, result.aoEncodedIssuerLen, pos)
    of 349: parseStr(s, result.aoEncodedIssuer, pos)
    of 107: parseStr(s, result.aoSecurityDesc, pos)
    of 350: parseUInt(s, result.aoEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.aoEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.aoPool, pos)
    of 667: parseStr(s, result.aoContractSettlMonth, pos)
    of 875: parseInt(s, result.aoCPProgram, pos)
    of 876: parseStr(s, result.aoCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.aoNoEvents, pos)
    of 873: parseStr(s, result.aoDatedDate, pos)
    of 874: parseStr(s, result.aoInterestAccrualDate, pos)
    of 15: parseStr(s, result.aoCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.aoNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.aoNoUnderlyings, pos)
    of 725: parseInt(s, result.aoResponseTransportType, pos)
    of 726: parseStr(s, result.aoResponseDestination, pos)
    of 58: parseStr(s, result.aoText, pos)
    of 354: parseUInt(s, result.aoEncodedTextLen, pos)
    of 355: parseStr(s, result.aoEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAP(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAP)
  result.msgType = mtAP
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 721: parseStr(s, result.apPosMaintRptID, pos)
    of 710: parseStr(s, result.apPosReqID, pos)
    of 724: parseInt(s, result.apPosReqType, pos)
    of 263: parseChar(s, result.apSubscriptionRequestType, pos)
    of 727: parseInt(s, result.apTotalNumPosReports, pos)
    of 325: parseBool(s, result.apUnsolicitedIndicator, pos)
    of 728: parseInt(s, result.apPosReqResult, pos)
    of 715: parseStr(s, result.apClearingBusinessDate, pos)
    of 716: parseStr(s, result.apSettlSessID, pos)
    of 717: parseStr(s, result.apSettlSessSubID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.apNoPartyIDs, pos)
    of 1: parseStr(s, result.apAccount, pos)
    of 660: parseInt(s, result.apAcctIDSource, pos)
    of 581: parseInt(s, result.apAccountType, pos)
    of 55: parseStr(s, result.apSymbol, pos)
    of 65: parseStr(s, result.apSymbolSfx, pos)
    of 48: parseStr(s, result.apSecurityID, pos)
    of 22: parseStr(s, result.apSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.apNoSecurityAltID, pos)
    of 460: parseInt(s, result.apProduct, pos)
    of 461: parseStr(s, result.apCFICode, pos)
    of 167: parseStr(s, result.apSecurityType, pos)
    of 762: parseStr(s, result.apSecuritySubType, pos)
    of 200: parseStr(s, result.apMaturityMonthYear, pos)
    of 541: parseStr(s, result.apMaturityDate, pos)
    of 201: parseInt(s, result.apPutOrCall, pos)
    of 224: parseStr(s, result.apCouponPaymentDate, pos)
    of 225: parseStr(s, result.apIssueDate, pos)
    of 239: parseStr(s, result.apRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.apRepurchaseTerm, pos)
    of 227: parseFloat(s, result.apRepurchaseRate, pos)
    of 228: parseStr(s, result.apFactor, pos)
    of 255: parseStr(s, result.apCreditRating, pos)
    of 543: parseStr(s, result.apInstrRegistry, pos)
    of 470: parseStr(s, result.apCountryOfIssue, pos)
    of 471: parseStr(s, result.apStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.apLocaleOfIssue, pos)
    of 240: parseStr(s, result.apRedemptionDate, pos)
    of 202: parseFloat(s, result.apStrikePrice, pos)
    of 947: parseStr(s, result.apStrikeCurrency, pos)
    of 206: parseChar(s, result.apOptAttribute, pos)
    of 231: parseStr(s, result.apContractMultiplier, pos)
    of 223: parseFloat(s, result.apCouponRate, pos)
    of 207: parseStr(s, result.apSecurityExchange, pos)
    of 106: parseStr(s, result.apIssuer, pos)
    of 348: parseUInt(s, result.apEncodedIssuerLen, pos)
    of 349: parseStr(s, result.apEncodedIssuer, pos)
    of 107: parseStr(s, result.apSecurityDesc, pos)
    of 350: parseUInt(s, result.apEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.apEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.apPool, pos)
    of 667: parseStr(s, result.apContractSettlMonth, pos)
    of 875: parseInt(s, result.apCPProgram, pos)
    of 876: parseStr(s, result.apCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.apNoEvents, pos)
    of 873: parseStr(s, result.apDatedDate, pos)
    of 874: parseStr(s, result.apInterestAccrualDate, pos)
    of 15: parseStr(s, result.apCurrency, pos)
    of 730: parseFloat(s, result.apSettlPrice, pos)
    of 731: parseInt(s, result.apSettlPriceType, pos)
    of 734: parseFloat(s, result.apPriorSettlPrice, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.apNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.apNoUnderlyings, pos)
    of 702: skipValue(s, pos); parseNoPositions(s, result.apNoPositions, pos)
    of 753: skipValue(s, pos); parseNoPosAmt(s, result.apNoPosAmt, pos)
    of 506: parseChar(s, result.apRegistStatus, pos)
    of 743: parseStr(s, result.apDeliveryDate, pos)
    of 58: parseStr(s, result.apText, pos)
    of 354: parseUInt(s, result.apEncodedTextLen, pos)
    of 355: parseStr(s, result.apEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAQ(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAQ)
  result.msgType = mtAQ
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 568: parseStr(s, result.aqTradeRequestID, pos)
    of 569: parseInt(s, result.aqTradeRequestType, pos)
    of 263: parseChar(s, result.aqSubscriptionRequestType, pos)
    of 748: parseInt(s, result.aqTotNumTradeReports, pos)
    of 749: parseInt(s, result.aqTradeRequestResult, pos)
    of 750: parseInt(s, result.aqTradeRequestStatus, pos)
    of 55: parseStr(s, result.aqSymbol, pos)
    of 65: parseStr(s, result.aqSymbolSfx, pos)
    of 48: parseStr(s, result.aqSecurityID, pos)
    of 22: parseStr(s, result.aqSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.aqNoSecurityAltID, pos)
    of 460: parseInt(s, result.aqProduct, pos)
    of 461: parseStr(s, result.aqCFICode, pos)
    of 167: parseStr(s, result.aqSecurityType, pos)
    of 762: parseStr(s, result.aqSecuritySubType, pos)
    of 200: parseStr(s, result.aqMaturityMonthYear, pos)
    of 541: parseStr(s, result.aqMaturityDate, pos)
    of 201: parseInt(s, result.aqPutOrCall, pos)
    of 224: parseStr(s, result.aqCouponPaymentDate, pos)
    of 225: parseStr(s, result.aqIssueDate, pos)
    of 239: parseStr(s, result.aqRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.aqRepurchaseTerm, pos)
    of 227: parseFloat(s, result.aqRepurchaseRate, pos)
    of 228: parseStr(s, result.aqFactor, pos)
    of 255: parseStr(s, result.aqCreditRating, pos)
    of 543: parseStr(s, result.aqInstrRegistry, pos)
    of 470: parseStr(s, result.aqCountryOfIssue, pos)
    of 471: parseStr(s, result.aqStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.aqLocaleOfIssue, pos)
    of 240: parseStr(s, result.aqRedemptionDate, pos)
    of 202: parseFloat(s, result.aqStrikePrice, pos)
    of 947: parseStr(s, result.aqStrikeCurrency, pos)
    of 206: parseChar(s, result.aqOptAttribute, pos)
    of 231: parseStr(s, result.aqContractMultiplier, pos)
    of 223: parseFloat(s, result.aqCouponRate, pos)
    of 207: parseStr(s, result.aqSecurityExchange, pos)
    of 106: parseStr(s, result.aqIssuer, pos)
    of 348: parseUInt(s, result.aqEncodedIssuerLen, pos)
    of 349: parseStr(s, result.aqEncodedIssuer, pos)
    of 107: parseStr(s, result.aqSecurityDesc, pos)
    of 350: parseUInt(s, result.aqEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.aqEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.aqPool, pos)
    of 667: parseStr(s, result.aqContractSettlMonth, pos)
    of 875: parseInt(s, result.aqCPProgram, pos)
    of 876: parseStr(s, result.aqCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.aqNoEvents, pos)
    of 873: parseStr(s, result.aqDatedDate, pos)
    of 874: parseStr(s, result.aqInterestAccrualDate, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.aqNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.aqNoLegs, pos)
    of 442: parseChar(s, result.aqMultiLegReportingType, pos)
    of 725: parseInt(s, result.aqResponseTransportType, pos)
    of 726: parseStr(s, result.aqResponseDestination, pos)
    of 58: parseStr(s, result.aqText, pos)
    of 354: parseUInt(s, result.aqEncodedTextLen, pos)
    of 355: parseStr(s, result.aqEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAR(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAR)
  result.msgType = mtAR
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 571: parseStr(s, result.arTradeReportID, pos)
    of 487: parseInt(s, result.arTradeReportTransType, pos)
    of 856: parseInt(s, result.arTradeReportType, pos)
    of 828: parseInt(s, result.arTrdType, pos)
    of 829: parseInt(s, result.arTrdSubType, pos)
    of 855: parseInt(s, result.arSecondaryTrdType, pos)
    of 830: parseStr(s, result.arTransferReason, pos)
    of 150: parseChar(s, result.arExecType, pos)
    of 572: parseStr(s, result.arTradeReportRefID, pos)
    of 881: parseStr(s, result.arSecondaryTradeReportRefID, pos)
    of 939: parseInt(s, result.arTrdRptStatus, pos)
    of 751: parseInt(s, result.arTradeReportRejectReason, pos)
    of 818: parseStr(s, result.arSecondaryTradeReportID, pos)
    of 263: parseChar(s, result.arSubscriptionRequestType, pos)
    of 820: parseStr(s, result.arTradeLinkID, pos)
    of 880: parseStr(s, result.arTrdMatchID, pos)
    of 17: parseStr(s, result.arExecID, pos)
    of 527: parseStr(s, result.arSecondaryExecID, pos)
    of 55: parseStr(s, result.arSymbol, pos)
    of 65: parseStr(s, result.arSymbolSfx, pos)
    of 48: parseStr(s, result.arSecurityID, pos)
    of 22: parseStr(s, result.arSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.arNoSecurityAltID, pos)
    of 460: parseInt(s, result.arProduct, pos)
    of 461: parseStr(s, result.arCFICode, pos)
    of 167: parseStr(s, result.arSecurityType, pos)
    of 762: parseStr(s, result.arSecuritySubType, pos)
    of 200: parseStr(s, result.arMaturityMonthYear, pos)
    of 541: parseStr(s, result.arMaturityDate, pos)
    of 201: parseInt(s, result.arPutOrCall, pos)
    of 224: parseStr(s, result.arCouponPaymentDate, pos)
    of 225: parseStr(s, result.arIssueDate, pos)
    of 239: parseStr(s, result.arRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.arRepurchaseTerm, pos)
    of 227: parseFloat(s, result.arRepurchaseRate, pos)
    of 228: parseStr(s, result.arFactor, pos)
    of 255: parseStr(s, result.arCreditRating, pos)
    of 543: parseStr(s, result.arInstrRegistry, pos)
    of 470: parseStr(s, result.arCountryOfIssue, pos)
    of 471: parseStr(s, result.arStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.arLocaleOfIssue, pos)
    of 240: parseStr(s, result.arRedemptionDate, pos)
    of 202: parseFloat(s, result.arStrikePrice, pos)
    of 947: parseStr(s, result.arStrikeCurrency, pos)
    of 206: parseChar(s, result.arOptAttribute, pos)
    of 231: parseStr(s, result.arContractMultiplier, pos)
    of 223: parseFloat(s, result.arCouponRate, pos)
    of 207: parseStr(s, result.arSecurityExchange, pos)
    of 106: parseStr(s, result.arIssuer, pos)
    of 348: parseUInt(s, result.arEncodedIssuerLen, pos)
    of 349: parseStr(s, result.arEncodedIssuer, pos)
    of 107: parseStr(s, result.arSecurityDesc, pos)
    of 350: parseUInt(s, result.arEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.arEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.arPool, pos)
    of 667: parseStr(s, result.arContractSettlMonth, pos)
    of 875: parseInt(s, result.arCPProgram, pos)
    of 876: parseStr(s, result.arCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.arNoEvents, pos)
    of 873: parseStr(s, result.arDatedDate, pos)
    of 874: parseStr(s, result.arInterestAccrualDate, pos)
    of 60: parseStr(s, result.arTransactTime, pos)
    of 768: skipValue(s, pos); parseNoTrdRegTimestamps(s, result.arNoTrdRegTimestamps, pos)
    of 725: parseInt(s, result.arResponseTransportType, pos)
    of 726: parseStr(s, result.arResponseDestination, pos)
    of 58: parseStr(s, result.arText, pos)
    of 354: parseUInt(s, result.arEncodedTextLen, pos)
    of 355: parseStr(s, result.arEncodedText, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.arNoLegs, pos)
    of 635: parseStr(s, result.arClearingFeeIndicator, pos)
    of 528: parseChar(s, result.arOrderCapacity, pos)
    of 529: parseStr(s, result.arOrderRestrictions, pos)
    of 582: parseInt(s, result.arCustOrderCapacity, pos)
    of 1: parseStr(s, result.arAccount, pos)
    of 660: parseInt(s, result.arAcctIDSource, pos)
    of 581: parseInt(s, result.arAccountType, pos)
    of 77: parseChar(s, result.arPositionEffect, pos)
    of 591: parseChar(s, result.arPreallocMethod, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.arNoAllocs, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAS(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAS)
  result.msgType = mtAS
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 755: parseStr(s, result.asAllocReportID, pos)
    of 70: parseStr(s, result.asAllocID, pos)
    of 71: parseChar(s, result.asAllocTransType, pos)
    of 795: parseStr(s, result.asAllocReportRefID, pos)
    of 796: parseInt(s, result.asAllocCancReplaceReason, pos)
    of 793: parseStr(s, result.asSecondaryAllocID, pos)
    of 794: parseInt(s, result.asAllocReportType, pos)
    of 87: parseInt(s, result.asAllocStatus, pos)
    of 88: parseInt(s, result.asAllocRejCode, pos)
    of 72: parseStr(s, result.asRefAllocID, pos)
    of 808: parseInt(s, result.asAllocIntermedReqType, pos)
    of 196: parseStr(s, result.asAllocLinkID, pos)
    of 197: parseInt(s, result.asAllocLinkType, pos)
    of 466: parseStr(s, result.asBookingRefID, pos)
    of 857: parseInt(s, result.asAllocNoOrdersType, pos)
    of 73: skipValue(s, pos); parseNoOrders(s, result.asNoOrders, pos)
    of 124: skipValue(s, pos); parseNoExecs(s, result.asNoExecs, pos)
    of 570: parseBool(s, result.asPreviouslyReported, pos)
    of 700: parseBool(s, result.asReversalIndicator, pos)
    of 574: parseStr(s, result.asMatchType, pos)
    of 54: parseChar(s, result.asSide, pos)
    of 55: parseStr(s, result.asSymbol, pos)
    of 65: parseStr(s, result.asSymbolSfx, pos)
    of 48: parseStr(s, result.asSecurityID, pos)
    of 22: parseStr(s, result.asSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.asNoSecurityAltID, pos)
    of 460: parseInt(s, result.asProduct, pos)
    of 461: parseStr(s, result.asCFICode, pos)
    of 167: parseStr(s, result.asSecurityType, pos)
    of 762: parseStr(s, result.asSecuritySubType, pos)
    of 200: parseStr(s, result.asMaturityMonthYear, pos)
    of 541: parseStr(s, result.asMaturityDate, pos)
    of 201: parseInt(s, result.asPutOrCall, pos)
    of 224: parseStr(s, result.asCouponPaymentDate, pos)
    of 225: parseStr(s, result.asIssueDate, pos)
    of 239: parseStr(s, result.asRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.asRepurchaseTerm, pos)
    of 227: parseFloat(s, result.asRepurchaseRate, pos)
    of 228: parseStr(s, result.asFactor, pos)
    of 255: parseStr(s, result.asCreditRating, pos)
    of 543: parseStr(s, result.asInstrRegistry, pos)
    of 470: parseStr(s, result.asCountryOfIssue, pos)
    of 471: parseStr(s, result.asStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.asLocaleOfIssue, pos)
    of 240: parseStr(s, result.asRedemptionDate, pos)
    of 202: parseFloat(s, result.asStrikePrice, pos)
    of 947: parseStr(s, result.asStrikeCurrency, pos)
    of 206: parseChar(s, result.asOptAttribute, pos)
    of 231: parseStr(s, result.asContractMultiplier, pos)
    of 223: parseFloat(s, result.asCouponRate, pos)
    of 207: parseStr(s, result.asSecurityExchange, pos)
    of 106: parseStr(s, result.asIssuer, pos)
    of 348: parseUInt(s, result.asEncodedIssuerLen, pos)
    of 349: parseStr(s, result.asEncodedIssuer, pos)
    of 107: parseStr(s, result.asSecurityDesc, pos)
    of 350: parseUInt(s, result.asEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.asEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.asPool, pos)
    of 667: parseStr(s, result.asContractSettlMonth, pos)
    of 875: parseInt(s, result.asCPProgram, pos)
    of 876: parseStr(s, result.asCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.asNoEvents, pos)
    of 873: parseStr(s, result.asDatedDate, pos)
    of 874: parseStr(s, result.asInterestAccrualDate, pos)
    of 668: parseInt(s, result.asDeliveryForm, pos)
    of 869: parseFloat(s, result.asPctAtRisk, pos)
    of 870: skipValue(s, pos); parseNoInstrAttrib(s, result.asNoInstrAttrib, pos)
    of 913: parseStr(s, result.asAgreementDesc, pos)
    of 914: parseStr(s, result.asAgreementID, pos)
    of 915: parseStr(s, result.asAgreementDate, pos)
    of 918: parseStr(s, result.asAgreementCurrency, pos)
    of 788: parseInt(s, result.asTerminationType, pos)
    of 916: parseStr(s, result.asStartDate, pos)
    of 917: parseStr(s, result.asEndDate, pos)
    of 919: parseInt(s, result.asDeliveryType, pos)
    of 898: parseFloat(s, result.asMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.asNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.asNoLegs, pos)
    of 53: parseUInt(s, result.asQuantity, pos)
    of 854: parseInt(s, result.asQtyType, pos)
    of 30: parseStr(s, result.asLastMkt, pos)
    of 229: parseStr(s, result.asTradeOriginationDate, pos)
    of 336: parseStr(s, result.asTradingSessionID, pos)
    of 625: parseStr(s, result.asTradingSessionSubID, pos)
    of 423: parseInt(s, result.asPriceType, pos)
    of 6: parseFloat(s, result.asAvgPx, pos)
    of 860: parseFloat(s, result.asAvgParPx, pos)
    of 218: parseFloat(s, result.asSpread, pos)
    of 220: parseStr(s, result.asBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.asBenchmarkCurveName, pos)
    of 222: parseStr(s, result.asBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.asBenchmarkPrice, pos)
    of 663: parseInt(s, result.asBenchmarkPriceType, pos)
    of 699: parseStr(s, result.asBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.asBenchmarkSecurityIDSource, pos)
    of 15: parseStr(s, result.asCurrency, pos)
    of 74: parseInt(s, result.asAvgPxPrecision, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.asNoPartyIDs, pos)
    of 75: parseStr(s, result.asTradeDate, pos)
    of 60: parseStr(s, result.asTransactTime, pos)
    of 63: parseChar(s, result.asSettlType, pos)
    of 64: parseStr(s, result.asSettlDate, pos)
    of 775: parseInt(s, result.asBookingType, pos)
    of 381: parseUInt(s, result.asGrossTradeAmt, pos)
    of 238: parseUInt(s, result.asConcession, pos)
    of 237: parseUInt(s, result.asTotalTakedown, pos)
    of 118: parseUInt(s, result.asNetMoney, pos)
    of 77: parseChar(s, result.asPositionEffect, pos)
    of 754: parseBool(s, result.asAutoAcceptIndicator, pos)
    of 58: parseStr(s, result.asText, pos)
    of 354: parseUInt(s, result.asEncodedTextLen, pos)
    of 355: parseStr(s, result.asEncodedText, pos)
    of 157: parseInt(s, result.asNumDaysInterest, pos)
    of 158: parseFloat(s, result.asAccruedInterestRate, pos)
    of 159: parseUInt(s, result.asAccruedInterestAmt, pos)
    of 540: parseUInt(s, result.asTotalAccruedInterestAmt, pos)
    of 738: parseUInt(s, result.asInterestAtMaturity, pos)
    of 920: parseUInt(s, result.asEndAccruedInterestAmt, pos)
    of 921: parseUInt(s, result.asStartCash, pos)
    of 922: parseUInt(s, result.asEndCash, pos)
    of 650: parseBool(s, result.asLegalConfirm, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.asNoStipulations, pos)
    of 235: parseStr(s, result.asYieldType, pos)
    of 236: parseFloat(s, result.asYield, pos)
    of 701: parseStr(s, result.asYieldCalcDate, pos)
    of 696: parseStr(s, result.asYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.asYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.asYieldRedemptionPriceType, pos)
    of 892: parseInt(s, result.asTotNoAllocs, pos)
    of 893: parseBool(s, result.asLastFragment, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.asNoAllocs, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAT(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAT)
  result.msgType = mtAT
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 755: parseStr(s, result.atAllocReportID, pos)
    of 70: parseStr(s, result.atAllocID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.atNoPartyIDs, pos)
    of 793: parseStr(s, result.atSecondaryAllocID, pos)
    of 75: parseStr(s, result.atTradeDate, pos)
    of 60: parseStr(s, result.atTransactTime, pos)
    of 87: parseInt(s, result.atAllocStatus, pos)
    of 88: parseInt(s, result.atAllocRejCode, pos)
    of 794: parseInt(s, result.atAllocReportType, pos)
    of 808: parseInt(s, result.atAllocIntermedReqType, pos)
    of 573: parseChar(s, result.atMatchStatus, pos)
    of 460: parseInt(s, result.atProduct, pos)
    of 167: parseStr(s, result.atSecurityType, pos)
    of 58: parseStr(s, result.atText, pos)
    of 354: parseUInt(s, result.atEncodedTextLen, pos)
    of 355: parseStr(s, result.atEncodedText, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.atNoAllocs, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAU(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAU)
  result.msgType = mtAU
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 664: parseStr(s, result.auConfirmID, pos)
    of 75: parseStr(s, result.auTradeDate, pos)
    of 60: parseStr(s, result.auTransactTime, pos)
    of 940: parseInt(s, result.auAffirmStatus, pos)
    of 774: parseInt(s, result.auConfirmRejReason, pos)
    of 573: parseChar(s, result.auMatchStatus, pos)
    of 58: parseStr(s, result.auText, pos)
    of 354: parseUInt(s, result.auEncodedTextLen, pos)
    of 355: parseStr(s, result.auEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAV(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAV)
  result.msgType = mtAV
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 791: parseStr(s, result.avSettlInstReqID, pos)
    of 60: parseStr(s, result.avTransactTime, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.avNoPartyIDs, pos)
    of 79: parseStr(s, result.avAllocAccount, pos)
    of 661: parseInt(s, result.avAllocAcctIDSource, pos)
    of 54: parseChar(s, result.avSide, pos)
    of 460: parseInt(s, result.avProduct, pos)
    of 167: parseStr(s, result.avSecurityType, pos)
    of 461: parseStr(s, result.avCFICode, pos)
    of 168: parseStr(s, result.avEffectiveTime, pos)
    of 126: parseStr(s, result.avExpireTime, pos)
    of 779: parseStr(s, result.avLastUpdateTime, pos)
    of 169: parseInt(s, result.avStandInstDbType, pos)
    of 170: parseStr(s, result.avStandInstDbName, pos)
    of 171: parseStr(s, result.avStandInstDbID, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAW(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAW)
  result.msgType = mtAW
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 833: parseStr(s, result.awAsgnRptID, pos)
    of 832: parseInt(s, result.awTotNumAssignmentReports, pos)
    of 912: parseBool(s, result.awLastRptRequested, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.awNoPartyIDs, pos)
    of 1: parseStr(s, result.awAccount, pos)
    of 581: parseInt(s, result.awAccountType, pos)
    of 55: parseStr(s, result.awSymbol, pos)
    of 65: parseStr(s, result.awSymbolSfx, pos)
    of 48: parseStr(s, result.awSecurityID, pos)
    of 22: parseStr(s, result.awSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.awNoSecurityAltID, pos)
    of 460: parseInt(s, result.awProduct, pos)
    of 461: parseStr(s, result.awCFICode, pos)
    of 167: parseStr(s, result.awSecurityType, pos)
    of 762: parseStr(s, result.awSecuritySubType, pos)
    of 200: parseStr(s, result.awMaturityMonthYear, pos)
    of 541: parseStr(s, result.awMaturityDate, pos)
    of 201: parseInt(s, result.awPutOrCall, pos)
    of 224: parseStr(s, result.awCouponPaymentDate, pos)
    of 225: parseStr(s, result.awIssueDate, pos)
    of 239: parseStr(s, result.awRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.awRepurchaseTerm, pos)
    of 227: parseFloat(s, result.awRepurchaseRate, pos)
    of 228: parseStr(s, result.awFactor, pos)
    of 255: parseStr(s, result.awCreditRating, pos)
    of 543: parseStr(s, result.awInstrRegistry, pos)
    of 470: parseStr(s, result.awCountryOfIssue, pos)
    of 471: parseStr(s, result.awStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.awLocaleOfIssue, pos)
    of 240: parseStr(s, result.awRedemptionDate, pos)
    of 202: parseFloat(s, result.awStrikePrice, pos)
    of 947: parseStr(s, result.awStrikeCurrency, pos)
    of 206: parseChar(s, result.awOptAttribute, pos)
    of 231: parseStr(s, result.awContractMultiplier, pos)
    of 223: parseFloat(s, result.awCouponRate, pos)
    of 207: parseStr(s, result.awSecurityExchange, pos)
    of 106: parseStr(s, result.awIssuer, pos)
    of 348: parseUInt(s, result.awEncodedIssuerLen, pos)
    of 349: parseStr(s, result.awEncodedIssuer, pos)
    of 107: parseStr(s, result.awSecurityDesc, pos)
    of 350: parseUInt(s, result.awEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.awEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.awPool, pos)
    of 667: parseStr(s, result.awContractSettlMonth, pos)
    of 875: parseInt(s, result.awCPProgram, pos)
    of 876: parseStr(s, result.awCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.awNoEvents, pos)
    of 873: parseStr(s, result.awDatedDate, pos)
    of 874: parseStr(s, result.awInterestAccrualDate, pos)
    of 15: parseStr(s, result.awCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.awNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.awNoUnderlyings, pos)
    of 702: skipValue(s, pos); parseNoPositions(s, result.awNoPositions, pos)
    of 753: skipValue(s, pos); parseNoPosAmt(s, result.awNoPosAmt, pos)
    of 834: parseFloat(s, result.awThresholdAmount, pos)
    of 730: parseFloat(s, result.awSettlPrice, pos)
    of 731: parseInt(s, result.awSettlPriceType, pos)
    of 732: parseFloat(s, result.awUnderlyingSettlPrice, pos)
    of 432: parseStr(s, result.awExpireDate, pos)
    of 744: parseChar(s, result.awAssignmentMethod, pos)
    of 745: parseUInt(s, result.awAssignmentUnit, pos)
    of 746: parseUInt(s, result.awOpenInterest, pos)
    of 747: parseChar(s, result.awExerciseMethod, pos)
    of 716: parseStr(s, result.awSettlSessID, pos)
    of 717: parseStr(s, result.awSettlSessSubID, pos)
    of 715: parseStr(s, result.awClearingBusinessDate, pos)
    of 58: parseStr(s, result.awText, pos)
    of 354: parseUInt(s, result.awEncodedTextLen, pos)
    of 355: parseStr(s, result.awEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAX(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAX)
  result.msgType = mtAX
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 894: parseStr(s, result.axCollReqID, pos)
    of 895: parseInt(s, result.axCollAsgnReason, pos)
    of 60: parseStr(s, result.axTransactTime, pos)
    of 126: parseStr(s, result.axExpireTime, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.axNoPartyIDs, pos)
    of 1: parseStr(s, result.axAccount, pos)
    of 581: parseInt(s, result.axAccountType, pos)
    of 11: parseStr(s, result.axClOrdID, pos)
    of 37: parseStr(s, result.axOrderID, pos)
    of 198: parseStr(s, result.axSecondaryOrderID, pos)
    of 526: parseStr(s, result.axSecondaryClOrdID, pos)
    of 124: skipValue(s, pos); parseNoExecs(s, result.axNoExecs, pos)
    of 897: skipValue(s, pos); parseNoTrades(s, result.axNoTrades, pos)
    of 55: parseStr(s, result.axSymbol, pos)
    of 65: parseStr(s, result.axSymbolSfx, pos)
    of 48: parseStr(s, result.axSecurityID, pos)
    of 22: parseStr(s, result.axSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.axNoSecurityAltID, pos)
    of 460: parseInt(s, result.axProduct, pos)
    of 461: parseStr(s, result.axCFICode, pos)
    of 167: parseStr(s, result.axSecurityType, pos)
    of 762: parseStr(s, result.axSecuritySubType, pos)
    of 200: parseStr(s, result.axMaturityMonthYear, pos)
    of 541: parseStr(s, result.axMaturityDate, pos)
    of 201: parseInt(s, result.axPutOrCall, pos)
    of 224: parseStr(s, result.axCouponPaymentDate, pos)
    of 225: parseStr(s, result.axIssueDate, pos)
    of 239: parseStr(s, result.axRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.axRepurchaseTerm, pos)
    of 227: parseFloat(s, result.axRepurchaseRate, pos)
    of 228: parseStr(s, result.axFactor, pos)
    of 255: parseStr(s, result.axCreditRating, pos)
    of 543: parseStr(s, result.axInstrRegistry, pos)
    of 470: parseStr(s, result.axCountryOfIssue, pos)
    of 471: parseStr(s, result.axStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.axLocaleOfIssue, pos)
    of 240: parseStr(s, result.axRedemptionDate, pos)
    of 202: parseFloat(s, result.axStrikePrice, pos)
    of 947: parseStr(s, result.axStrikeCurrency, pos)
    of 206: parseChar(s, result.axOptAttribute, pos)
    of 231: parseStr(s, result.axContractMultiplier, pos)
    of 223: parseFloat(s, result.axCouponRate, pos)
    of 207: parseStr(s, result.axSecurityExchange, pos)
    of 106: parseStr(s, result.axIssuer, pos)
    of 348: parseUInt(s, result.axEncodedIssuerLen, pos)
    of 349: parseStr(s, result.axEncodedIssuer, pos)
    of 107: parseStr(s, result.axSecurityDesc, pos)
    of 350: parseUInt(s, result.axEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.axEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.axPool, pos)
    of 667: parseStr(s, result.axContractSettlMonth, pos)
    of 875: parseInt(s, result.axCPProgram, pos)
    of 876: parseStr(s, result.axCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.axNoEvents, pos)
    of 873: parseStr(s, result.axDatedDate, pos)
    of 874: parseStr(s, result.axInterestAccrualDate, pos)
    of 913: parseStr(s, result.axAgreementDesc, pos)
    of 914: parseStr(s, result.axAgreementID, pos)
    of 915: parseStr(s, result.axAgreementDate, pos)
    of 918: parseStr(s, result.axAgreementCurrency, pos)
    of 788: parseInt(s, result.axTerminationType, pos)
    of 916: parseStr(s, result.axStartDate, pos)
    of 917: parseStr(s, result.axEndDate, pos)
    of 919: parseInt(s, result.axDeliveryType, pos)
    of 898: parseFloat(s, result.axMarginRatio, pos)
    of 64: parseStr(s, result.axSettlDate, pos)
    of 53: parseUInt(s, result.axQuantity, pos)
    of 854: parseInt(s, result.axQtyType, pos)
    of 15: parseStr(s, result.axCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.axNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.axNoUnderlyings, pos)
    of 899: parseUInt(s, result.axMarginExcess, pos)
    of 900: parseUInt(s, result.axTotalNetValue, pos)
    of 901: parseUInt(s, result.axCashOutstanding, pos)
    of 768: skipValue(s, pos); parseNoTrdRegTimestamps(s, result.axNoTrdRegTimestamps, pos)
    of 54: parseChar(s, result.axSide, pos)
    of 136: skipValue(s, pos); parseNoMiscFees(s, result.axNoMiscFees, pos)
    of 44: parseFloat(s, result.axPrice, pos)
    of 423: parseInt(s, result.axPriceType, pos)
    of 159: parseUInt(s, result.axAccruedInterestAmt, pos)
    of 920: parseUInt(s, result.axEndAccruedInterestAmt, pos)
    of 921: parseUInt(s, result.axStartCash, pos)
    of 922: parseUInt(s, result.axEndCash, pos)
    of 218: parseFloat(s, result.axSpread, pos)
    of 220: parseStr(s, result.axBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.axBenchmarkCurveName, pos)
    of 222: parseStr(s, result.axBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.axBenchmarkPrice, pos)
    of 663: parseInt(s, result.axBenchmarkPriceType, pos)
    of 699: parseStr(s, result.axBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.axBenchmarkSecurityIDSource, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.axNoStipulations, pos)
    of 336: parseStr(s, result.axTradingSessionID, pos)
    of 625: parseStr(s, result.axTradingSessionSubID, pos)
    of 716: parseStr(s, result.axSettlSessID, pos)
    of 717: parseStr(s, result.axSettlSessSubID, pos)
    of 715: parseStr(s, result.axClearingBusinessDate, pos)
    of 58: parseStr(s, result.axText, pos)
    of 354: parseUInt(s, result.axEncodedTextLen, pos)
    of 355: parseStr(s, result.axEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAY(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAY)
  result.msgType = mtAY
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 902: parseStr(s, result.ayCollAsgnID, pos)
    of 894: parseStr(s, result.ayCollReqID, pos)
    of 895: parseInt(s, result.ayCollAsgnReason, pos)
    of 903: parseInt(s, result.ayCollAsgnTransType, pos)
    of 907: parseStr(s, result.ayCollAsgnRefID, pos)
    of 60: parseStr(s, result.ayTransactTime, pos)
    of 126: parseStr(s, result.ayExpireTime, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.ayNoPartyIDs, pos)
    of 1: parseStr(s, result.ayAccount, pos)
    of 581: parseInt(s, result.ayAccountType, pos)
    of 11: parseStr(s, result.ayClOrdID, pos)
    of 37: parseStr(s, result.ayOrderID, pos)
    of 198: parseStr(s, result.aySecondaryOrderID, pos)
    of 526: parseStr(s, result.aySecondaryClOrdID, pos)
    of 124: skipValue(s, pos); parseNoExecs(s, result.ayNoExecs, pos)
    of 897: skipValue(s, pos); parseNoTrades(s, result.ayNoTrades, pos)
    of 55: parseStr(s, result.aySymbol, pos)
    of 65: parseStr(s, result.aySymbolSfx, pos)
    of 48: parseStr(s, result.aySecurityID, pos)
    of 22: parseStr(s, result.aySecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.ayNoSecurityAltID, pos)
    of 460: parseInt(s, result.ayProduct, pos)
    of 461: parseStr(s, result.ayCFICode, pos)
    of 167: parseStr(s, result.aySecurityType, pos)
    of 762: parseStr(s, result.aySecuritySubType, pos)
    of 200: parseStr(s, result.ayMaturityMonthYear, pos)
    of 541: parseStr(s, result.ayMaturityDate, pos)
    of 201: parseInt(s, result.ayPutOrCall, pos)
    of 224: parseStr(s, result.ayCouponPaymentDate, pos)
    of 225: parseStr(s, result.ayIssueDate, pos)
    of 239: parseStr(s, result.ayRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.ayRepurchaseTerm, pos)
    of 227: parseFloat(s, result.ayRepurchaseRate, pos)
    of 228: parseStr(s, result.ayFactor, pos)
    of 255: parseStr(s, result.ayCreditRating, pos)
    of 543: parseStr(s, result.ayInstrRegistry, pos)
    of 470: parseStr(s, result.ayCountryOfIssue, pos)
    of 471: parseStr(s, result.ayStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.ayLocaleOfIssue, pos)
    of 240: parseStr(s, result.ayRedemptionDate, pos)
    of 202: parseFloat(s, result.ayStrikePrice, pos)
    of 947: parseStr(s, result.ayStrikeCurrency, pos)
    of 206: parseChar(s, result.ayOptAttribute, pos)
    of 231: parseStr(s, result.ayContractMultiplier, pos)
    of 223: parseFloat(s, result.ayCouponRate, pos)
    of 207: parseStr(s, result.aySecurityExchange, pos)
    of 106: parseStr(s, result.ayIssuer, pos)
    of 348: parseUInt(s, result.ayEncodedIssuerLen, pos)
    of 349: parseStr(s, result.ayEncodedIssuer, pos)
    of 107: parseStr(s, result.aySecurityDesc, pos)
    of 350: parseUInt(s, result.ayEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.ayEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.ayPool, pos)
    of 667: parseStr(s, result.ayContractSettlMonth, pos)
    of 875: parseInt(s, result.ayCPProgram, pos)
    of 876: parseStr(s, result.ayCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.ayNoEvents, pos)
    of 873: parseStr(s, result.ayDatedDate, pos)
    of 874: parseStr(s, result.ayInterestAccrualDate, pos)
    of 913: parseStr(s, result.ayAgreementDesc, pos)
    of 914: parseStr(s, result.ayAgreementID, pos)
    of 915: parseStr(s, result.ayAgreementDate, pos)
    of 918: parseStr(s, result.ayAgreementCurrency, pos)
    of 788: parseInt(s, result.ayTerminationType, pos)
    of 916: parseStr(s, result.ayStartDate, pos)
    of 917: parseStr(s, result.ayEndDate, pos)
    of 919: parseInt(s, result.ayDeliveryType, pos)
    of 898: parseFloat(s, result.ayMarginRatio, pos)
    of 64: parseStr(s, result.aySettlDate, pos)
    of 53: parseUInt(s, result.ayQuantity, pos)
    of 854: parseInt(s, result.ayQtyType, pos)
    of 15: parseStr(s, result.ayCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.ayNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.ayNoUnderlyings, pos)
    of 899: parseUInt(s, result.ayMarginExcess, pos)
    of 900: parseUInt(s, result.ayTotalNetValue, pos)
    of 901: parseUInt(s, result.ayCashOutstanding, pos)
    of 768: skipValue(s, pos); parseNoTrdRegTimestamps(s, result.ayNoTrdRegTimestamps, pos)
    of 54: parseChar(s, result.aySide, pos)
    of 136: skipValue(s, pos); parseNoMiscFees(s, result.ayNoMiscFees, pos)
    of 44: parseFloat(s, result.ayPrice, pos)
    of 423: parseInt(s, result.ayPriceType, pos)
    of 159: parseUInt(s, result.ayAccruedInterestAmt, pos)
    of 920: parseUInt(s, result.ayEndAccruedInterestAmt, pos)
    of 921: parseUInt(s, result.ayStartCash, pos)
    of 922: parseUInt(s, result.ayEndCash, pos)
    of 218: parseFloat(s, result.aySpread, pos)
    of 220: parseStr(s, result.ayBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.ayBenchmarkCurveName, pos)
    of 222: parseStr(s, result.ayBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.ayBenchmarkPrice, pos)
    of 663: parseInt(s, result.ayBenchmarkPriceType, pos)
    of 699: parseStr(s, result.ayBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.ayBenchmarkSecurityIDSource, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.ayNoStipulations, pos)
    of 172: parseInt(s, result.aySettlDeliveryType, pos)
    of 169: parseInt(s, result.ayStandInstDbType, pos)
    of 170: parseStr(s, result.ayStandInstDbName, pos)
    of 171: parseStr(s, result.ayStandInstDbID, pos)
    of 85: skipValue(s, pos); parseNoDlvyInst(s, result.ayNoDlvyInst, pos)
    of 336: parseStr(s, result.ayTradingSessionID, pos)
    of 625: parseStr(s, result.ayTradingSessionSubID, pos)
    of 716: parseStr(s, result.aySettlSessID, pos)
    of 717: parseStr(s, result.aySettlSessSubID, pos)
    of 715: parseStr(s, result.ayClearingBusinessDate, pos)
    of 58: parseStr(s, result.ayText, pos)
    of 354: parseUInt(s, result.ayEncodedTextLen, pos)
    of 355: parseStr(s, result.ayEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtAZ(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtAZ)
  result.msgType = mtAZ
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 904: parseStr(s, result.azCollRespID, pos)
    of 902: parseStr(s, result.azCollAsgnID, pos)
    of 894: parseStr(s, result.azCollReqID, pos)
    of 895: parseInt(s, result.azCollAsgnReason, pos)
    of 903: parseInt(s, result.azCollAsgnTransType, pos)
    of 905: parseInt(s, result.azCollAsgnRespType, pos)
    of 906: parseInt(s, result.azCollAsgnRejectReason, pos)
    of 60: parseStr(s, result.azTransactTime, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.azNoPartyIDs, pos)
    of 1: parseStr(s, result.azAccount, pos)
    of 581: parseInt(s, result.azAccountType, pos)
    of 11: parseStr(s, result.azClOrdID, pos)
    of 37: parseStr(s, result.azOrderID, pos)
    of 198: parseStr(s, result.azSecondaryOrderID, pos)
    of 526: parseStr(s, result.azSecondaryClOrdID, pos)
    of 124: skipValue(s, pos); parseNoExecs(s, result.azNoExecs, pos)
    of 897: skipValue(s, pos); parseNoTrades(s, result.azNoTrades, pos)
    of 55: parseStr(s, result.azSymbol, pos)
    of 65: parseStr(s, result.azSymbolSfx, pos)
    of 48: parseStr(s, result.azSecurityID, pos)
    of 22: parseStr(s, result.azSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.azNoSecurityAltID, pos)
    of 460: parseInt(s, result.azProduct, pos)
    of 461: parseStr(s, result.azCFICode, pos)
    of 167: parseStr(s, result.azSecurityType, pos)
    of 762: parseStr(s, result.azSecuritySubType, pos)
    of 200: parseStr(s, result.azMaturityMonthYear, pos)
    of 541: parseStr(s, result.azMaturityDate, pos)
    of 201: parseInt(s, result.azPutOrCall, pos)
    of 224: parseStr(s, result.azCouponPaymentDate, pos)
    of 225: parseStr(s, result.azIssueDate, pos)
    of 239: parseStr(s, result.azRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.azRepurchaseTerm, pos)
    of 227: parseFloat(s, result.azRepurchaseRate, pos)
    of 228: parseStr(s, result.azFactor, pos)
    of 255: parseStr(s, result.azCreditRating, pos)
    of 543: parseStr(s, result.azInstrRegistry, pos)
    of 470: parseStr(s, result.azCountryOfIssue, pos)
    of 471: parseStr(s, result.azStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.azLocaleOfIssue, pos)
    of 240: parseStr(s, result.azRedemptionDate, pos)
    of 202: parseFloat(s, result.azStrikePrice, pos)
    of 947: parseStr(s, result.azStrikeCurrency, pos)
    of 206: parseChar(s, result.azOptAttribute, pos)
    of 231: parseStr(s, result.azContractMultiplier, pos)
    of 223: parseFloat(s, result.azCouponRate, pos)
    of 207: parseStr(s, result.azSecurityExchange, pos)
    of 106: parseStr(s, result.azIssuer, pos)
    of 348: parseUInt(s, result.azEncodedIssuerLen, pos)
    of 349: parseStr(s, result.azEncodedIssuer, pos)
    of 107: parseStr(s, result.azSecurityDesc, pos)
    of 350: parseUInt(s, result.azEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.azEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.azPool, pos)
    of 667: parseStr(s, result.azContractSettlMonth, pos)
    of 875: parseInt(s, result.azCPProgram, pos)
    of 876: parseStr(s, result.azCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.azNoEvents, pos)
    of 873: parseStr(s, result.azDatedDate, pos)
    of 874: parseStr(s, result.azInterestAccrualDate, pos)
    of 913: parseStr(s, result.azAgreementDesc, pos)
    of 914: parseStr(s, result.azAgreementID, pos)
    of 915: parseStr(s, result.azAgreementDate, pos)
    of 918: parseStr(s, result.azAgreementCurrency, pos)
    of 788: parseInt(s, result.azTerminationType, pos)
    of 916: parseStr(s, result.azStartDate, pos)
    of 917: parseStr(s, result.azEndDate, pos)
    of 919: parseInt(s, result.azDeliveryType, pos)
    of 898: parseFloat(s, result.azMarginRatio, pos)
    of 64: parseStr(s, result.azSettlDate, pos)
    of 53: parseUInt(s, result.azQuantity, pos)
    of 854: parseInt(s, result.azQtyType, pos)
    of 15: parseStr(s, result.azCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.azNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.azNoUnderlyings, pos)
    of 899: parseUInt(s, result.azMarginExcess, pos)
    of 900: parseUInt(s, result.azTotalNetValue, pos)
    of 901: parseUInt(s, result.azCashOutstanding, pos)
    of 768: skipValue(s, pos); parseNoTrdRegTimestamps(s, result.azNoTrdRegTimestamps, pos)
    of 54: parseChar(s, result.azSide, pos)
    of 136: skipValue(s, pos); parseNoMiscFees(s, result.azNoMiscFees, pos)
    of 44: parseFloat(s, result.azPrice, pos)
    of 423: parseInt(s, result.azPriceType, pos)
    of 159: parseUInt(s, result.azAccruedInterestAmt, pos)
    of 920: parseUInt(s, result.azEndAccruedInterestAmt, pos)
    of 921: parseUInt(s, result.azStartCash, pos)
    of 922: parseUInt(s, result.azEndCash, pos)
    of 218: parseFloat(s, result.azSpread, pos)
    of 220: parseStr(s, result.azBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.azBenchmarkCurveName, pos)
    of 222: parseStr(s, result.azBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.azBenchmarkPrice, pos)
    of 663: parseInt(s, result.azBenchmarkPriceType, pos)
    of 699: parseStr(s, result.azBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.azBenchmarkSecurityIDSource, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.azNoStipulations, pos)
    of 58: parseStr(s, result.azText, pos)
    of 354: parseUInt(s, result.azEncodedTextLen, pos)
    of 355: parseStr(s, result.azEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtBA(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtBA)
  result.msgType = mtBA
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 908: parseStr(s, result.baCollRptID, pos)
    of 909: parseStr(s, result.baCollInquiryID, pos)
    of 910: parseInt(s, result.baCollStatus, pos)
    of 911: parseInt(s, result.baTotNumReports, pos)
    of 912: parseBool(s, result.baLastRptRequested, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.baNoPartyIDs, pos)
    of 1: parseStr(s, result.baAccount, pos)
    of 581: parseInt(s, result.baAccountType, pos)
    of 11: parseStr(s, result.baClOrdID, pos)
    of 37: parseStr(s, result.baOrderID, pos)
    of 198: parseStr(s, result.baSecondaryOrderID, pos)
    of 526: parseStr(s, result.baSecondaryClOrdID, pos)
    of 124: skipValue(s, pos); parseNoExecs(s, result.baNoExecs, pos)
    of 897: skipValue(s, pos); parseNoTrades(s, result.baNoTrades, pos)
    of 55: parseStr(s, result.baSymbol, pos)
    of 65: parseStr(s, result.baSymbolSfx, pos)
    of 48: parseStr(s, result.baSecurityID, pos)
    of 22: parseStr(s, result.baSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.baNoSecurityAltID, pos)
    of 460: parseInt(s, result.baProduct, pos)
    of 461: parseStr(s, result.baCFICode, pos)
    of 167: parseStr(s, result.baSecurityType, pos)
    of 762: parseStr(s, result.baSecuritySubType, pos)
    of 200: parseStr(s, result.baMaturityMonthYear, pos)
    of 541: parseStr(s, result.baMaturityDate, pos)
    of 201: parseInt(s, result.baPutOrCall, pos)
    of 224: parseStr(s, result.baCouponPaymentDate, pos)
    of 225: parseStr(s, result.baIssueDate, pos)
    of 239: parseStr(s, result.baRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.baRepurchaseTerm, pos)
    of 227: parseFloat(s, result.baRepurchaseRate, pos)
    of 228: parseStr(s, result.baFactor, pos)
    of 255: parseStr(s, result.baCreditRating, pos)
    of 543: parseStr(s, result.baInstrRegistry, pos)
    of 470: parseStr(s, result.baCountryOfIssue, pos)
    of 471: parseStr(s, result.baStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.baLocaleOfIssue, pos)
    of 240: parseStr(s, result.baRedemptionDate, pos)
    of 202: parseFloat(s, result.baStrikePrice, pos)
    of 947: parseStr(s, result.baStrikeCurrency, pos)
    of 206: parseChar(s, result.baOptAttribute, pos)
    of 231: parseStr(s, result.baContractMultiplier, pos)
    of 223: parseFloat(s, result.baCouponRate, pos)
    of 207: parseStr(s, result.baSecurityExchange, pos)
    of 106: parseStr(s, result.baIssuer, pos)
    of 348: parseUInt(s, result.baEncodedIssuerLen, pos)
    of 349: parseStr(s, result.baEncodedIssuer, pos)
    of 107: parseStr(s, result.baSecurityDesc, pos)
    of 350: parseUInt(s, result.baEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.baEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.baPool, pos)
    of 667: parseStr(s, result.baContractSettlMonth, pos)
    of 875: parseInt(s, result.baCPProgram, pos)
    of 876: parseStr(s, result.baCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.baNoEvents, pos)
    of 873: parseStr(s, result.baDatedDate, pos)
    of 874: parseStr(s, result.baInterestAccrualDate, pos)
    of 913: parseStr(s, result.baAgreementDesc, pos)
    of 914: parseStr(s, result.baAgreementID, pos)
    of 915: parseStr(s, result.baAgreementDate, pos)
    of 918: parseStr(s, result.baAgreementCurrency, pos)
    of 788: parseInt(s, result.baTerminationType, pos)
    of 916: parseStr(s, result.baStartDate, pos)
    of 917: parseStr(s, result.baEndDate, pos)
    of 919: parseInt(s, result.baDeliveryType, pos)
    of 898: parseFloat(s, result.baMarginRatio, pos)
    of 64: parseStr(s, result.baSettlDate, pos)
    of 53: parseUInt(s, result.baQuantity, pos)
    of 854: parseInt(s, result.baQtyType, pos)
    of 15: parseStr(s, result.baCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.baNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.baNoUnderlyings, pos)
    of 899: parseUInt(s, result.baMarginExcess, pos)
    of 900: parseUInt(s, result.baTotalNetValue, pos)
    of 901: parseUInt(s, result.baCashOutstanding, pos)
    of 768: skipValue(s, pos); parseNoTrdRegTimestamps(s, result.baNoTrdRegTimestamps, pos)
    of 54: parseChar(s, result.baSide, pos)
    of 136: skipValue(s, pos); parseNoMiscFees(s, result.baNoMiscFees, pos)
    of 44: parseFloat(s, result.baPrice, pos)
    of 423: parseInt(s, result.baPriceType, pos)
    of 159: parseUInt(s, result.baAccruedInterestAmt, pos)
    of 920: parseUInt(s, result.baEndAccruedInterestAmt, pos)
    of 921: parseUInt(s, result.baStartCash, pos)
    of 922: parseUInt(s, result.baEndCash, pos)
    of 218: parseFloat(s, result.baSpread, pos)
    of 220: parseStr(s, result.baBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.baBenchmarkCurveName, pos)
    of 222: parseStr(s, result.baBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.baBenchmarkPrice, pos)
    of 663: parseInt(s, result.baBenchmarkPriceType, pos)
    of 699: parseStr(s, result.baBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.baBenchmarkSecurityIDSource, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.baNoStipulations, pos)
    of 172: parseInt(s, result.baSettlDeliveryType, pos)
    of 169: parseInt(s, result.baStandInstDbType, pos)
    of 170: parseStr(s, result.baStandInstDbName, pos)
    of 171: parseStr(s, result.baStandInstDbID, pos)
    of 85: skipValue(s, pos); parseNoDlvyInst(s, result.baNoDlvyInst, pos)
    of 336: parseStr(s, result.baTradingSessionID, pos)
    of 625: parseStr(s, result.baTradingSessionSubID, pos)
    of 716: parseStr(s, result.baSettlSessID, pos)
    of 717: parseStr(s, result.baSettlSessSubID, pos)
    of 715: parseStr(s, result.baClearingBusinessDate, pos)
    of 58: parseStr(s, result.baText, pos)
    of 354: parseUInt(s, result.baEncodedTextLen, pos)
    of 355: parseStr(s, result.baEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtBB(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtBB)
  result.msgType = mtBB
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 909: parseStr(s, result.bbCollInquiryID, pos)
    of 938: skipValue(s, pos); parseNoCollInquiryQualifier(s, result.bbNoCollInquiryQualifier, pos)
    of 263: parseChar(s, result.bbSubscriptionRequestType, pos)
    of 725: parseInt(s, result.bbResponseTransportType, pos)
    of 726: parseStr(s, result.bbResponseDestination, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.bbNoPartyIDs, pos)
    of 1: parseStr(s, result.bbAccount, pos)
    of 581: parseInt(s, result.bbAccountType, pos)
    of 11: parseStr(s, result.bbClOrdID, pos)
    of 37: parseStr(s, result.bbOrderID, pos)
    of 198: parseStr(s, result.bbSecondaryOrderID, pos)
    of 526: parseStr(s, result.bbSecondaryClOrdID, pos)
    of 124: skipValue(s, pos); parseNoExecs(s, result.bbNoExecs, pos)
    of 897: skipValue(s, pos); parseNoTrades(s, result.bbNoTrades, pos)
    of 55: parseStr(s, result.bbSymbol, pos)
    of 65: parseStr(s, result.bbSymbolSfx, pos)
    of 48: parseStr(s, result.bbSecurityID, pos)
    of 22: parseStr(s, result.bbSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.bbNoSecurityAltID, pos)
    of 460: parseInt(s, result.bbProduct, pos)
    of 461: parseStr(s, result.bbCFICode, pos)
    of 167: parseStr(s, result.bbSecurityType, pos)
    of 762: parseStr(s, result.bbSecuritySubType, pos)
    of 200: parseStr(s, result.bbMaturityMonthYear, pos)
    of 541: parseStr(s, result.bbMaturityDate, pos)
    of 201: parseInt(s, result.bbPutOrCall, pos)
    of 224: parseStr(s, result.bbCouponPaymentDate, pos)
    of 225: parseStr(s, result.bbIssueDate, pos)
    of 239: parseStr(s, result.bbRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.bbRepurchaseTerm, pos)
    of 227: parseFloat(s, result.bbRepurchaseRate, pos)
    of 228: parseStr(s, result.bbFactor, pos)
    of 255: parseStr(s, result.bbCreditRating, pos)
    of 543: parseStr(s, result.bbInstrRegistry, pos)
    of 470: parseStr(s, result.bbCountryOfIssue, pos)
    of 471: parseStr(s, result.bbStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.bbLocaleOfIssue, pos)
    of 240: parseStr(s, result.bbRedemptionDate, pos)
    of 202: parseFloat(s, result.bbStrikePrice, pos)
    of 947: parseStr(s, result.bbStrikeCurrency, pos)
    of 206: parseChar(s, result.bbOptAttribute, pos)
    of 231: parseStr(s, result.bbContractMultiplier, pos)
    of 223: parseFloat(s, result.bbCouponRate, pos)
    of 207: parseStr(s, result.bbSecurityExchange, pos)
    of 106: parseStr(s, result.bbIssuer, pos)
    of 348: parseUInt(s, result.bbEncodedIssuerLen, pos)
    of 349: parseStr(s, result.bbEncodedIssuer, pos)
    of 107: parseStr(s, result.bbSecurityDesc, pos)
    of 350: parseUInt(s, result.bbEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.bbEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.bbPool, pos)
    of 667: parseStr(s, result.bbContractSettlMonth, pos)
    of 875: parseInt(s, result.bbCPProgram, pos)
    of 876: parseStr(s, result.bbCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.bbNoEvents, pos)
    of 873: parseStr(s, result.bbDatedDate, pos)
    of 874: parseStr(s, result.bbInterestAccrualDate, pos)
    of 913: parseStr(s, result.bbAgreementDesc, pos)
    of 914: parseStr(s, result.bbAgreementID, pos)
    of 915: parseStr(s, result.bbAgreementDate, pos)
    of 918: parseStr(s, result.bbAgreementCurrency, pos)
    of 788: parseInt(s, result.bbTerminationType, pos)
    of 916: parseStr(s, result.bbStartDate, pos)
    of 917: parseStr(s, result.bbEndDate, pos)
    of 919: parseInt(s, result.bbDeliveryType, pos)
    of 898: parseFloat(s, result.bbMarginRatio, pos)
    of 64: parseStr(s, result.bbSettlDate, pos)
    of 53: parseUInt(s, result.bbQuantity, pos)
    of 854: parseInt(s, result.bbQtyType, pos)
    of 15: parseStr(s, result.bbCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.bbNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.bbNoUnderlyings, pos)
    of 899: parseUInt(s, result.bbMarginExcess, pos)
    of 900: parseUInt(s, result.bbTotalNetValue, pos)
    of 901: parseUInt(s, result.bbCashOutstanding, pos)
    of 768: skipValue(s, pos); parseNoTrdRegTimestamps(s, result.bbNoTrdRegTimestamps, pos)
    of 54: parseChar(s, result.bbSide, pos)
    of 44: parseFloat(s, result.bbPrice, pos)
    of 423: parseInt(s, result.bbPriceType, pos)
    of 159: parseUInt(s, result.bbAccruedInterestAmt, pos)
    of 920: parseUInt(s, result.bbEndAccruedInterestAmt, pos)
    of 921: parseUInt(s, result.bbStartCash, pos)
    of 922: parseUInt(s, result.bbEndCash, pos)
    of 218: parseFloat(s, result.bbSpread, pos)
    of 220: parseStr(s, result.bbBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.bbBenchmarkCurveName, pos)
    of 222: parseStr(s, result.bbBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.bbBenchmarkPrice, pos)
    of 663: parseInt(s, result.bbBenchmarkPriceType, pos)
    of 699: parseStr(s, result.bbBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.bbBenchmarkSecurityIDSource, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.bbNoStipulations, pos)
    of 172: parseInt(s, result.bbSettlDeliveryType, pos)
    of 169: parseInt(s, result.bbStandInstDbType, pos)
    of 170: parseStr(s, result.bbStandInstDbName, pos)
    of 171: parseStr(s, result.bbStandInstDbID, pos)
    of 85: skipValue(s, pos); parseNoDlvyInst(s, result.bbNoDlvyInst, pos)
    of 336: parseStr(s, result.bbTradingSessionID, pos)
    of 625: parseStr(s, result.bbTradingSessionSubID, pos)
    of 716: parseStr(s, result.bbSettlSessID, pos)
    of 717: parseStr(s, result.bbSettlSessSubID, pos)
    of 715: parseStr(s, result.bbClearingBusinessDate, pos)
    of 58: parseStr(s, result.bbText, pos)
    of 354: parseUInt(s, result.bbEncodedTextLen, pos)
    of 355: parseStr(s, result.bbEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtBC(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtBC)
  result.msgType = mtBC
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 935: parseInt(s, result.bcNetworkRequestType, pos)
    of 933: parseStr(s, result.bcNetworkRequestID, pos)
    of 936: skipValue(s, pos); parseNoCompIDs(s, result.bcNoCompIDs, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtBD(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtBD)
  result.msgType = mtBD
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 937: parseInt(s, result.bdNetworkStatusResponseType, pos)
    of 933: parseStr(s, result.bdNetworkRequestID, pos)
    of 932: parseStr(s, result.bdNetworkResponseID, pos)
    of 934: parseStr(s, result.bdLastNetworkResponseID, pos)
    of 936: skipValue(s, pos); parseNoCompIDs(s, result.bdNoCompIDs, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtBE(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtBE)
  result.msgType = mtBE
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 923: parseStr(s, result.beUserRequestID, pos)
    of 924: parseInt(s, result.beUserRequestType, pos)
    of 553: parseStr(s, result.beUsername, pos)
    of 554: parseStr(s, result.bePassword, pos)
    of 925: parseStr(s, result.beNewPassword, pos)
    of 95: parseUInt(s, result.beRawDataLength, pos)
    of 96: parseStr(s, result.beRawData, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtBF(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtBF)
  result.msgType = mtBF
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 923: parseStr(s, result.bfUserRequestID, pos)
    of 553: parseStr(s, result.bfUsername, pos)
    of 926: parseInt(s, result.bfUserStatus, pos)
    of 927: parseStr(s, result.bfUserStatusText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtBG(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtBG)
  result.msgType = mtBG
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 909: parseStr(s, result.bgCollInquiryID, pos)
    of 945: parseInt(s, result.bgCollInquiryStatus, pos)
    of 946: parseInt(s, result.bgCollInquiryResult, pos)
    of 938: skipValue(s, pos); parseNoCollInquiryQualifier(s, result.bgNoCollInquiryQualifier, pos)
    of 911: parseInt(s, result.bgTotNumReports, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.bgNoPartyIDs, pos)
    of 1: parseStr(s, result.bgAccount, pos)
    of 581: parseInt(s, result.bgAccountType, pos)
    of 11: parseStr(s, result.bgClOrdID, pos)
    of 37: parseStr(s, result.bgOrderID, pos)
    of 198: parseStr(s, result.bgSecondaryOrderID, pos)
    of 526: parseStr(s, result.bgSecondaryClOrdID, pos)
    of 124: skipValue(s, pos); parseNoExecs(s, result.bgNoExecs, pos)
    of 897: skipValue(s, pos); parseNoTrades(s, result.bgNoTrades, pos)
    of 55: parseStr(s, result.bgSymbol, pos)
    of 65: parseStr(s, result.bgSymbolSfx, pos)
    of 48: parseStr(s, result.bgSecurityID, pos)
    of 22: parseStr(s, result.bgSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.bgNoSecurityAltID, pos)
    of 460: parseInt(s, result.bgProduct, pos)
    of 461: parseStr(s, result.bgCFICode, pos)
    of 167: parseStr(s, result.bgSecurityType, pos)
    of 762: parseStr(s, result.bgSecuritySubType, pos)
    of 200: parseStr(s, result.bgMaturityMonthYear, pos)
    of 541: parseStr(s, result.bgMaturityDate, pos)
    of 201: parseInt(s, result.bgPutOrCall, pos)
    of 224: parseStr(s, result.bgCouponPaymentDate, pos)
    of 225: parseStr(s, result.bgIssueDate, pos)
    of 239: parseStr(s, result.bgRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.bgRepurchaseTerm, pos)
    of 227: parseFloat(s, result.bgRepurchaseRate, pos)
    of 228: parseStr(s, result.bgFactor, pos)
    of 255: parseStr(s, result.bgCreditRating, pos)
    of 543: parseStr(s, result.bgInstrRegistry, pos)
    of 470: parseStr(s, result.bgCountryOfIssue, pos)
    of 471: parseStr(s, result.bgStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.bgLocaleOfIssue, pos)
    of 240: parseStr(s, result.bgRedemptionDate, pos)
    of 202: parseFloat(s, result.bgStrikePrice, pos)
    of 947: parseStr(s, result.bgStrikeCurrency, pos)
    of 206: parseChar(s, result.bgOptAttribute, pos)
    of 231: parseStr(s, result.bgContractMultiplier, pos)
    of 223: parseFloat(s, result.bgCouponRate, pos)
    of 207: parseStr(s, result.bgSecurityExchange, pos)
    of 106: parseStr(s, result.bgIssuer, pos)
    of 348: parseUInt(s, result.bgEncodedIssuerLen, pos)
    of 349: parseStr(s, result.bgEncodedIssuer, pos)
    of 107: parseStr(s, result.bgSecurityDesc, pos)
    of 350: parseUInt(s, result.bgEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.bgEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.bgPool, pos)
    of 667: parseStr(s, result.bgContractSettlMonth, pos)
    of 875: parseInt(s, result.bgCPProgram, pos)
    of 876: parseStr(s, result.bgCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.bgNoEvents, pos)
    of 873: parseStr(s, result.bgDatedDate, pos)
    of 874: parseStr(s, result.bgInterestAccrualDate, pos)
    of 913: parseStr(s, result.bgAgreementDesc, pos)
    of 914: parseStr(s, result.bgAgreementID, pos)
    of 915: parseStr(s, result.bgAgreementDate, pos)
    of 918: parseStr(s, result.bgAgreementCurrency, pos)
    of 788: parseInt(s, result.bgTerminationType, pos)
    of 916: parseStr(s, result.bgStartDate, pos)
    of 917: parseStr(s, result.bgEndDate, pos)
    of 919: parseInt(s, result.bgDeliveryType, pos)
    of 898: parseFloat(s, result.bgMarginRatio, pos)
    of 64: parseStr(s, result.bgSettlDate, pos)
    of 53: parseUInt(s, result.bgQuantity, pos)
    of 854: parseInt(s, result.bgQtyType, pos)
    of 15: parseStr(s, result.bgCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.bgNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.bgNoUnderlyings, pos)
    of 336: parseStr(s, result.bgTradingSessionID, pos)
    of 625: parseStr(s, result.bgTradingSessionSubID, pos)
    of 716: parseStr(s, result.bgSettlSessID, pos)
    of 717: parseStr(s, result.bgSettlSessSubID, pos)
    of 715: parseStr(s, result.bgClearingBusinessDate, pos)
    of 725: parseInt(s, result.bgResponseTransportType, pos)
    of 726: parseStr(s, result.bgResponseDestination, pos)
    of 58: parseStr(s, result.bgText, pos)
    of 354: parseUInt(s, result.bgEncodedTextLen, pos)
    of 355: parseStr(s, result.bgEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsemtBH(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: mtBH)
  result.msgType = mtBH
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
    of 34: parseUInt(s, result.msgSeqNum, pos)
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
    of 369: parseUInt(s, result.lastMsgSeqNumProcessed, pos)
    of 627: skipValue(s, pos); parseNoHops(s, result.noHops, pos)
    of 859: parseStr(s, result.bhConfirmReqID, pos)
    of 773: parseInt(s, result.bhConfirmType, pos)
    of 73: skipValue(s, pos); parseNoOrders(s, result.bhNoOrders, pos)
    of 70: parseStr(s, result.bhAllocID, pos)
    of 793: parseStr(s, result.bhSecondaryAllocID, pos)
    of 467: parseStr(s, result.bhIndividualAllocID, pos)
    of 60: parseStr(s, result.bhTransactTime, pos)
    of 79: parseStr(s, result.bhAllocAccount, pos)
    of 661: parseInt(s, result.bhAllocAcctIDSource, pos)
    of 798: parseInt(s, result.bhAllocAccountType, pos)
    of 58: parseStr(s, result.bhText, pos)
    of 354: parseUInt(s, result.bhEncodedTextLen, pos)
    of 355: parseStr(s, result.bhEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseFix44*(s: string): Fix44 =
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
      of "n": parsemtNLow(s, result, pos)
      of "o": parsemtOLow(s, result, pos)
      of "p": parsemtPLow(s, result, pos)
      of "q": parsemtQLow(s, result, pos)
      of "r": parsemtRLow(s, result, pos)
      of "s": parsemtSLow(s, result, pos)
      of "t": parsemtTLow(s, result, pos)
      of "u": parsemtULow(s, result, pos)
      of "v": parsemtVLow(s, result, pos)
      of "w": parsemtWLow(s, result, pos)
      of "x": parsemtXLow(s, result, pos)
      of "y": parsemtYLow(s, result, pos)
      of "z": parsemtZLow(s, result, pos)
      of "AA": parsemtAA(s, result, pos)
      of "AB": parsemtAB(s, result, pos)
      of "AC": parsemtAC(s, result, pos)
      of "AD": parsemtAD(s, result, pos)
      of "AE": parsemtAE(s, result, pos)
      of "AF": parsemtAF(s, result, pos)
      of "AG": parsemtAG(s, result, pos)
      of "AH": parsemtAH(s, result, pos)
      of "AI": parsemtAI(s, result, pos)
      of "AJ": parsemtAJ(s, result, pos)
      of "AK": parsemtAK(s, result, pos)
      of "AL": parsemtAL(s, result, pos)
      of "AM": parsemtAM(s, result, pos)
      of "AN": parsemtAN(s, result, pos)
      of "AO": parsemtAO(s, result, pos)
      of "AP": parsemtAP(s, result, pos)
      of "AQ": parsemtAQ(s, result, pos)
      of "AR": parsemtAR(s, result, pos)
      of "AS": parsemtAS(s, result, pos)
      of "AT": parsemtAT(s, result, pos)
      of "AU": parsemtAU(s, result, pos)
      of "AV": parsemtAV(s, result, pos)
      of "AW": parsemtAW(s, result, pos)
      of "AX": parsemtAX(s, result, pos)
      of "AY": parsemtAY(s, result, pos)
      of "AZ": parsemtAZ(s, result, pos)
      of "BA": parsemtBA(s, result, pos)
      of "BB": parsemtBB(s, result, pos)
      of "BC": parsemtBC(s, result, pos)
      of "BD": parsemtBD(s, result, pos)
      of "BE": parsemtBE(s, result, pos)
      of "BF": parsemtBF(s, result, pos)
      of "BG": parsemtBG(s, result, pos)
      of "BH": parsemtBH(s, result, pos)
    else: raise newException(ValueError, "unexpected header field: " & $t)

