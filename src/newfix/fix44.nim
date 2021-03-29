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
    contraTradeQty*: int
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
    orderQty*: int
    cashOrderQty*: int
    orderPercent*: float
    roundingDirection*: char
    roundingModulus*: string
    settlType*: char
    settlDate*: string
    settlDate2*: string
    orderQty2*: int
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
    roundLot*: int
    minTradeVol*: int
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
    minQty*: int
    maxFloor*: int
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
    orderQty*: int
    cashOrderQty*: int
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
    orderQty2*: int
    price2*: float
    positionEffect*: char
    coveredOrUncovered*: int
    maxShow*: int
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
    orderBookingQty*: int
    cumQty*: int
    ordStatus*: char
    workingIndicator*: bool
    leavesQty*: int
    cxlQty*: int
    avgPx*: float
    ordRejReason*: int

  NoExecs* = object
    lastQty*: int
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
    mDEntrySize*: int
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
    minQty*: int
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
    underlyingQty*: int
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
    bidSize*: int
    offerSize*: int
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
    orderQty2*: int
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
    orderQty*: int
    cashOrderQty*: int
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
    legAllocQty*: int
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
    allocQty*: int
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
    underlyingQty*: int
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
    legQty*: int
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
    orderCapacityQty*: int

  NoPositions* = object
    posType*: string
    longQty*: int
    shortQty*: int
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
    AllocationInstruction = "J"
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
    MassQuoteAcknowledgement = "b"
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
    XMLnonFIX = "n"
    RegistrationInstructions = "o"
    RegistrationInstructionsResponse = "p"
    OrderMassCancelRequest = "q"
    OrderMassCancelReport = "r"
    NewOrderCross = "s"
    CrossOrderCancelReplaceRequest = "t"
    CrossOrderCancelRequest = "u"
    SecurityTypeRequest = "v"
    SecurityTypes = "w"
    SecurityListRequest = "x"
    SecurityList = "y"
    DerivativeSecurityListRequest = "z"
    DerivativeSecurityList = "AA"
    NewOrderMultileg = "AB"
    MultilegOrderCancelReplace = "AC"
    TradeCaptureReportRequest = "AD"
    TradeCaptureReport = "AE"
    OrderMassStatusRequest = "AF"
    QuoteRequestReject = "AG"
    RFQRequest = "AH"
    QuoteStatusReport = "AI"
    QuoteResponse = "AJ"
    Confirmation = "AK"
    PositionMaintenanceRequest = "AL"
    PositionMaintenanceReport = "AM"
    RequestForPositions = "AN"
    RequestForPositionsAck = "AO"
    PositionReport = "AP"
    TradeCaptureReportRequestAck = "AQ"
    TradeCaptureReportAck = "AR"
    AllocationReport = "AS"
    AllocationReportAck = "AT"
    ConfirmationAck = "AU"
    SettlementInstructionRequest = "AV"
    AssignmentReport = "AW"
    CollateralRequest = "AX"
    CollateralAssignment = "AY"
    CollateralResponse = "AZ"
    CollateralReport = "BA"
    CollateralInquiry = "BB"
    NetworkCounterpartySystemStatusRequest = "BC"
    NetworkCounterpartySystemStatusResponse = "BD"
    UserRequest = "BE"
    UserResponse = "BF"
    CollateralInquiryAck = "BG"
    ConfirmationRequest = "BH"

  Fix44* = object
    beginString*: string
    bodyLength*: uint
    senderCompID*: string
    targetCompID*: string
    onBehalfOfCompID*: string
    deliverToCompID*: string
    secureDataLen*: uint
    secureData*: string
    msgSeqNum*: uint
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
    lastMsgSeqNumProcessed*: uint
    noHops*: seq[NoHops]
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
      rEncodedTextLen*: uint
      rEncodedText*: string
    of SequenceReset:
      srGapFillFlag*: bool
      srNewSeqNo*: uint
    of Logout:
      lText*: string
      lEncodedTextLen*: uint
      lEncodedText*: string
    of IOI:
      ioiIOIID*: string
      ioiIOITransType*: char
      ioiIOIRefID*: string
      ioiSymbol*: string
      ioiSymbolSfx*: string
      ioiSecurityID*: string
      ioiSecurityIDSource*: string
      ioiNoSecurityAltID*: seq[NoSecurityAltID]
      ioiProduct*: int
      ioiCFICode*: string
      ioiSecurityType*: string
      ioiSecuritySubType*: string
      ioiMaturityMonthYear*: string
      ioiMaturityDate*: string
      ioiPutOrCall*: int
      ioiCouponPaymentDate*: string
      ioiIssueDate*: string
      ioiRepoCollateralSecurityType*: string
      ioiRepurchaseTerm*: int
      ioiRepurchaseRate*: float
      ioiFactor*: string
      ioiCreditRating*: string
      ioiInstrRegistry*: string
      ioiCountryOfIssue*: string
      ioiStateOrProvinceOfIssue*: string
      ioiLocaleOfIssue*: string
      ioiRedemptionDate*: string
      ioiStrikePrice*: float
      ioiStrikeCurrency*: string
      ioiOptAttribute*: char
      ioiContractMultiplier*: string
      ioiCouponRate*: float
      ioiSecurityExchange*: string
      ioiIssuer*: string
      ioiEncodedIssuerLen*: uint
      ioiEncodedIssuer*: string
      ioiSecurityDesc*: string
      ioiEncodedSecurityDescLen*: uint
      ioiEncodedSecurityDesc*: string
      ioiPool*: string
      ioiContractSettlMonth*: string
      ioiCPProgram*: int
      ioiCPRegType*: string
      ioiNoEvents*: seq[NoEvents]
      ioiDatedDate*: string
      ioiInterestAccrualDate*: string
      ioiAgreementDesc*: string
      ioiAgreementID*: string
      ioiAgreementDate*: string
      ioiAgreementCurrency*: string
      ioiTerminationType*: int
      ioiStartDate*: string
      ioiEndDate*: string
      ioiDeliveryType*: int
      ioiMarginRatio*: float
      ioiNoUnderlyings*: seq[NoUnderlyings]
      ioiSide*: char
      ioiQtyType*: int
      ioiOrderQty*: int
      ioiCashOrderQty*: int
      ioiOrderPercent*: float
      ioiRoundingDirection*: char
      ioiRoundingModulus*: string
      ioiIOIQty*: string
      ioiCurrency*: string
      ioiNoStipulations*: seq[NoStipulations]
      ioiNoLegs*: seq[NoLegs]
      ioiPriceType*: int
      ioiPrice*: float
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
      ioiSpread*: float
      ioiBenchmarkCurveCurrency*: string
      ioiBenchmarkCurveName*: string
      ioiBenchmarkCurvePoint*: string
      ioiBenchmarkPrice*: float
      ioiBenchmarkPriceType*: int
      ioiBenchmarkSecurityID*: string
      ioiBenchmarkSecurityIDSource*: string
      ioiYieldType*: string
      ioiYield*: float
      ioiYieldCalcDate*: string
      ioiYieldRedemptionDate*: string
      ioiYieldRedemptionPrice*: float
      ioiYieldRedemptionPriceType*: int
    of Advertisement:
      aAdvId*: string
      aAdvTransType*: string
      aAdvRefID*: string
      aSymbol*: string
      aSymbolSfx*: string
      aSecurityID*: string
      aSecurityIDSource*: string
      aNoSecurityAltID*: seq[NoSecurityAltID]
      aProduct*: int
      aCFICode*: string
      aSecurityType*: string
      aSecuritySubType*: string
      aMaturityMonthYear*: string
      aMaturityDate*: string
      aPutOrCall*: int
      aCouponPaymentDate*: string
      aIssueDate*: string
      aRepoCollateralSecurityType*: string
      aRepurchaseTerm*: int
      aRepurchaseRate*: float
      aFactor*: string
      aCreditRating*: string
      aInstrRegistry*: string
      aCountryOfIssue*: string
      aStateOrProvinceOfIssue*: string
      aLocaleOfIssue*: string
      aRedemptionDate*: string
      aStrikePrice*: float
      aStrikeCurrency*: string
      aOptAttribute*: char
      aContractMultiplier*: string
      aCouponRate*: float
      aSecurityExchange*: string
      aIssuer*: string
      aEncodedIssuerLen*: uint
      aEncodedIssuer*: string
      aSecurityDesc*: string
      aEncodedSecurityDescLen*: uint
      aEncodedSecurityDesc*: string
      aPool*: string
      aContractSettlMonth*: string
      aCPProgram*: int
      aCPRegType*: string
      aNoEvents*: seq[NoEvents]
      aDatedDate*: string
      aInterestAccrualDate*: string
      aNoLegs*: seq[NoLegs]
      aNoUnderlyings*: seq[NoUnderlyings]
      aAdvSide*: char
      aQuantity*: int
      aQtyType*: int
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
      aTradingSessionSubID*: string
    of ExecutionReport:
      erOrderID*: string
      erSecondaryOrderID*: string
      erSecondaryClOrdID*: string
      erSecondaryExecID*: string
      erClOrdID*: string
      erOrigClOrdID*: string
      erClOrdLinkID*: string
      erQuoteRespID*: string
      erOrdStatusReqID*: string
      erMassStatusReqID*: string
      erTotNumReports*: int
      erLastRptRequested*: bool
      erNoPartyIDs*: seq[NoPartyIDs]
      erTradeOriginationDate*: string
      erNoContraBrokers*: seq[NoContraBrokers]
      erListID*: string
      erCrossID*: string
      erOrigCrossID*: string
      erCrossType*: int
      erExecID*: string
      erExecRefID*: string
      erExecType*: char
      erOrdStatus*: char
      erWorkingIndicator*: bool
      erOrdRejReason*: int
      erExecRestatementReason*: int
      erAccount*: string
      erAcctIDSource*: int
      erAccountType*: int
      erDayBookingInst*: char
      erBookingUnit*: char
      erPreallocMethod*: char
      erSettlType*: char
      erSettlDate*: string
      erCashMargin*: char
      erClearingFeeIndicator*: string
      erSymbol*: string
      erSymbolSfx*: string
      erSecurityID*: string
      erSecurityIDSource*: string
      erNoSecurityAltID*: seq[NoSecurityAltID]
      erProduct*: int
      erCFICode*: string
      erSecurityType*: string
      erSecuritySubType*: string
      erMaturityMonthYear*: string
      erMaturityDate*: string
      erPutOrCall*: int
      erCouponPaymentDate*: string
      erIssueDate*: string
      erRepoCollateralSecurityType*: string
      erRepurchaseTerm*: int
      erRepurchaseRate*: float
      erFactor*: string
      erCreditRating*: string
      erInstrRegistry*: string
      erCountryOfIssue*: string
      erStateOrProvinceOfIssue*: string
      erLocaleOfIssue*: string
      erRedemptionDate*: string
      erStrikePrice*: float
      erStrikeCurrency*: string
      erOptAttribute*: char
      erContractMultiplier*: string
      erCouponRate*: float
      erSecurityExchange*: string
      erIssuer*: string
      erEncodedIssuerLen*: uint
      erEncodedIssuer*: string
      erSecurityDesc*: string
      erEncodedSecurityDescLen*: uint
      erEncodedSecurityDesc*: string
      erPool*: string
      erContractSettlMonth*: string
      erCPProgram*: int
      erCPRegType*: string
      erNoEvents*: seq[NoEvents]
      erDatedDate*: string
      erInterestAccrualDate*: string
      erAgreementDesc*: string
      erAgreementID*: string
      erAgreementDate*: string
      erAgreementCurrency*: string
      erTerminationType*: int
      erStartDate*: string
      erEndDate*: string
      erDeliveryType*: int
      erMarginRatio*: float
      erNoUnderlyings*: seq[NoUnderlyings]
      erSide*: char
      erNoStipulations*: seq[NoStipulations]
      erQtyType*: int
      erOrderQty*: int
      erCashOrderQty*: int
      erOrderPercent*: float
      erRoundingDirection*: char
      erRoundingModulus*: string
      erOrdType*: char
      erPriceType*: int
      erPrice*: float
      erStopPx*: float
      erPegOffsetValue*: string
      erPegMoveType*: int
      erPegOffsetType*: int
      erPegLimitType*: int
      erPegRoundDirection*: int
      erPegScope*: int
      erDiscretionInst*: char
      erDiscretionOffsetValue*: string
      erDiscretionMoveType*: int
      erDiscretionOffsetType*: int
      erDiscretionLimitType*: int
      erDiscretionRoundDirection*: int
      erDiscretionScope*: int
      erPeggedPrice*: float
      erDiscretionPrice*: float
      erTargetStrategy*: int
      erTargetStrategyParameters*: string
      erParticipationRate*: float
      erTargetStrategyPerformance*: string
      erCurrency*: string
      erComplianceID*: string
      erSolicitedFlag*: bool
      erTimeInForce*: char
      erEffectiveTime*: string
      erExpireDate*: string
      erExpireTime*: string
      erExecInst*: string
      erOrderCapacity*: char
      erOrderRestrictions*: string
      erCustOrderCapacity*: int
      erLastQty*: int
      erUnderlyingLastQty*: int
      erLastPx*: float
      erUnderlyingLastPx*: float
      erLastParPx*: float
      erLastSpotRate*: float
      erLastForwardPoints*: float
      erLastMkt*: string
      erTradingSessionID*: string
      erTradingSessionSubID*: string
      erTimeBracket*: string
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
      erCommCurrency*: string
      erFundRenewWaiv*: char
      erSpread*: float
      erBenchmarkCurveCurrency*: string
      erBenchmarkCurveName*: string
      erBenchmarkCurvePoint*: string
      erBenchmarkPrice*: float
      erBenchmarkPriceType*: int
      erBenchmarkSecurityID*: string
      erBenchmarkSecurityIDSource*: string
      erYieldType*: string
      erYield*: float
      erYieldCalcDate*: string
      erYieldRedemptionDate*: string
      erYieldRedemptionPrice*: float
      erYieldRedemptionPriceType*: int
      erGrossTradeAmt*: uint
      erNumDaysInterest*: int
      erExDate*: string
      erAccruedInterestRate*: float
      erAccruedInterestAmt*: uint
      erInterestAtMaturity*: uint
      erEndAccruedInterestAmt*: uint
      erStartCash*: uint
      erEndCash*: uint
      erTradedFlatSwitch*: bool
      erBasisFeatureDate*: string
      erBasisFeaturePrice*: float
      erConcession*: uint
      erTotalTakedown*: uint
      erNetMoney*: uint
      erSettlCurrAmt*: uint
      erSettlCurrency*: string
      erSettlCurrFxRate*: string
      erSettlCurrFxRateCalc*: char
      erHandlInst*: char
      erMinQty*: int
      erMaxFloor*: int
      erPositionEffect*: char
      erMaxShow*: int
      erBookingType*: int
      erText*: string
      erEncodedTextLen*: uint
      erEncodedText*: string
      erSettlDate2*: string
      erOrderQty2*: int
      erLastForwardPoints2*: float
      erMultiLegReportingType*: char
      erCancellationRights*: char
      erMoneyLaunderingStatus*: char
      erRegistID*: string
      erDesignation*: string
      erTransBkdTime*: string
      erExecValuationPoint*: string
      erExecPriceType*: char
      erExecPriceAdjustment*: string
      erPriorityIndicator*: int
      erPriceImprovement*: float
      erLastLiquidityInd*: int
      erNoContAmts*: seq[NoContAmts]
      erNoLegs*: seq[NoLegs]
      erCopyMsgIndicator*: bool
      erNoMiscFees*: seq[NoMiscFees]
    of OrderCancelReject:
      ocrOrderID*: string
      ocrSecondaryOrderID*: string
      ocrSecondaryClOrdID*: string
      ocrClOrdID*: string
      ocrClOrdLinkID*: string
      ocrOrigClOrdID*: string
      ocrOrdStatus*: char
      ocrWorkingIndicator*: bool
      ocrOrigOrdModTime*: string
      ocrListID*: string
      ocrAccount*: string
      ocrAcctIDSource*: int
      ocrAccountType*: int
      ocrTradeOriginationDate*: string
      ocrTradeDate*: string
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
      lNextExpectedMsgSeqNum*: uint
      lMaxMessageSize*: uint
      lNoMsgTypes*: seq[NoMsgTypes]
      lTestMessageIndicator*: bool
      lUsername*: string
      lPassword*: string
    of News:
      nOrigTime*: string
      nUrgency*: char
      nHeadline*: string
      nEncodedHeadlineLen*: uint
      nEncodedHeadline*: string
      nNoRoutingIDs*: seq[NoRoutingIDs]
      nNoRelatedSym*: seq[NoRelatedSym]
      nNoLegs*: seq[NoLegs]
      nNoUnderlyings*: seq[NoUnderlyings]
      nNoLinesOfText*: seq[NoLinesOfText]
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
      eNoUnderlyings*: seq[NoUnderlyings]
      eNoLegs*: seq[NoLegs]
      eOrderID*: string
      eClOrdID*: string
      eNoLinesOfText*: seq[NoLinesOfText]
      eRawDataLength*: uint
      eRawData*: string
    of NewOrderSingle:
      nosClOrdID*: string
      nosSecondaryClOrdID*: string
      nosClOrdLinkID*: string
      nosNoPartyIDs*: seq[NoPartyIDs]
      nosTradeOriginationDate*: string
      nosTradeDate*: string
      nosAccount*: string
      nosAcctIDSource*: int
      nosAccountType*: int
      nosDayBookingInst*: char
      nosBookingUnit*: char
      nosPreallocMethod*: char
      nosAllocID*: string
      nosNoAllocs*: seq[NoAllocs]
      nosSettlType*: char
      nosSettlDate*: string
      nosCashMargin*: char
      nosClearingFeeIndicator*: string
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
      nosSecurityIDSource*: string
      nosNoSecurityAltID*: seq[NoSecurityAltID]
      nosProduct*: int
      nosCFICode*: string
      nosSecurityType*: string
      nosSecuritySubType*: string
      nosMaturityMonthYear*: string
      nosMaturityDate*: string
      nosPutOrCall*: int
      nosCouponPaymentDate*: string
      nosIssueDate*: string
      nosRepoCollateralSecurityType*: string
      nosRepurchaseTerm*: int
      nosRepurchaseRate*: float
      nosFactor*: string
      nosCreditRating*: string
      nosInstrRegistry*: string
      nosCountryOfIssue*: string
      nosStateOrProvinceOfIssue*: string
      nosLocaleOfIssue*: string
      nosRedemptionDate*: string
      nosStrikePrice*: float
      nosStrikeCurrency*: string
      nosOptAttribute*: char
      nosContractMultiplier*: string
      nosCouponRate*: float
      nosSecurityExchange*: string
      nosIssuer*: string
      nosEncodedIssuerLen*: uint
      nosEncodedIssuer*: string
      nosSecurityDesc*: string
      nosEncodedSecurityDescLen*: uint
      nosEncodedSecurityDesc*: string
      nosPool*: string
      nosContractSettlMonth*: string
      nosCPProgram*: int
      nosCPRegType*: string
      nosNoEvents*: seq[NoEvents]
      nosDatedDate*: string
      nosInterestAccrualDate*: string
      nosAgreementDesc*: string
      nosAgreementID*: string
      nosAgreementDate*: string
      nosAgreementCurrency*: string
      nosTerminationType*: int
      nosStartDate*: string
      nosEndDate*: string
      nosDeliveryType*: int
      nosMarginRatio*: float
      nosNoUnderlyings*: seq[NoUnderlyings]
      nosPrevClosePx*: float
      nosSide*: char
      nosLocateReqd*: bool
      nosTransactTime*: string
      nosNoStipulations*: seq[NoStipulations]
      nosQtyType*: int
      nosOrderQty*: int
      nosCashOrderQty*: int
      nosOrderPercent*: float
      nosRoundingDirection*: char
      nosRoundingModulus*: string
      nosOrdType*: char
      nosPriceType*: int
      nosPrice*: float
      nosStopPx*: float
      nosSpread*: float
      nosBenchmarkCurveCurrency*: string
      nosBenchmarkCurveName*: string
      nosBenchmarkCurvePoint*: string
      nosBenchmarkPrice*: float
      nosBenchmarkPriceType*: int
      nosBenchmarkSecurityID*: string
      nosBenchmarkSecurityIDSource*: string
      nosYieldType*: string
      nosYield*: float
      nosYieldCalcDate*: string
      nosYieldRedemptionDate*: string
      nosYieldRedemptionPrice*: float
      nosYieldRedemptionPriceType*: int
      nosCurrency*: string
      nosComplianceID*: string
      nosSolicitedFlag*: bool
      nosIOIID*: string
      nosQuoteID*: string
      nosTimeInForce*: char
      nosEffectiveTime*: string
      nosExpireDate*: string
      nosExpireTime*: string
      nosGTBookingInst*: int
      nosCommission*: uint
      nosCommType*: char
      nosCommCurrency*: string
      nosFundRenewWaiv*: char
      nosOrderCapacity*: char
      nosOrderRestrictions*: string
      nosCustOrderCapacity*: int
      nosForexReq*: bool
      nosSettlCurrency*: string
      nosBookingType*: int
      nosText*: string
      nosEncodedTextLen*: uint
      nosEncodedText*: string
      nosSettlDate2*: string
      nosOrderQty2*: int
      nosPrice2*: float
      nosPositionEffect*: char
      nosCoveredOrUncovered*: int
      nosMaxShow*: int
      nosPegOffsetValue*: string
      nosPegMoveType*: int
      nosPegOffsetType*: int
      nosPegLimitType*: int
      nosPegRoundDirection*: int
      nosPegScope*: int
      nosDiscretionInst*: char
      nosDiscretionOffsetValue*: string
      nosDiscretionMoveType*: int
      nosDiscretionOffsetType*: int
      nosDiscretionLimitType*: int
      nosDiscretionRoundDirection*: int
      nosDiscretionScope*: int
      nosTargetStrategy*: int
      nosTargetStrategyParameters*: string
      nosParticipationRate*: float
      nosCancellationRights*: char
      nosMoneyLaunderingStatus*: char
      nosRegistID*: string
      nosDesignation*: string
    of NewOrderList:
      nolListID*: string
      nolBidID*: string
      nolClientBidID*: string
      nolProgRptReqs*: int
      nolBidType*: int
      nolProgPeriodInterval*: int
      nolCancellationRights*: char
      nolMoneyLaunderingStatus*: char
      nolRegistID*: string
      nolListExecInstType*: char
      nolListExecInst*: string
      nolEncodedListExecInstLen*: uint
      nolEncodedListExecInst*: string
      nolAllowableOneSidednessPct*: float
      nolAllowableOneSidednessValue*: uint
      nolAllowableOneSidednessCurr*: string
      nolTotNoOrders*: int
      nolLastFragment*: bool
      nolNoOrders*: seq[NoOrders]
    of OrderCancelRequest:
      ocrOrigClOrdID*: string
      ocrOrderID*: string
      ocrClOrdID*: string
      ocrSecondaryClOrdID*: string
      ocrClOrdLinkID*: string
      ocrListID*: string
      ocrOrigOrdModTime*: string
      ocrAccount*: string
      ocrAcctIDSource*: int
      ocrAccountType*: int
      ocrNoPartyIDs*: seq[NoPartyIDs]
      ocrSymbol*: string
      ocrSymbolSfx*: string
      ocrSecurityID*: string
      ocrSecurityIDSource*: string
      ocrNoSecurityAltID*: seq[NoSecurityAltID]
      ocrProduct*: int
      ocrCFICode*: string
      ocrSecurityType*: string
      ocrSecuritySubType*: string
      ocrMaturityMonthYear*: string
      ocrMaturityDate*: string
      ocrPutOrCall*: int
      ocrCouponPaymentDate*: string
      ocrIssueDate*: string
      ocrRepoCollateralSecurityType*: string
      ocrRepurchaseTerm*: int
      ocrRepurchaseRate*: float
      ocrFactor*: string
      ocrCreditRating*: string
      ocrInstrRegistry*: string
      ocrCountryOfIssue*: string
      ocrStateOrProvinceOfIssue*: string
      ocrLocaleOfIssue*: string
      ocrRedemptionDate*: string
      ocrStrikePrice*: float
      ocrStrikeCurrency*: string
      ocrOptAttribute*: char
      ocrContractMultiplier*: string
      ocrCouponRate*: float
      ocrSecurityExchange*: string
      ocrIssuer*: string
      ocrEncodedIssuerLen*: uint
      ocrEncodedIssuer*: string
      ocrSecurityDesc*: string
      ocrEncodedSecurityDescLen*: uint
      ocrEncodedSecurityDesc*: string
      ocrPool*: string
      ocrContractSettlMonth*: string
      ocrCPProgram*: int
      ocrCPRegType*: string
      ocrNoEvents*: seq[NoEvents]
      ocrDatedDate*: string
      ocrInterestAccrualDate*: string
      ocrAgreementDesc*: string
      ocrAgreementID*: string
      ocrAgreementDate*: string
      ocrAgreementCurrency*: string
      ocrTerminationType*: int
      ocrStartDate*: string
      ocrEndDate*: string
      ocrDeliveryType*: int
      ocrMarginRatio*: float
      ocrNoUnderlyings*: seq[NoUnderlyings]
      ocrSide*: char
      ocrTransactTime*: string
      ocrOrderQty*: int
      ocrCashOrderQty*: int
      ocrOrderPercent*: float
      ocrRoundingDirection*: char
      ocrRoundingModulus*: string
      ocrComplianceID*: string
      ocrText*: string
      ocrEncodedTextLen*: uint
      ocrEncodedText*: string
    of OrderCancelReplaceRequest:
      ocrrOrderID*: string
      ocrrNoPartyIDs*: seq[NoPartyIDs]
      ocrrTradeOriginationDate*: string
      ocrrTradeDate*: string
      ocrrOrigClOrdID*: string
      ocrrClOrdID*: string
      ocrrSecondaryClOrdID*: string
      ocrrClOrdLinkID*: string
      ocrrListID*: string
      ocrrOrigOrdModTime*: string
      ocrrAccount*: string
      ocrrAcctIDSource*: int
      ocrrAccountType*: int
      ocrrDayBookingInst*: char
      ocrrBookingUnit*: char
      ocrrPreallocMethod*: char
      ocrrAllocID*: string
      ocrrNoAllocs*: seq[NoAllocs]
      ocrrSettlType*: char
      ocrrSettlDate*: string
      ocrrCashMargin*: char
      ocrrClearingFeeIndicator*: string
      ocrrHandlInst*: char
      ocrrExecInst*: string
      ocrrMinQty*: int
      ocrrMaxFloor*: int
      ocrrExDestination*: string
      ocrrNoTradingSessions*: seq[NoTradingSessions]
      ocrrSymbol*: string
      ocrrSymbolSfx*: string
      ocrrSecurityID*: string
      ocrrSecurityIDSource*: string
      ocrrNoSecurityAltID*: seq[NoSecurityAltID]
      ocrrProduct*: int
      ocrrCFICode*: string
      ocrrSecurityType*: string
      ocrrSecuritySubType*: string
      ocrrMaturityMonthYear*: string
      ocrrMaturityDate*: string
      ocrrPutOrCall*: int
      ocrrCouponPaymentDate*: string
      ocrrIssueDate*: string
      ocrrRepoCollateralSecurityType*: string
      ocrrRepurchaseTerm*: int
      ocrrRepurchaseRate*: float
      ocrrFactor*: string
      ocrrCreditRating*: string
      ocrrInstrRegistry*: string
      ocrrCountryOfIssue*: string
      ocrrStateOrProvinceOfIssue*: string
      ocrrLocaleOfIssue*: string
      ocrrRedemptionDate*: string
      ocrrStrikePrice*: float
      ocrrStrikeCurrency*: string
      ocrrOptAttribute*: char
      ocrrContractMultiplier*: string
      ocrrCouponRate*: float
      ocrrSecurityExchange*: string
      ocrrIssuer*: string
      ocrrEncodedIssuerLen*: uint
      ocrrEncodedIssuer*: string
      ocrrSecurityDesc*: string
      ocrrEncodedSecurityDescLen*: uint
      ocrrEncodedSecurityDesc*: string
      ocrrPool*: string
      ocrrContractSettlMonth*: string
      ocrrCPProgram*: int
      ocrrCPRegType*: string
      ocrrNoEvents*: seq[NoEvents]
      ocrrDatedDate*: string
      ocrrInterestAccrualDate*: string
      ocrrAgreementDesc*: string
      ocrrAgreementID*: string
      ocrrAgreementDate*: string
      ocrrAgreementCurrency*: string
      ocrrTerminationType*: int
      ocrrStartDate*: string
      ocrrEndDate*: string
      ocrrDeliveryType*: int
      ocrrMarginRatio*: float
      ocrrNoUnderlyings*: seq[NoUnderlyings]
      ocrrSide*: char
      ocrrTransactTime*: string
      ocrrQtyType*: int
      ocrrOrderQty*: int
      ocrrCashOrderQty*: int
      ocrrOrderPercent*: float
      ocrrRoundingDirection*: char
      ocrrRoundingModulus*: string
      ocrrOrdType*: char
      ocrrPriceType*: int
      ocrrPrice*: float
      ocrrStopPx*: float
      ocrrSpread*: float
      ocrrBenchmarkCurveCurrency*: string
      ocrrBenchmarkCurveName*: string
      ocrrBenchmarkCurvePoint*: string
      ocrrBenchmarkPrice*: float
      ocrrBenchmarkPriceType*: int
      ocrrBenchmarkSecurityID*: string
      ocrrBenchmarkSecurityIDSource*: string
      ocrrYieldType*: string
      ocrrYield*: float
      ocrrYieldCalcDate*: string
      ocrrYieldRedemptionDate*: string
      ocrrYieldRedemptionPrice*: float
      ocrrYieldRedemptionPriceType*: int
      ocrrPegOffsetValue*: string
      ocrrPegMoveType*: int
      ocrrPegOffsetType*: int
      ocrrPegLimitType*: int
      ocrrPegRoundDirection*: int
      ocrrPegScope*: int
      ocrrDiscretionInst*: char
      ocrrDiscretionOffsetValue*: string
      ocrrDiscretionMoveType*: int
      ocrrDiscretionOffsetType*: int
      ocrrDiscretionLimitType*: int
      ocrrDiscretionRoundDirection*: int
      ocrrDiscretionScope*: int
      ocrrTargetStrategy*: int
      ocrrTargetStrategyParameters*: string
      ocrrParticipationRate*: float
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
      ocrrCommCurrency*: string
      ocrrFundRenewWaiv*: char
      ocrrOrderCapacity*: char
      ocrrOrderRestrictions*: string
      ocrrCustOrderCapacity*: int
      ocrrForexReq*: bool
      ocrrSettlCurrency*: string
      ocrrBookingType*: int
      ocrrText*: string
      ocrrEncodedTextLen*: uint
      ocrrEncodedText*: string
      ocrrSettlDate2*: string
      ocrrOrderQty2*: int
      ocrrPrice2*: float
      ocrrPositionEffect*: char
      ocrrCoveredOrUncovered*: int
      ocrrMaxShow*: int
      ocrrLocateReqd*: bool
      ocrrCancellationRights*: char
      ocrrMoneyLaunderingStatus*: char
      ocrrRegistID*: string
      ocrrDesignation*: string
    of OrderStatusRequest:
      osrOrderID*: string
      osrClOrdID*: string
      osrSecondaryClOrdID*: string
      osrClOrdLinkID*: string
      osrNoPartyIDs*: seq[NoPartyIDs]
      osrOrdStatusReqID*: string
      osrAccount*: string
      osrAcctIDSource*: int
      osrSymbol*: string
      osrSymbolSfx*: string
      osrSecurityID*: string
      osrSecurityIDSource*: string
      osrNoSecurityAltID*: seq[NoSecurityAltID]
      osrProduct*: int
      osrCFICode*: string
      osrSecurityType*: string
      osrSecuritySubType*: string
      osrMaturityMonthYear*: string
      osrMaturityDate*: string
      osrPutOrCall*: int
      osrCouponPaymentDate*: string
      osrIssueDate*: string
      osrRepoCollateralSecurityType*: string
      osrRepurchaseTerm*: int
      osrRepurchaseRate*: float
      osrFactor*: string
      osrCreditRating*: string
      osrInstrRegistry*: string
      osrCountryOfIssue*: string
      osrStateOrProvinceOfIssue*: string
      osrLocaleOfIssue*: string
      osrRedemptionDate*: string
      osrStrikePrice*: float
      osrStrikeCurrency*: string
      osrOptAttribute*: char
      osrContractMultiplier*: string
      osrCouponRate*: float
      osrSecurityExchange*: string
      osrIssuer*: string
      osrEncodedIssuerLen*: uint
      osrEncodedIssuer*: string
      osrSecurityDesc*: string
      osrEncodedSecurityDescLen*: uint
      osrEncodedSecurityDesc*: string
      osrPool*: string
      osrContractSettlMonth*: string
      osrCPProgram*: int
      osrCPRegType*: string
      osrNoEvents*: seq[NoEvents]
      osrDatedDate*: string
      osrInterestAccrualDate*: string
      osrAgreementDesc*: string
      osrAgreementID*: string
      osrAgreementDate*: string
      osrAgreementCurrency*: string
      osrTerminationType*: int
      osrStartDate*: string
      osrEndDate*: string
      osrDeliveryType*: int
      osrMarginRatio*: float
      osrNoUnderlyings*: seq[NoUnderlyings]
      osrSide*: char
    of AllocationInstruction:
      aiAllocID*: string
      aiAllocTransType*: char
      aiAllocType*: int
      aiSecondaryAllocID*: string
      aiRefAllocID*: string
      aiAllocCancReplaceReason*: int
      aiAllocIntermedReqType*: int
      aiAllocLinkID*: string
      aiAllocLinkType*: int
      aiBookingRefID*: string
      aiAllocNoOrdersType*: int
      aiNoOrders*: seq[NoOrders]
      aiNoExecs*: seq[NoExecs]
      aiPreviouslyReported*: bool
      aiReversalIndicator*: bool
      aiMatchType*: string
      aiSide*: char
      aiSymbol*: string
      aiSymbolSfx*: string
      aiSecurityID*: string
      aiSecurityIDSource*: string
      aiNoSecurityAltID*: seq[NoSecurityAltID]
      aiProduct*: int
      aiCFICode*: string
      aiSecurityType*: string
      aiSecuritySubType*: string
      aiMaturityMonthYear*: string
      aiMaturityDate*: string
      aiPutOrCall*: int
      aiCouponPaymentDate*: string
      aiIssueDate*: string
      aiRepoCollateralSecurityType*: string
      aiRepurchaseTerm*: int
      aiRepurchaseRate*: float
      aiFactor*: string
      aiCreditRating*: string
      aiInstrRegistry*: string
      aiCountryOfIssue*: string
      aiStateOrProvinceOfIssue*: string
      aiLocaleOfIssue*: string
      aiRedemptionDate*: string
      aiStrikePrice*: float
      aiStrikeCurrency*: string
      aiOptAttribute*: char
      aiContractMultiplier*: string
      aiCouponRate*: float
      aiSecurityExchange*: string
      aiIssuer*: string
      aiEncodedIssuerLen*: uint
      aiEncodedIssuer*: string
      aiSecurityDesc*: string
      aiEncodedSecurityDescLen*: uint
      aiEncodedSecurityDesc*: string
      aiPool*: string
      aiContractSettlMonth*: string
      aiCPProgram*: int
      aiCPRegType*: string
      aiNoEvents*: seq[NoEvents]
      aiDatedDate*: string
      aiInterestAccrualDate*: string
      aiDeliveryForm*: int
      aiPctAtRisk*: float
      aiNoInstrAttrib*: seq[NoInstrAttrib]
      aiAgreementDesc*: string
      aiAgreementID*: string
      aiAgreementDate*: string
      aiAgreementCurrency*: string
      aiTerminationType*: int
      aiStartDate*: string
      aiEndDate*: string
      aiDeliveryType*: int
      aiMarginRatio*: float
      aiNoUnderlyings*: seq[NoUnderlyings]
      aiNoLegs*: seq[NoLegs]
      aiQuantity*: int
      aiQtyType*: int
      aiLastMkt*: string
      aiTradeOriginationDate*: string
      aiTradingSessionID*: string
      aiTradingSessionSubID*: string
      aiPriceType*: int
      aiAvgPx*: float
      aiAvgParPx*: float
      aiSpread*: float
      aiBenchmarkCurveCurrency*: string
      aiBenchmarkCurveName*: string
      aiBenchmarkCurvePoint*: string
      aiBenchmarkPrice*: float
      aiBenchmarkPriceType*: int
      aiBenchmarkSecurityID*: string
      aiBenchmarkSecurityIDSource*: string
      aiCurrency*: string
      aiAvgPxPrecision*: int
      aiNoPartyIDs*: seq[NoPartyIDs]
      aiTradeDate*: string
      aiTransactTime*: string
      aiSettlType*: char
      aiSettlDate*: string
      aiBookingType*: int
      aiGrossTradeAmt*: uint
      aiConcession*: uint
      aiTotalTakedown*: uint
      aiNetMoney*: uint
      aiPositionEffect*: char
      aiAutoAcceptIndicator*: bool
      aiText*: string
      aiEncodedTextLen*: uint
      aiEncodedText*: string
      aiNumDaysInterest*: int
      aiAccruedInterestRate*: float
      aiAccruedInterestAmt*: uint
      aiTotalAccruedInterestAmt*: uint
      aiInterestAtMaturity*: uint
      aiEndAccruedInterestAmt*: uint
      aiStartCash*: uint
      aiEndCash*: uint
      aiLegalConfirm*: bool
      aiNoStipulations*: seq[NoStipulations]
      aiYieldType*: string
      aiYield*: float
      aiYieldCalcDate*: string
      aiYieldRedemptionDate*: string
      aiYieldRedemptionPrice*: float
      aiYieldRedemptionPriceType*: int
      aiTotNoAllocs*: int
      aiLastFragment*: bool
      aiNoAllocs*: seq[NoAllocs]
    of ListCancelRequest:
      lcrListID*: string
      lcrTransactTime*: string
      lcrTradeOriginationDate*: string
      lcrTradeDate*: string
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
      lsLastFragment*: bool
      lsNoOrders*: seq[NoOrders]
    of AllocationInstructionAck:
      aiaAllocID*: string
      aiaNoPartyIDs*: seq[NoPartyIDs]
      aiaSecondaryAllocID*: string
      aiaTradeDate*: string
      aiaTransactTime*: string
      aiaAllocStatus*: int
      aiaAllocRejCode*: int
      aiaAllocType*: int
      aiaAllocIntermedReqType*: int
      aiaMatchStatus*: char
      aiaProduct*: int
      aiaSecurityType*: string
      aiaText*: string
      aiaEncodedTextLen*: uint
      aiaEncodedText*: string
      aiaNoAllocs*: seq[NoAllocs]
    of DontKnowTrade:
      dktOrderID*: string
      dktSecondaryOrderID*: string
      dktExecID*: string
      dktDKReason*: char
      dktSymbol*: string
      dktSymbolSfx*: string
      dktSecurityID*: string
      dktSecurityIDSource*: string
      dktNoSecurityAltID*: seq[NoSecurityAltID]
      dktProduct*: int
      dktCFICode*: string
      dktSecurityType*: string
      dktSecuritySubType*: string
      dktMaturityMonthYear*: string
      dktMaturityDate*: string
      dktPutOrCall*: int
      dktCouponPaymentDate*: string
      dktIssueDate*: string
      dktRepoCollateralSecurityType*: string
      dktRepurchaseTerm*: int
      dktRepurchaseRate*: float
      dktFactor*: string
      dktCreditRating*: string
      dktInstrRegistry*: string
      dktCountryOfIssue*: string
      dktStateOrProvinceOfIssue*: string
      dktLocaleOfIssue*: string
      dktRedemptionDate*: string
      dktStrikePrice*: float
      dktStrikeCurrency*: string
      dktOptAttribute*: char
      dktContractMultiplier*: string
      dktCouponRate*: float
      dktSecurityExchange*: string
      dktIssuer*: string
      dktEncodedIssuerLen*: uint
      dktEncodedIssuer*: string
      dktSecurityDesc*: string
      dktEncodedSecurityDescLen*: uint
      dktEncodedSecurityDesc*: string
      dktPool*: string
      dktContractSettlMonth*: string
      dktCPProgram*: int
      dktCPRegType*: string
      dktNoEvents*: seq[NoEvents]
      dktDatedDate*: string
      dktInterestAccrualDate*: string
      dktNoUnderlyings*: seq[NoUnderlyings]
      dktNoLegs*: seq[NoLegs]
      dktSide*: char
      dktOrderQty*: int
      dktCashOrderQty*: int
      dktOrderPercent*: float
      dktRoundingDirection*: char
      dktRoundingModulus*: string
      dktLastQty*: int
      dktLastPx*: float
      dktText*: string
      dktEncodedTextLen*: uint
      dktEncodedText*: string
    of QuoteRequest:
      qrQuoteReqID*: string
      qrRFQReqID*: string
      qrClOrdID*: string
      qrOrderCapacity*: char
      qrNoRelatedSym*: seq[NoRelatedSym]
      qrText*: string
      qrEncodedTextLen*: uint
      qrEncodedText*: string
    of Quote:
      qQuoteReqID*: string
      qQuoteID*: string
      qQuoteRespID*: string
      qQuoteType*: int
      qNoQuoteQualifiers*: seq[NoQuoteQualifiers]
      qQuoteResponseLevel*: int
      qNoPartyIDs*: seq[NoPartyIDs]
      qTradingSessionID*: string
      qTradingSessionSubID*: string
      qSymbol*: string
      qSymbolSfx*: string
      qSecurityID*: string
      qSecurityIDSource*: string
      qNoSecurityAltID*: seq[NoSecurityAltID]
      qProduct*: int
      qCFICode*: string
      qSecurityType*: string
      qSecuritySubType*: string
      qMaturityMonthYear*: string
      qMaturityDate*: string
      qPutOrCall*: int
      qCouponPaymentDate*: string
      qIssueDate*: string
      qRepoCollateralSecurityType*: string
      qRepurchaseTerm*: int
      qRepurchaseRate*: float
      qFactor*: string
      qCreditRating*: string
      qInstrRegistry*: string
      qCountryOfIssue*: string
      qStateOrProvinceOfIssue*: string
      qLocaleOfIssue*: string
      qRedemptionDate*: string
      qStrikePrice*: float
      qStrikeCurrency*: string
      qOptAttribute*: char
      qContractMultiplier*: string
      qCouponRate*: float
      qSecurityExchange*: string
      qIssuer*: string
      qEncodedIssuerLen*: uint
      qEncodedIssuer*: string
      qSecurityDesc*: string
      qEncodedSecurityDescLen*: uint
      qEncodedSecurityDesc*: string
      qPool*: string
      qContractSettlMonth*: string
      qCPProgram*: int
      qCPRegType*: string
      qNoEvents*: seq[NoEvents]
      qDatedDate*: string
      qInterestAccrualDate*: string
      qAgreementDesc*: string
      qAgreementID*: string
      qAgreementDate*: string
      qAgreementCurrency*: string
      qTerminationType*: int
      qStartDate*: string
      qEndDate*: string
      qDeliveryType*: int
      qMarginRatio*: float
      qNoUnderlyings*: seq[NoUnderlyings]
      qSide*: char
      qOrderQty*: int
      qCashOrderQty*: int
      qOrderPercent*: float
      qRoundingDirection*: char
      qRoundingModulus*: string
      qSettlType*: char
      qSettlDate*: string
      qSettlDate2*: string
      qOrderQty2*: int
      qCurrency*: string
      qNoStipulations*: seq[NoStipulations]
      qAccount*: string
      qAcctIDSource*: int
      qAccountType*: int
      qNoLegs*: seq[NoLegs]
      qBidPx*: float
      qOfferPx*: float
      qMktBidPx*: float
      qMktOfferPx*: float
      qMinBidSize*: int
      qBidSize*: int
      qMinOfferSize*: int
      qOfferSize*: int
      qValidUntilTime*: string
      qBidSpotRate*: float
      qOfferSpotRate*: float
      qBidForwardPoints*: float
      qOfferForwardPoints*: float
      qMidPx*: float
      qBidYield*: float
      qMidYield*: float
      qOfferYield*: float
      qTransactTime*: string
      qOrdType*: char
      qBidForwardPoints2*: float
      qOfferForwardPoints2*: float
      qSettlCurrBidFxRate*: string
      qSettlCurrOfferFxRate*: string
      qSettlCurrFxRateCalc*: char
      qCommType*: char
      qCommission*: uint
      qCustOrderCapacity*: int
      qExDestination*: string
      qOrderCapacity*: char
      qPriceType*: int
      qSpread*: float
      qBenchmarkCurveCurrency*: string
      qBenchmarkCurveName*: string
      qBenchmarkCurvePoint*: string
      qBenchmarkPrice*: float
      qBenchmarkPriceType*: int
      qBenchmarkSecurityID*: string
      qBenchmarkSecurityIDSource*: string
      qYieldType*: string
      qYield*: float
      qYieldCalcDate*: string
      qYieldRedemptionDate*: string
      qYieldRedemptionPrice*: float
      qYieldRedemptionPriceType*: int
      qText*: string
      qEncodedTextLen*: uint
      qEncodedText*: string
    of SettlementInstructions:
      siSettlInstMsgID*: string
      siSettlInstReqID*: string
      siSettlInstMode*: char
      siSettlInstReqRejCode*: int
      siText*: string
      siEncodedTextLen*: uint
      siEncodedText*: string
      siClOrdID*: string
      siTransactTime*: string
      siNoSettlInst*: seq[NoSettlInst]
    of MarketDataRequest:
      mdrMDReqID*: string
      mdrSubscriptionRequestType*: char
      mdrMarketDepth*: int
      mdrMDUpdateType*: int
      mdrAggregatedBook*: bool
      mdrOpenCloseSettlFlag*: string
      mdrScope*: string
      mdrMDImplicitDelete*: bool
      mdrNoMDEntryTypes*: seq[NoMDEntryTypes]
      mdrNoRelatedSym*: seq[NoRelatedSym]
      mdrNoTradingSessions*: seq[NoTradingSessions]
      mdrApplQueueAction*: int
      mdrApplQueueMax*: int
    of MarketDataSnapshotFullRefresh:
      mdsfrMDReqID*: string
      mdsfrSymbol*: string
      mdsfrSymbolSfx*: string
      mdsfrSecurityID*: string
      mdsfrSecurityIDSource*: string
      mdsfrNoSecurityAltID*: seq[NoSecurityAltID]
      mdsfrProduct*: int
      mdsfrCFICode*: string
      mdsfrSecurityType*: string
      mdsfrSecuritySubType*: string
      mdsfrMaturityMonthYear*: string
      mdsfrMaturityDate*: string
      mdsfrPutOrCall*: int
      mdsfrCouponPaymentDate*: string
      mdsfrIssueDate*: string
      mdsfrRepoCollateralSecurityType*: string
      mdsfrRepurchaseTerm*: int
      mdsfrRepurchaseRate*: float
      mdsfrFactor*: string
      mdsfrCreditRating*: string
      mdsfrInstrRegistry*: string
      mdsfrCountryOfIssue*: string
      mdsfrStateOrProvinceOfIssue*: string
      mdsfrLocaleOfIssue*: string
      mdsfrRedemptionDate*: string
      mdsfrStrikePrice*: float
      mdsfrStrikeCurrency*: string
      mdsfrOptAttribute*: char
      mdsfrContractMultiplier*: string
      mdsfrCouponRate*: float
      mdsfrSecurityExchange*: string
      mdsfrIssuer*: string
      mdsfrEncodedIssuerLen*: uint
      mdsfrEncodedIssuer*: string
      mdsfrSecurityDesc*: string
      mdsfrEncodedSecurityDescLen*: uint
      mdsfrEncodedSecurityDesc*: string
      mdsfrPool*: string
      mdsfrContractSettlMonth*: string
      mdsfrCPProgram*: int
      mdsfrCPRegType*: string
      mdsfrNoEvents*: seq[NoEvents]
      mdsfrDatedDate*: string
      mdsfrInterestAccrualDate*: string
      mdsfrNoUnderlyings*: seq[NoUnderlyings]
      mdsfrNoLegs*: seq[NoLegs]
      mdsfrFinancialStatus*: string
      mdsfrCorporateAction*: string
      mdsfrNetChgPrevDay*: float
      mdsfrNoMDEntries*: seq[NoMDEntries]
      mdsfrApplQueueDepth*: int
      mdsfrApplQueueResolution*: int
    of MarketDataIncrementalRefresh:
      mdirMDReqID*: string
      mdirNoMDEntries*: seq[NoMDEntries]
      mdirApplQueueDepth*: int
      mdirApplQueueResolution*: int
    of MarketDataRequestReject:
      mdrrMDReqID*: string
      mdrrMDReqRejReason*: char
      mdrrNoAltMDSource*: seq[NoAltMDSource]
      mdrrText*: string
      mdrrEncodedTextLen*: uint
      mdrrEncodedText*: string
    of QuoteCancel:
      qcQuoteReqID*: string
      qcQuoteID*: string
      qcQuoteCancelType*: int
      qcQuoteResponseLevel*: int
      qcNoPartyIDs*: seq[NoPartyIDs]
      qcAccount*: string
      qcAcctIDSource*: int
      qcAccountType*: int
      qcTradingSessionID*: string
      qcTradingSessionSubID*: string
      qcNoQuoteEntries*: seq[NoQuoteEntries]
    of QuoteStatusRequest:
      qsrQuoteStatusReqID*: string
      qsrQuoteID*: string
      qsrSymbol*: string
      qsrSymbolSfx*: string
      qsrSecurityID*: string
      qsrSecurityIDSource*: string
      qsrNoSecurityAltID*: seq[NoSecurityAltID]
      qsrProduct*: int
      qsrCFICode*: string
      qsrSecurityType*: string
      qsrSecuritySubType*: string
      qsrMaturityMonthYear*: string
      qsrMaturityDate*: string
      qsrPutOrCall*: int
      qsrCouponPaymentDate*: string
      qsrIssueDate*: string
      qsrRepoCollateralSecurityType*: string
      qsrRepurchaseTerm*: int
      qsrRepurchaseRate*: float
      qsrFactor*: string
      qsrCreditRating*: string
      qsrInstrRegistry*: string
      qsrCountryOfIssue*: string
      qsrStateOrProvinceOfIssue*: string
      qsrLocaleOfIssue*: string
      qsrRedemptionDate*: string
      qsrStrikePrice*: float
      qsrStrikeCurrency*: string
      qsrOptAttribute*: char
      qsrContractMultiplier*: string
      qsrCouponRate*: float
      qsrSecurityExchange*: string
      qsrIssuer*: string
      qsrEncodedIssuerLen*: uint
      qsrEncodedIssuer*: string
      qsrSecurityDesc*: string
      qsrEncodedSecurityDescLen*: uint
      qsrEncodedSecurityDesc*: string
      qsrPool*: string
      qsrContractSettlMonth*: string
      qsrCPProgram*: int
      qsrCPRegType*: string
      qsrNoEvents*: seq[NoEvents]
      qsrDatedDate*: string
      qsrInterestAccrualDate*: string
      qsrAgreementDesc*: string
      qsrAgreementID*: string
      qsrAgreementDate*: string
      qsrAgreementCurrency*: string
      qsrTerminationType*: int
      qsrStartDate*: string
      qsrEndDate*: string
      qsrDeliveryType*: int
      qsrMarginRatio*: float
      qsrNoUnderlyings*: seq[NoUnderlyings]
      qsrNoLegs*: seq[NoLegs]
      qsrNoPartyIDs*: seq[NoPartyIDs]
      qsrAccount*: string
      qsrAcctIDSource*: int
      qsrAccountType*: int
      qsrTradingSessionID*: string
      qsrTradingSessionSubID*: string
      qsrSubscriptionRequestType*: char
    of MassQuoteAcknowledgement:
      mqaQuoteReqID*: string
      mqaQuoteID*: string
      mqaQuoteStatus*: int
      mqaQuoteRejectReason*: int
      mqaQuoteResponseLevel*: int
      mqaQuoteType*: int
      mqaNoPartyIDs*: seq[NoPartyIDs]
      mqaAccount*: string
      mqaAcctIDSource*: int
      mqaAccountType*: int
      mqaText*: string
      mqaEncodedTextLen*: uint
      mqaEncodedText*: string
      mqaNoQuoteSets*: seq[NoQuoteSets]
    of SecurityDefinitionRequest:
      sdrSecurityReqID*: string
      sdrSecurityRequestType*: int
      sdrSymbol*: string
      sdrSymbolSfx*: string
      sdrSecurityID*: string
      sdrSecurityIDSource*: string
      sdrNoSecurityAltID*: seq[NoSecurityAltID]
      sdrProduct*: int
      sdrCFICode*: string
      sdrSecurityType*: string
      sdrSecuritySubType*: string
      sdrMaturityMonthYear*: string
      sdrMaturityDate*: string
      sdrPutOrCall*: int
      sdrCouponPaymentDate*: string
      sdrIssueDate*: string
      sdrRepoCollateralSecurityType*: string
      sdrRepurchaseTerm*: int
      sdrRepurchaseRate*: float
      sdrFactor*: string
      sdrCreditRating*: string
      sdrInstrRegistry*: string
      sdrCountryOfIssue*: string
      sdrStateOrProvinceOfIssue*: string
      sdrLocaleOfIssue*: string
      sdrRedemptionDate*: string
      sdrStrikePrice*: float
      sdrStrikeCurrency*: string
      sdrOptAttribute*: char
      sdrContractMultiplier*: string
      sdrCouponRate*: float
      sdrSecurityExchange*: string
      sdrIssuer*: string
      sdrEncodedIssuerLen*: uint
      sdrEncodedIssuer*: string
      sdrSecurityDesc*: string
      sdrEncodedSecurityDescLen*: uint
      sdrEncodedSecurityDesc*: string
      sdrPool*: string
      sdrContractSettlMonth*: string
      sdrCPProgram*: int
      sdrCPRegType*: string
      sdrNoEvents*: seq[NoEvents]
      sdrDatedDate*: string
      sdrInterestAccrualDate*: string
      sdrDeliveryForm*: int
      sdrPctAtRisk*: float
      sdrNoInstrAttrib*: seq[NoInstrAttrib]
      sdrNoUnderlyings*: seq[NoUnderlyings]
      sdrCurrency*: string
      sdrText*: string
      sdrEncodedTextLen*: uint
      sdrEncodedText*: string
      sdrTradingSessionID*: string
      sdrTradingSessionSubID*: string
      sdrNoLegs*: seq[NoLegs]
      sdrExpirationCycle*: int
      sdrSubscriptionRequestType*: char
    of SecurityDefinition:
      sdSecurityReqID*: string
      sdSecurityResponseID*: string
      sdSecurityResponseType*: int
      sdSymbol*: string
      sdSymbolSfx*: string
      sdSecurityID*: string
      sdSecurityIDSource*: string
      sdNoSecurityAltID*: seq[NoSecurityAltID]
      sdProduct*: int
      sdCFICode*: string
      sdSecurityType*: string
      sdSecuritySubType*: string
      sdMaturityMonthYear*: string
      sdMaturityDate*: string
      sdPutOrCall*: int
      sdCouponPaymentDate*: string
      sdIssueDate*: string
      sdRepoCollateralSecurityType*: string
      sdRepurchaseTerm*: int
      sdRepurchaseRate*: float
      sdFactor*: string
      sdCreditRating*: string
      sdInstrRegistry*: string
      sdCountryOfIssue*: string
      sdStateOrProvinceOfIssue*: string
      sdLocaleOfIssue*: string
      sdRedemptionDate*: string
      sdStrikePrice*: float
      sdStrikeCurrency*: string
      sdOptAttribute*: char
      sdContractMultiplier*: string
      sdCouponRate*: float
      sdSecurityExchange*: string
      sdIssuer*: string
      sdEncodedIssuerLen*: uint
      sdEncodedIssuer*: string
      sdSecurityDesc*: string
      sdEncodedSecurityDescLen*: uint
      sdEncodedSecurityDesc*: string
      sdPool*: string
      sdContractSettlMonth*: string
      sdCPProgram*: int
      sdCPRegType*: string
      sdNoEvents*: seq[NoEvents]
      sdDatedDate*: string
      sdInterestAccrualDate*: string
      sdDeliveryForm*: int
      sdPctAtRisk*: float
      sdNoInstrAttrib*: seq[NoInstrAttrib]
      sdNoUnderlyings*: seq[NoUnderlyings]
      sdCurrency*: string
      sdTradingSessionID*: string
      sdTradingSessionSubID*: string
      sdText*: string
      sdEncodedTextLen*: uint
      sdEncodedText*: string
      sdNoLegs*: seq[NoLegs]
      sdExpirationCycle*: int
      sdRoundLot*: int
      sdMinTradeVol*: int
    of SecurityStatusRequest:
      ssrSecurityStatusReqID*: string
      ssrSymbol*: string
      ssrSymbolSfx*: string
      ssrSecurityID*: string
      ssrSecurityIDSource*: string
      ssrNoSecurityAltID*: seq[NoSecurityAltID]
      ssrProduct*: int
      ssrCFICode*: string
      ssrSecurityType*: string
      ssrSecuritySubType*: string
      ssrMaturityMonthYear*: string
      ssrMaturityDate*: string
      ssrPutOrCall*: int
      ssrCouponPaymentDate*: string
      ssrIssueDate*: string
      ssrRepoCollateralSecurityType*: string
      ssrRepurchaseTerm*: int
      ssrRepurchaseRate*: float
      ssrFactor*: string
      ssrCreditRating*: string
      ssrInstrRegistry*: string
      ssrCountryOfIssue*: string
      ssrStateOrProvinceOfIssue*: string
      ssrLocaleOfIssue*: string
      ssrRedemptionDate*: string
      ssrStrikePrice*: float
      ssrStrikeCurrency*: string
      ssrOptAttribute*: char
      ssrContractMultiplier*: string
      ssrCouponRate*: float
      ssrSecurityExchange*: string
      ssrIssuer*: string
      ssrEncodedIssuerLen*: uint
      ssrEncodedIssuer*: string
      ssrSecurityDesc*: string
      ssrEncodedSecurityDescLen*: uint
      ssrEncodedSecurityDesc*: string
      ssrPool*: string
      ssrContractSettlMonth*: string
      ssrCPProgram*: int
      ssrCPRegType*: string
      ssrNoEvents*: seq[NoEvents]
      ssrDatedDate*: string
      ssrInterestAccrualDate*: string
      ssrDeliveryForm*: int
      ssrPctAtRisk*: float
      ssrNoInstrAttrib*: seq[NoInstrAttrib]
      ssrNoUnderlyings*: seq[NoUnderlyings]
      ssrNoLegs*: seq[NoLegs]
      ssrCurrency*: string
      ssrSubscriptionRequestType*: char
      ssrTradingSessionID*: string
      ssrTradingSessionSubID*: string
    of SecurityStatus:
      ssSecurityStatusReqID*: string
      ssSymbol*: string
      ssSymbolSfx*: string
      ssSecurityID*: string
      ssSecurityIDSource*: string
      ssNoSecurityAltID*: seq[NoSecurityAltID]
      ssProduct*: int
      ssCFICode*: string
      ssSecurityType*: string
      ssSecuritySubType*: string
      ssMaturityMonthYear*: string
      ssMaturityDate*: string
      ssPutOrCall*: int
      ssCouponPaymentDate*: string
      ssIssueDate*: string
      ssRepoCollateralSecurityType*: string
      ssRepurchaseTerm*: int
      ssRepurchaseRate*: float
      ssFactor*: string
      ssCreditRating*: string
      ssInstrRegistry*: string
      ssCountryOfIssue*: string
      ssStateOrProvinceOfIssue*: string
      ssLocaleOfIssue*: string
      ssRedemptionDate*: string
      ssStrikePrice*: float
      ssStrikeCurrency*: string
      ssOptAttribute*: char
      ssContractMultiplier*: string
      ssCouponRate*: float
      ssSecurityExchange*: string
      ssIssuer*: string
      ssEncodedIssuerLen*: uint
      ssEncodedIssuer*: string
      ssSecurityDesc*: string
      ssEncodedSecurityDescLen*: uint
      ssEncodedSecurityDesc*: string
      ssPool*: string
      ssContractSettlMonth*: string
      ssCPProgram*: int
      ssCPRegType*: string
      ssNoEvents*: seq[NoEvents]
      ssDatedDate*: string
      ssInterestAccrualDate*: string
      ssDeliveryForm*: int
      ssPctAtRisk*: float
      ssNoInstrAttrib*: seq[NoInstrAttrib]
      ssNoUnderlyings*: seq[NoUnderlyings]
      ssNoLegs*: seq[NoLegs]
      ssCurrency*: string
      ssTradingSessionID*: string
      ssTradingSessionSubID*: string
      ssUnsolicitedIndicator*: bool
      ssSecurityTradingStatus*: int
      ssFinancialStatus*: string
      ssCorporateAction*: string
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
      ssText*: string
      ssEncodedTextLen*: uint
      ssEncodedText*: string
    of TradingSessionStatusRequest:
      tssrTradSesReqID*: string
      tssrTradingSessionID*: string
      tssrTradingSessionSubID*: string
      tssrTradSesMethod*: int
      tssrTradSesMode*: int
      tssrSubscriptionRequestType*: char
    of TradingSessionStatus:
      tssTradSesReqID*: string
      tssTradingSessionID*: string
      tssTradingSessionSubID*: string
      tssTradSesMethod*: int
      tssTradSesMode*: int
      tssUnsolicitedIndicator*: bool
      tssTradSesStatus*: int
      tssTradSesStatusRejReason*: int
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
      mqQuoteType*: int
      mqQuoteResponseLevel*: int
      mqNoPartyIDs*: seq[NoPartyIDs]
      mqAccount*: string
      mqAcctIDSource*: int
      mqAccountType*: int
      mqDefBidSize*: int
      mqDefOfferSize*: int
      mqNoQuoteSets*: seq[NoQuoteSets]
    of BusinessMessageReject:
      bmrRefSeqNum*: uint
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
      brTotNoRelatedSym*: int
      brBidType*: int
      brNumTickets*: int
      brCurrency*: string
      brSideValue1*: uint
      brSideValue2*: uint
      brNoBidDescriptors*: seq[NoBidDescriptors]
      brNoBidComponents*: seq[NoBidComponents]
      brLiquidityIndType*: int
      brWtAverageLiquidity*: float
      brExchangeForPhysical*: bool
      brOutMainCntryUIndex*: uint
      brCrossPercent*: float
      brProgRptReqs*: int
      brProgPeriodInterval*: int
      brIncTaxInd*: int
      brForexReq*: bool
      brNumBidders*: int
      brTradeDate*: string
      brBidTradeType*: char
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
      lspLastFragment*: bool
      lspNoStrikes*: seq[NoStrikes]
      lspNoUnderlyings*: seq[NoUnderlyings]
    of XMLnonFIX:
      discard
    of RegistrationInstructions:
      riRegistID*: string
      riRegistTransType*: char
      riRegistRefID*: string
      riClOrdID*: string
      riNoPartyIDs*: seq[NoPartyIDs]
      riAccount*: string
      riAcctIDSource*: int
      riRegistAcctType*: string
      riTaxAdvantageType*: int
      riOwnershipType*: char
      riNoRegistDtls*: seq[NoRegistDtls]
      riNoDistribInsts*: seq[NoDistribInsts]
    of RegistrationInstructionsResponse:
      rirRegistID*: string
      rirRegistTransType*: char
      rirRegistRefID*: string
      rirClOrdID*: string
      rirNoPartyIDs*: seq[NoPartyIDs]
      rirAccount*: string
      rirAcctIDSource*: int
      rirRegistStatus*: char
      rirRegistRejReasonCode*: int
      rirRegistRejReasonText*: string
    of OrderMassCancelRequest:
      omcrClOrdID*: string
      omcrSecondaryClOrdID*: string
      omcrMassCancelRequestType*: char
      omcrTradingSessionID*: string
      omcrTradingSessionSubID*: string
      omcrSymbol*: string
      omcrSymbolSfx*: string
      omcrSecurityID*: string
      omcrSecurityIDSource*: string
      omcrNoSecurityAltID*: seq[NoSecurityAltID]
      omcrProduct*: int
      omcrCFICode*: string
      omcrSecurityType*: string
      omcrSecuritySubType*: string
      omcrMaturityMonthYear*: string
      omcrMaturityDate*: string
      omcrPutOrCall*: int
      omcrCouponPaymentDate*: string
      omcrIssueDate*: string
      omcrRepoCollateralSecurityType*: string
      omcrRepurchaseTerm*: int
      omcrRepurchaseRate*: float
      omcrFactor*: string
      omcrCreditRating*: string
      omcrInstrRegistry*: string
      omcrCountryOfIssue*: string
      omcrStateOrProvinceOfIssue*: string
      omcrLocaleOfIssue*: string
      omcrRedemptionDate*: string
      omcrStrikePrice*: float
      omcrStrikeCurrency*: string
      omcrOptAttribute*: char
      omcrContractMultiplier*: string
      omcrCouponRate*: float
      omcrSecurityExchange*: string
      omcrIssuer*: string
      omcrEncodedIssuerLen*: uint
      omcrEncodedIssuer*: string
      omcrSecurityDesc*: string
      omcrEncodedSecurityDescLen*: uint
      omcrEncodedSecurityDesc*: string
      omcrPool*: string
      omcrContractSettlMonth*: string
      omcrCPProgram*: int
      omcrCPRegType*: string
      omcrNoEvents*: seq[NoEvents]
      omcrDatedDate*: string
      omcrInterestAccrualDate*: string
      omcrUnderlyingSymbol*: string
      omcrUnderlyingSymbolSfx*: string
      omcrUnderlyingSecurityID*: string
      omcrUnderlyingSecurityIDSource*: string
      omcrNoUnderlyingSecurityAltID*: seq[NoUnderlyingSecurityAltID]
      omcrUnderlyingProduct*: int
      omcrUnderlyingCFICode*: string
      omcrUnderlyingSecurityType*: string
      omcrUnderlyingSecuritySubType*: string
      omcrUnderlyingMaturityMonthYear*: string
      omcrUnderlyingMaturityDate*: string
      omcrUnderlyingPutOrCall*: int
      omcrUnderlyingCouponPaymentDate*: string
      omcrUnderlyingIssueDate*: string
      omcrUnderlyingRepoCollateralSecurityType*: string
      omcrUnderlyingRepurchaseTerm*: int
      omcrUnderlyingRepurchaseRate*: float
      omcrUnderlyingFactor*: string
      omcrUnderlyingCreditRating*: string
      omcrUnderlyingInstrRegistry*: string
      omcrUnderlyingCountryOfIssue*: string
      omcrUnderlyingStateOrProvinceOfIssue*: string
      omcrUnderlyingLocaleOfIssue*: string
      omcrUnderlyingRedemptionDate*: string
      omcrUnderlyingStrikePrice*: float
      omcrUnderlyingStrikeCurrency*: string
      omcrUnderlyingOptAttribute*: char
      omcrUnderlyingContractMultiplier*: string
      omcrUnderlyingCouponRate*: float
      omcrUnderlyingSecurityExchange*: string
      omcrUnderlyingIssuer*: string
      omcrEncodedUnderlyingIssuerLen*: uint
      omcrEncodedUnderlyingIssuer*: string
      omcrUnderlyingSecurityDesc*: string
      omcrEncodedUnderlyingSecurityDescLen*: uint
      omcrEncodedUnderlyingSecurityDesc*: string
      omcrUnderlyingCPProgram*: string
      omcrUnderlyingCPRegType*: string
      omcrUnderlyingCurrency*: string
      omcrUnderlyingQty*: int
      omcrUnderlyingPx*: float
      omcrUnderlyingDirtyPrice*: float
      omcrUnderlyingEndPrice*: float
      omcrUnderlyingStartValue*: uint
      omcrUnderlyingCurrentValue*: uint
      omcrUnderlyingEndValue*: uint
      omcrNoUnderlyingStips*: seq[NoUnderlyingStips]
      omcrSide*: char
      omcrTransactTime*: string
      omcrText*: string
      omcrEncodedTextLen*: uint
      omcrEncodedText*: string
    of OrderMassCancelReport:
      omcrClOrdID*: string
      omcrSecondaryClOrdID*: string
      omcrOrderID*: string
      omcrSecondaryOrderID*: string
      omcrMassCancelRequestType*: char
      omcrMassCancelResponse*: char
      omcrMassCancelRejectReason*: char
      omcrTotalAffectedOrders*: int
      omcrNoAffectedOrders*: seq[NoAffectedOrders]
      omcrTradingSessionID*: string
      omcrTradingSessionSubID*: string
      omcrSymbol*: string
      omcrSymbolSfx*: string
      omcrSecurityID*: string
      omcrSecurityIDSource*: string
      omcrNoSecurityAltID*: seq[NoSecurityAltID]
      omcrProduct*: int
      omcrCFICode*: string
      omcrSecurityType*: string
      omcrSecuritySubType*: string
      omcrMaturityMonthYear*: string
      omcrMaturityDate*: string
      omcrPutOrCall*: int
      omcrCouponPaymentDate*: string
      omcrIssueDate*: string
      omcrRepoCollateralSecurityType*: string
      omcrRepurchaseTerm*: int
      omcrRepurchaseRate*: float
      omcrFactor*: string
      omcrCreditRating*: string
      omcrInstrRegistry*: string
      omcrCountryOfIssue*: string
      omcrStateOrProvinceOfIssue*: string
      omcrLocaleOfIssue*: string
      omcrRedemptionDate*: string
      omcrStrikePrice*: float
      omcrStrikeCurrency*: string
      omcrOptAttribute*: char
      omcrContractMultiplier*: string
      omcrCouponRate*: float
      omcrSecurityExchange*: string
      omcrIssuer*: string
      omcrEncodedIssuerLen*: uint
      omcrEncodedIssuer*: string
      omcrSecurityDesc*: string
      omcrEncodedSecurityDescLen*: uint
      omcrEncodedSecurityDesc*: string
      omcrPool*: string
      omcrContractSettlMonth*: string
      omcrCPProgram*: int
      omcrCPRegType*: string
      omcrNoEvents*: seq[NoEvents]
      omcrDatedDate*: string
      omcrInterestAccrualDate*: string
      omcrUnderlyingSymbol*: string
      omcrUnderlyingSymbolSfx*: string
      omcrUnderlyingSecurityID*: string
      omcrUnderlyingSecurityIDSource*: string
      omcrNoUnderlyingSecurityAltID*: seq[NoUnderlyingSecurityAltID]
      omcrUnderlyingProduct*: int
      omcrUnderlyingCFICode*: string
      omcrUnderlyingSecurityType*: string
      omcrUnderlyingSecuritySubType*: string
      omcrUnderlyingMaturityMonthYear*: string
      omcrUnderlyingMaturityDate*: string
      omcrUnderlyingPutOrCall*: int
      omcrUnderlyingCouponPaymentDate*: string
      omcrUnderlyingIssueDate*: string
      omcrUnderlyingRepoCollateralSecurityType*: string
      omcrUnderlyingRepurchaseTerm*: int
      omcrUnderlyingRepurchaseRate*: float
      omcrUnderlyingFactor*: string
      omcrUnderlyingCreditRating*: string
      omcrUnderlyingInstrRegistry*: string
      omcrUnderlyingCountryOfIssue*: string
      omcrUnderlyingStateOrProvinceOfIssue*: string
      omcrUnderlyingLocaleOfIssue*: string
      omcrUnderlyingRedemptionDate*: string
      omcrUnderlyingStrikePrice*: float
      omcrUnderlyingStrikeCurrency*: string
      omcrUnderlyingOptAttribute*: char
      omcrUnderlyingContractMultiplier*: string
      omcrUnderlyingCouponRate*: float
      omcrUnderlyingSecurityExchange*: string
      omcrUnderlyingIssuer*: string
      omcrEncodedUnderlyingIssuerLen*: uint
      omcrEncodedUnderlyingIssuer*: string
      omcrUnderlyingSecurityDesc*: string
      omcrEncodedUnderlyingSecurityDescLen*: uint
      omcrEncodedUnderlyingSecurityDesc*: string
      omcrUnderlyingCPProgram*: string
      omcrUnderlyingCPRegType*: string
      omcrUnderlyingCurrency*: string
      omcrUnderlyingQty*: int
      omcrUnderlyingPx*: float
      omcrUnderlyingDirtyPrice*: float
      omcrUnderlyingEndPrice*: float
      omcrUnderlyingStartValue*: uint
      omcrUnderlyingCurrentValue*: uint
      omcrUnderlyingEndValue*: uint
      omcrNoUnderlyingStips*: seq[NoUnderlyingStips]
      omcrSide*: char
      omcrTransactTime*: string
      omcrText*: string
      omcrEncodedTextLen*: uint
      omcrEncodedText*: string
    of NewOrderCross:
      nocCrossID*: string
      nocCrossType*: int
      nocCrossPrioritization*: int
      nocNoSides*: seq[NoSides]
      nocSymbol*: string
      nocSymbolSfx*: string
      nocSecurityID*: string
      nocSecurityIDSource*: string
      nocNoSecurityAltID*: seq[NoSecurityAltID]
      nocProduct*: int
      nocCFICode*: string
      nocSecurityType*: string
      nocSecuritySubType*: string
      nocMaturityMonthYear*: string
      nocMaturityDate*: string
      nocPutOrCall*: int
      nocCouponPaymentDate*: string
      nocIssueDate*: string
      nocRepoCollateralSecurityType*: string
      nocRepurchaseTerm*: int
      nocRepurchaseRate*: float
      nocFactor*: string
      nocCreditRating*: string
      nocInstrRegistry*: string
      nocCountryOfIssue*: string
      nocStateOrProvinceOfIssue*: string
      nocLocaleOfIssue*: string
      nocRedemptionDate*: string
      nocStrikePrice*: float
      nocStrikeCurrency*: string
      nocOptAttribute*: char
      nocContractMultiplier*: string
      nocCouponRate*: float
      nocSecurityExchange*: string
      nocIssuer*: string
      nocEncodedIssuerLen*: uint
      nocEncodedIssuer*: string
      nocSecurityDesc*: string
      nocEncodedSecurityDescLen*: uint
      nocEncodedSecurityDesc*: string
      nocPool*: string
      nocContractSettlMonth*: string
      nocCPProgram*: int
      nocCPRegType*: string
      nocNoEvents*: seq[NoEvents]
      nocDatedDate*: string
      nocInterestAccrualDate*: string
      nocNoUnderlyings*: seq[NoUnderlyings]
      nocNoLegs*: seq[NoLegs]
      nocSettlType*: char
      nocSettlDate*: string
      nocHandlInst*: char
      nocExecInst*: string
      nocMinQty*: int
      nocMaxFloor*: int
      nocExDestination*: string
      nocNoTradingSessions*: seq[NoTradingSessions]
      nocProcessCode*: char
      nocPrevClosePx*: float
      nocLocateReqd*: bool
      nocTransactTime*: string
      nocNoStipulations*: seq[NoStipulations]
      nocOrdType*: char
      nocPriceType*: int
      nocPrice*: float
      nocStopPx*: float
      nocSpread*: float
      nocBenchmarkCurveCurrency*: string
      nocBenchmarkCurveName*: string
      nocBenchmarkCurvePoint*: string
      nocBenchmarkPrice*: float
      nocBenchmarkPriceType*: int
      nocBenchmarkSecurityID*: string
      nocBenchmarkSecurityIDSource*: string
      nocYieldType*: string
      nocYield*: float
      nocYieldCalcDate*: string
      nocYieldRedemptionDate*: string
      nocYieldRedemptionPrice*: float
      nocYieldRedemptionPriceType*: int
      nocCurrency*: string
      nocComplianceID*: string
      nocIOIID*: string
      nocQuoteID*: string
      nocTimeInForce*: char
      nocEffectiveTime*: string
      nocExpireDate*: string
      nocExpireTime*: string
      nocGTBookingInst*: int
      nocMaxShow*: int
      nocPegOffsetValue*: string
      nocPegMoveType*: int
      nocPegOffsetType*: int
      nocPegLimitType*: int
      nocPegRoundDirection*: int
      nocPegScope*: int
      nocDiscretionInst*: char
      nocDiscretionOffsetValue*: string
      nocDiscretionMoveType*: int
      nocDiscretionOffsetType*: int
      nocDiscretionLimitType*: int
      nocDiscretionRoundDirection*: int
      nocDiscretionScope*: int
      nocTargetStrategy*: int
      nocTargetStrategyParameters*: string
      nocParticipationRate*: float
      nocCancellationRights*: char
      nocMoneyLaunderingStatus*: char
      nocRegistID*: string
      nocDesignation*: string
    of CrossOrderCancelReplaceRequest:
      cocrrOrderID*: string
      cocrrCrossID*: string
      cocrrOrigCrossID*: string
      cocrrCrossType*: int
      cocrrCrossPrioritization*: int
      cocrrNoSides*: seq[NoSides]
      cocrrSymbol*: string
      cocrrSymbolSfx*: string
      cocrrSecurityID*: string
      cocrrSecurityIDSource*: string
      cocrrNoSecurityAltID*: seq[NoSecurityAltID]
      cocrrProduct*: int
      cocrrCFICode*: string
      cocrrSecurityType*: string
      cocrrSecuritySubType*: string
      cocrrMaturityMonthYear*: string
      cocrrMaturityDate*: string
      cocrrPutOrCall*: int
      cocrrCouponPaymentDate*: string
      cocrrIssueDate*: string
      cocrrRepoCollateralSecurityType*: string
      cocrrRepurchaseTerm*: int
      cocrrRepurchaseRate*: float
      cocrrFactor*: string
      cocrrCreditRating*: string
      cocrrInstrRegistry*: string
      cocrrCountryOfIssue*: string
      cocrrStateOrProvinceOfIssue*: string
      cocrrLocaleOfIssue*: string
      cocrrRedemptionDate*: string
      cocrrStrikePrice*: float
      cocrrStrikeCurrency*: string
      cocrrOptAttribute*: char
      cocrrContractMultiplier*: string
      cocrrCouponRate*: float
      cocrrSecurityExchange*: string
      cocrrIssuer*: string
      cocrrEncodedIssuerLen*: uint
      cocrrEncodedIssuer*: string
      cocrrSecurityDesc*: string
      cocrrEncodedSecurityDescLen*: uint
      cocrrEncodedSecurityDesc*: string
      cocrrPool*: string
      cocrrContractSettlMonth*: string
      cocrrCPProgram*: int
      cocrrCPRegType*: string
      cocrrNoEvents*: seq[NoEvents]
      cocrrDatedDate*: string
      cocrrInterestAccrualDate*: string
      cocrrNoUnderlyings*: seq[NoUnderlyings]
      cocrrNoLegs*: seq[NoLegs]
      cocrrSettlType*: char
      cocrrSettlDate*: string
      cocrrHandlInst*: char
      cocrrExecInst*: string
      cocrrMinQty*: int
      cocrrMaxFloor*: int
      cocrrExDestination*: string
      cocrrNoTradingSessions*: seq[NoTradingSessions]
      cocrrProcessCode*: char
      cocrrPrevClosePx*: float
      cocrrLocateReqd*: bool
      cocrrTransactTime*: string
      cocrrNoStipulations*: seq[NoStipulations]
      cocrrOrdType*: char
      cocrrPriceType*: int
      cocrrPrice*: float
      cocrrStopPx*: float
      cocrrSpread*: float
      cocrrBenchmarkCurveCurrency*: string
      cocrrBenchmarkCurveName*: string
      cocrrBenchmarkCurvePoint*: string
      cocrrBenchmarkPrice*: float
      cocrrBenchmarkPriceType*: int
      cocrrBenchmarkSecurityID*: string
      cocrrBenchmarkSecurityIDSource*: string
      cocrrYieldType*: string
      cocrrYield*: float
      cocrrYieldCalcDate*: string
      cocrrYieldRedemptionDate*: string
      cocrrYieldRedemptionPrice*: float
      cocrrYieldRedemptionPriceType*: int
      cocrrCurrency*: string
      cocrrComplianceID*: string
      cocrrIOIID*: string
      cocrrQuoteID*: string
      cocrrTimeInForce*: char
      cocrrEffectiveTime*: string
      cocrrExpireDate*: string
      cocrrExpireTime*: string
      cocrrGTBookingInst*: int
      cocrrMaxShow*: int
      cocrrPegOffsetValue*: string
      cocrrPegMoveType*: int
      cocrrPegOffsetType*: int
      cocrrPegLimitType*: int
      cocrrPegRoundDirection*: int
      cocrrPegScope*: int
      cocrrDiscretionInst*: char
      cocrrDiscretionOffsetValue*: string
      cocrrDiscretionMoveType*: int
      cocrrDiscretionOffsetType*: int
      cocrrDiscretionLimitType*: int
      cocrrDiscretionRoundDirection*: int
      cocrrDiscretionScope*: int
      cocrrTargetStrategy*: int
      cocrrTargetStrategyParameters*: string
      cocrrParticipationRate*: float
      cocrrCancellationRights*: char
      cocrrMoneyLaunderingStatus*: char
      cocrrRegistID*: string
      cocrrDesignation*: string
    of CrossOrderCancelRequest:
      cocrOrderID*: string
      cocrCrossID*: string
      cocrOrigCrossID*: string
      cocrCrossType*: int
      cocrCrossPrioritization*: int
      cocrNoSides*: seq[NoSides]
      cocrSymbol*: string
      cocrSymbolSfx*: string
      cocrSecurityID*: string
      cocrSecurityIDSource*: string
      cocrNoSecurityAltID*: seq[NoSecurityAltID]
      cocrProduct*: int
      cocrCFICode*: string
      cocrSecurityType*: string
      cocrSecuritySubType*: string
      cocrMaturityMonthYear*: string
      cocrMaturityDate*: string
      cocrPutOrCall*: int
      cocrCouponPaymentDate*: string
      cocrIssueDate*: string
      cocrRepoCollateralSecurityType*: string
      cocrRepurchaseTerm*: int
      cocrRepurchaseRate*: float
      cocrFactor*: string
      cocrCreditRating*: string
      cocrInstrRegistry*: string
      cocrCountryOfIssue*: string
      cocrStateOrProvinceOfIssue*: string
      cocrLocaleOfIssue*: string
      cocrRedemptionDate*: string
      cocrStrikePrice*: float
      cocrStrikeCurrency*: string
      cocrOptAttribute*: char
      cocrContractMultiplier*: string
      cocrCouponRate*: float
      cocrSecurityExchange*: string
      cocrIssuer*: string
      cocrEncodedIssuerLen*: uint
      cocrEncodedIssuer*: string
      cocrSecurityDesc*: string
      cocrEncodedSecurityDescLen*: uint
      cocrEncodedSecurityDesc*: string
      cocrPool*: string
      cocrContractSettlMonth*: string
      cocrCPProgram*: int
      cocrCPRegType*: string
      cocrNoEvents*: seq[NoEvents]
      cocrDatedDate*: string
      cocrInterestAccrualDate*: string
      cocrNoUnderlyings*: seq[NoUnderlyings]
      cocrNoLegs*: seq[NoLegs]
      cocrTransactTime*: string
    of SecurityTypeRequest:
      strSecurityReqID*: string
      strText*: string
      strEncodedTextLen*: uint
      strEncodedText*: string
      strTradingSessionID*: string
      strTradingSessionSubID*: string
      strProduct*: int
      strSecurityType*: string
      strSecuritySubType*: string
    of SecurityTypes:
      stSecurityReqID*: string
      stSecurityResponseID*: string
      stSecurityResponseType*: int
      stTotNoSecurityTypes*: int
      stLastFragment*: bool
      stNoSecurityTypes*: seq[NoSecurityTypes]
      stText*: string
      stEncodedTextLen*: uint
      stEncodedText*: string
      stTradingSessionID*: string
      stTradingSessionSubID*: string
      stSubscriptionRequestType*: char
    of SecurityListRequest:
      slrSecurityReqID*: string
      slrSecurityListRequestType*: int
      slrSymbol*: string
      slrSymbolSfx*: string
      slrSecurityID*: string
      slrSecurityIDSource*: string
      slrNoSecurityAltID*: seq[NoSecurityAltID]
      slrProduct*: int
      slrCFICode*: string
      slrSecurityType*: string
      slrSecuritySubType*: string
      slrMaturityMonthYear*: string
      slrMaturityDate*: string
      slrPutOrCall*: int
      slrCouponPaymentDate*: string
      slrIssueDate*: string
      slrRepoCollateralSecurityType*: string
      slrRepurchaseTerm*: int
      slrRepurchaseRate*: float
      slrFactor*: string
      slrCreditRating*: string
      slrInstrRegistry*: string
      slrCountryOfIssue*: string
      slrStateOrProvinceOfIssue*: string
      slrLocaleOfIssue*: string
      slrRedemptionDate*: string
      slrStrikePrice*: float
      slrStrikeCurrency*: string
      slrOptAttribute*: char
      slrContractMultiplier*: string
      slrCouponRate*: float
      slrSecurityExchange*: string
      slrIssuer*: string
      slrEncodedIssuerLen*: uint
      slrEncodedIssuer*: string
      slrSecurityDesc*: string
      slrEncodedSecurityDescLen*: uint
      slrEncodedSecurityDesc*: string
      slrPool*: string
      slrContractSettlMonth*: string
      slrCPProgram*: int
      slrCPRegType*: string
      slrNoEvents*: seq[NoEvents]
      slrDatedDate*: string
      slrInterestAccrualDate*: string
      slrDeliveryForm*: int
      slrPctAtRisk*: float
      slrNoInstrAttrib*: seq[NoInstrAttrib]
      slrAgreementDesc*: string
      slrAgreementID*: string
      slrAgreementDate*: string
      slrAgreementCurrency*: string
      slrTerminationType*: int
      slrStartDate*: string
      slrEndDate*: string
      slrDeliveryType*: int
      slrMarginRatio*: float
      slrNoUnderlyings*: seq[NoUnderlyings]
      slrNoLegs*: seq[NoLegs]
      slrCurrency*: string
      slrText*: string
      slrEncodedTextLen*: uint
      slrEncodedText*: string
      slrTradingSessionID*: string
      slrTradingSessionSubID*: string
      slrSubscriptionRequestType*: char
    of SecurityList:
      slSecurityReqID*: string
      slSecurityResponseID*: string
      slSecurityRequestResult*: int
      slTotNoRelatedSym*: int
      slLastFragment*: bool
      slNoRelatedSym*: seq[NoRelatedSym]
    of DerivativeSecurityListRequest:
      dslrSecurityReqID*: string
      dslrSecurityListRequestType*: int
      dslrUnderlyingSymbol*: string
      dslrUnderlyingSymbolSfx*: string
      dslrUnderlyingSecurityID*: string
      dslrUnderlyingSecurityIDSource*: string
      dslrNoUnderlyingSecurityAltID*: seq[NoUnderlyingSecurityAltID]
      dslrUnderlyingProduct*: int
      dslrUnderlyingCFICode*: string
      dslrUnderlyingSecurityType*: string
      dslrUnderlyingSecuritySubType*: string
      dslrUnderlyingMaturityMonthYear*: string
      dslrUnderlyingMaturityDate*: string
      dslrUnderlyingPutOrCall*: int
      dslrUnderlyingCouponPaymentDate*: string
      dslrUnderlyingIssueDate*: string
      dslrUnderlyingRepoCollateralSecurityType*: string
      dslrUnderlyingRepurchaseTerm*: int
      dslrUnderlyingRepurchaseRate*: float
      dslrUnderlyingFactor*: string
      dslrUnderlyingCreditRating*: string
      dslrUnderlyingInstrRegistry*: string
      dslrUnderlyingCountryOfIssue*: string
      dslrUnderlyingStateOrProvinceOfIssue*: string
      dslrUnderlyingLocaleOfIssue*: string
      dslrUnderlyingRedemptionDate*: string
      dslrUnderlyingStrikePrice*: float
      dslrUnderlyingStrikeCurrency*: string
      dslrUnderlyingOptAttribute*: char
      dslrUnderlyingContractMultiplier*: string
      dslrUnderlyingCouponRate*: float
      dslrUnderlyingSecurityExchange*: string
      dslrUnderlyingIssuer*: string
      dslrEncodedUnderlyingIssuerLen*: uint
      dslrEncodedUnderlyingIssuer*: string
      dslrUnderlyingSecurityDesc*: string
      dslrEncodedUnderlyingSecurityDescLen*: uint
      dslrEncodedUnderlyingSecurityDesc*: string
      dslrUnderlyingCPProgram*: string
      dslrUnderlyingCPRegType*: string
      dslrUnderlyingCurrency*: string
      dslrUnderlyingQty*: int
      dslrUnderlyingPx*: float
      dslrUnderlyingDirtyPrice*: float
      dslrUnderlyingEndPrice*: float
      dslrUnderlyingStartValue*: uint
      dslrUnderlyingCurrentValue*: uint
      dslrUnderlyingEndValue*: uint
      dslrNoUnderlyingStips*: seq[NoUnderlyingStips]
      dslrSecuritySubType*: string
      dslrCurrency*: string
      dslrText*: string
      dslrEncodedTextLen*: uint
      dslrEncodedText*: string
      dslrTradingSessionID*: string
      dslrTradingSessionSubID*: string
      dslrSubscriptionRequestType*: char
    of DerivativeSecurityList:
      dslSecurityReqID*: string
      dslSecurityResponseID*: string
      dslSecurityRequestResult*: int
      dslUnderlyingSymbol*: string
      dslUnderlyingSymbolSfx*: string
      dslUnderlyingSecurityID*: string
      dslUnderlyingSecurityIDSource*: string
      dslNoUnderlyingSecurityAltID*: seq[NoUnderlyingSecurityAltID]
      dslUnderlyingProduct*: int
      dslUnderlyingCFICode*: string
      dslUnderlyingSecurityType*: string
      dslUnderlyingSecuritySubType*: string
      dslUnderlyingMaturityMonthYear*: string
      dslUnderlyingMaturityDate*: string
      dslUnderlyingPutOrCall*: int
      dslUnderlyingCouponPaymentDate*: string
      dslUnderlyingIssueDate*: string
      dslUnderlyingRepoCollateralSecurityType*: string
      dslUnderlyingRepurchaseTerm*: int
      dslUnderlyingRepurchaseRate*: float
      dslUnderlyingFactor*: string
      dslUnderlyingCreditRating*: string
      dslUnderlyingInstrRegistry*: string
      dslUnderlyingCountryOfIssue*: string
      dslUnderlyingStateOrProvinceOfIssue*: string
      dslUnderlyingLocaleOfIssue*: string
      dslUnderlyingRedemptionDate*: string
      dslUnderlyingStrikePrice*: float
      dslUnderlyingStrikeCurrency*: string
      dslUnderlyingOptAttribute*: char
      dslUnderlyingContractMultiplier*: string
      dslUnderlyingCouponRate*: float
      dslUnderlyingSecurityExchange*: string
      dslUnderlyingIssuer*: string
      dslEncodedUnderlyingIssuerLen*: uint
      dslEncodedUnderlyingIssuer*: string
      dslUnderlyingSecurityDesc*: string
      dslEncodedUnderlyingSecurityDescLen*: uint
      dslEncodedUnderlyingSecurityDesc*: string
      dslUnderlyingCPProgram*: string
      dslUnderlyingCPRegType*: string
      dslUnderlyingCurrency*: string
      dslUnderlyingQty*: int
      dslUnderlyingPx*: float
      dslUnderlyingDirtyPrice*: float
      dslUnderlyingEndPrice*: float
      dslUnderlyingStartValue*: uint
      dslUnderlyingCurrentValue*: uint
      dslUnderlyingEndValue*: uint
      dslNoUnderlyingStips*: seq[NoUnderlyingStips]
      dslTotNoRelatedSym*: int
      dslLastFragment*: bool
      dslNoRelatedSym*: seq[NoRelatedSym]
    of NewOrderMultileg:
      nomClOrdID*: string
      nomSecondaryClOrdID*: string
      nomClOrdLinkID*: string
      nomNoPartyIDs*: seq[NoPartyIDs]
      nomTradeOriginationDate*: string
      nomTradeDate*: string
      nomAccount*: string
      nomAcctIDSource*: int
      nomAccountType*: int
      nomDayBookingInst*: char
      nomBookingUnit*: char
      nomPreallocMethod*: char
      nomAllocID*: string
      nomNoAllocs*: seq[NoAllocs]
      nomSettlType*: char
      nomSettlDate*: string
      nomCashMargin*: char
      nomClearingFeeIndicator*: string
      nomHandlInst*: char
      nomExecInst*: string
      nomMinQty*: int
      nomMaxFloor*: int
      nomExDestination*: string
      nomNoTradingSessions*: seq[NoTradingSessions]
      nomProcessCode*: char
      nomSide*: char
      nomSymbol*: string
      nomSymbolSfx*: string
      nomSecurityID*: string
      nomSecurityIDSource*: string
      nomNoSecurityAltID*: seq[NoSecurityAltID]
      nomProduct*: int
      nomCFICode*: string
      nomSecurityType*: string
      nomSecuritySubType*: string
      nomMaturityMonthYear*: string
      nomMaturityDate*: string
      nomPutOrCall*: int
      nomCouponPaymentDate*: string
      nomIssueDate*: string
      nomRepoCollateralSecurityType*: string
      nomRepurchaseTerm*: int
      nomRepurchaseRate*: float
      nomFactor*: string
      nomCreditRating*: string
      nomInstrRegistry*: string
      nomCountryOfIssue*: string
      nomStateOrProvinceOfIssue*: string
      nomLocaleOfIssue*: string
      nomRedemptionDate*: string
      nomStrikePrice*: float
      nomStrikeCurrency*: string
      nomOptAttribute*: char
      nomContractMultiplier*: string
      nomCouponRate*: float
      nomSecurityExchange*: string
      nomIssuer*: string
      nomEncodedIssuerLen*: uint
      nomEncodedIssuer*: string
      nomSecurityDesc*: string
      nomEncodedSecurityDescLen*: uint
      nomEncodedSecurityDesc*: string
      nomPool*: string
      nomContractSettlMonth*: string
      nomCPProgram*: int
      nomCPRegType*: string
      nomNoEvents*: seq[NoEvents]
      nomDatedDate*: string
      nomInterestAccrualDate*: string
      nomNoUnderlyings*: seq[NoUnderlyings]
      nomPrevClosePx*: float
      nomNoLegs*: seq[NoLegs]
      nomLocateReqd*: bool
      nomTransactTime*: string
      nomQtyType*: int
      nomOrderQty*: int
      nomCashOrderQty*: int
      nomOrderPercent*: float
      nomRoundingDirection*: char
      nomRoundingModulus*: string
      nomOrdType*: char
      nomPriceType*: int
      nomPrice*: float
      nomStopPx*: float
      nomCurrency*: string
      nomComplianceID*: string
      nomSolicitedFlag*: bool
      nomIOIID*: string
      nomQuoteID*: string
      nomTimeInForce*: char
      nomEffectiveTime*: string
      nomExpireDate*: string
      nomExpireTime*: string
      nomGTBookingInst*: int
      nomCommission*: uint
      nomCommType*: char
      nomCommCurrency*: string
      nomFundRenewWaiv*: char
      nomOrderCapacity*: char
      nomOrderRestrictions*: string
      nomCustOrderCapacity*: int
      nomForexReq*: bool
      nomSettlCurrency*: string
      nomBookingType*: int
      nomText*: string
      nomEncodedTextLen*: uint
      nomEncodedText*: string
      nomPositionEffect*: char
      nomCoveredOrUncovered*: int
      nomMaxShow*: int
      nomPegOffsetValue*: string
      nomPegMoveType*: int
      nomPegOffsetType*: int
      nomPegLimitType*: int
      nomPegRoundDirection*: int
      nomPegScope*: int
      nomDiscretionInst*: char
      nomDiscretionOffsetValue*: string
      nomDiscretionMoveType*: int
      nomDiscretionOffsetType*: int
      nomDiscretionLimitType*: int
      nomDiscretionRoundDirection*: int
      nomDiscretionScope*: int
      nomTargetStrategy*: int
      nomTargetStrategyParameters*: string
      nomParticipationRate*: float
      nomCancellationRights*: char
      nomMoneyLaunderingStatus*: char
      nomRegistID*: string
      nomDesignation*: string
      nomMultiLegRptTypeReq*: int
    of MultilegOrderCancelReplace:
      mocrOrderID*: string
      mocrOrigClOrdID*: string
      mocrClOrdID*: string
      mocrSecondaryClOrdID*: string
      mocrClOrdLinkID*: string
      mocrOrigOrdModTime*: string
      mocrNoPartyIDs*: seq[NoPartyIDs]
      mocrTradeOriginationDate*: string
      mocrTradeDate*: string
      mocrAccount*: string
      mocrAcctIDSource*: int
      mocrAccountType*: int
      mocrDayBookingInst*: char
      mocrBookingUnit*: char
      mocrPreallocMethod*: char
      mocrAllocID*: string
      mocrNoAllocs*: seq[NoAllocs]
      mocrSettlType*: char
      mocrSettlDate*: string
      mocrCashMargin*: char
      mocrClearingFeeIndicator*: string
      mocrHandlInst*: char
      mocrExecInst*: string
      mocrMinQty*: int
      mocrMaxFloor*: int
      mocrExDestination*: string
      mocrNoTradingSessions*: seq[NoTradingSessions]
      mocrProcessCode*: char
      mocrSide*: char
      mocrSymbol*: string
      mocrSymbolSfx*: string
      mocrSecurityID*: string
      mocrSecurityIDSource*: string
      mocrNoSecurityAltID*: seq[NoSecurityAltID]
      mocrProduct*: int
      mocrCFICode*: string
      mocrSecurityType*: string
      mocrSecuritySubType*: string
      mocrMaturityMonthYear*: string
      mocrMaturityDate*: string
      mocrPutOrCall*: int
      mocrCouponPaymentDate*: string
      mocrIssueDate*: string
      mocrRepoCollateralSecurityType*: string
      mocrRepurchaseTerm*: int
      mocrRepurchaseRate*: float
      mocrFactor*: string
      mocrCreditRating*: string
      mocrInstrRegistry*: string
      mocrCountryOfIssue*: string
      mocrStateOrProvinceOfIssue*: string
      mocrLocaleOfIssue*: string
      mocrRedemptionDate*: string
      mocrStrikePrice*: float
      mocrStrikeCurrency*: string
      mocrOptAttribute*: char
      mocrContractMultiplier*: string
      mocrCouponRate*: float
      mocrSecurityExchange*: string
      mocrIssuer*: string
      mocrEncodedIssuerLen*: uint
      mocrEncodedIssuer*: string
      mocrSecurityDesc*: string
      mocrEncodedSecurityDescLen*: uint
      mocrEncodedSecurityDesc*: string
      mocrPool*: string
      mocrContractSettlMonth*: string
      mocrCPProgram*: int
      mocrCPRegType*: string
      mocrNoEvents*: seq[NoEvents]
      mocrDatedDate*: string
      mocrInterestAccrualDate*: string
      mocrNoUnderlyings*: seq[NoUnderlyings]
      mocrPrevClosePx*: float
      mocrNoLegs*: seq[NoLegs]
      mocrLocateReqd*: bool
      mocrTransactTime*: string
      mocrQtyType*: int
      mocrOrderQty*: int
      mocrCashOrderQty*: int
      mocrOrderPercent*: float
      mocrRoundingDirection*: char
      mocrRoundingModulus*: string
      mocrOrdType*: char
      mocrPriceType*: int
      mocrPrice*: float
      mocrStopPx*: float
      mocrCurrency*: string
      mocrComplianceID*: string
      mocrSolicitedFlag*: bool
      mocrIOIID*: string
      mocrQuoteID*: string
      mocrTimeInForce*: char
      mocrEffectiveTime*: string
      mocrExpireDate*: string
      mocrExpireTime*: string
      mocrGTBookingInst*: int
      mocrCommission*: uint
      mocrCommType*: char
      mocrCommCurrency*: string
      mocrFundRenewWaiv*: char
      mocrOrderCapacity*: char
      mocrOrderRestrictions*: string
      mocrCustOrderCapacity*: int
      mocrForexReq*: bool
      mocrSettlCurrency*: string
      mocrBookingType*: int
      mocrText*: string
      mocrEncodedTextLen*: uint
      mocrEncodedText*: string
      mocrPositionEffect*: char
      mocrCoveredOrUncovered*: int
      mocrMaxShow*: int
      mocrPegOffsetValue*: string
      mocrPegMoveType*: int
      mocrPegOffsetType*: int
      mocrPegLimitType*: int
      mocrPegRoundDirection*: int
      mocrPegScope*: int
      mocrDiscretionInst*: char
      mocrDiscretionOffsetValue*: string
      mocrDiscretionMoveType*: int
      mocrDiscretionOffsetType*: int
      mocrDiscretionLimitType*: int
      mocrDiscretionRoundDirection*: int
      mocrDiscretionScope*: int
      mocrTargetStrategy*: int
      mocrTargetStrategyParameters*: string
      mocrParticipationRate*: float
      mocrCancellationRights*: char
      mocrMoneyLaunderingStatus*: char
      mocrRegistID*: string
      mocrDesignation*: string
      mocrMultiLegRptTypeReq*: int
    of TradeCaptureReportRequest:
      tcrrTradeRequestID*: string
      tcrrTradeRequestType*: int
      tcrrSubscriptionRequestType*: char
      tcrrTradeReportID*: string
      tcrrSecondaryTradeReportID*: string
      tcrrExecID*: string
      tcrrExecType*: char
      tcrrOrderID*: string
      tcrrClOrdID*: string
      tcrrMatchStatus*: char
      tcrrTrdType*: int
      tcrrTrdSubType*: int
      tcrrTransferReason*: string
      tcrrSecondaryTrdType*: int
      tcrrTradeLinkID*: string
      tcrrTrdMatchID*: string
      tcrrNoPartyIDs*: seq[NoPartyIDs]
      tcrrSymbol*: string
      tcrrSymbolSfx*: string
      tcrrSecurityID*: string
      tcrrSecurityIDSource*: string
      tcrrNoSecurityAltID*: seq[NoSecurityAltID]
      tcrrProduct*: int
      tcrrCFICode*: string
      tcrrSecurityType*: string
      tcrrSecuritySubType*: string
      tcrrMaturityMonthYear*: string
      tcrrMaturityDate*: string
      tcrrPutOrCall*: int
      tcrrCouponPaymentDate*: string
      tcrrIssueDate*: string
      tcrrRepoCollateralSecurityType*: string
      tcrrRepurchaseTerm*: int
      tcrrRepurchaseRate*: float
      tcrrFactor*: string
      tcrrCreditRating*: string
      tcrrInstrRegistry*: string
      tcrrCountryOfIssue*: string
      tcrrStateOrProvinceOfIssue*: string
      tcrrLocaleOfIssue*: string
      tcrrRedemptionDate*: string
      tcrrStrikePrice*: float
      tcrrStrikeCurrency*: string
      tcrrOptAttribute*: char
      tcrrContractMultiplier*: string
      tcrrCouponRate*: float
      tcrrSecurityExchange*: string
      tcrrIssuer*: string
      tcrrEncodedIssuerLen*: uint
      tcrrEncodedIssuer*: string
      tcrrSecurityDesc*: string
      tcrrEncodedSecurityDescLen*: uint
      tcrrEncodedSecurityDesc*: string
      tcrrPool*: string
      tcrrContractSettlMonth*: string
      tcrrCPProgram*: int
      tcrrCPRegType*: string
      tcrrNoEvents*: seq[NoEvents]
      tcrrDatedDate*: string
      tcrrInterestAccrualDate*: string
      tcrrDeliveryForm*: int
      tcrrPctAtRisk*: float
      tcrrNoInstrAttrib*: seq[NoInstrAttrib]
      tcrrAgreementDesc*: string
      tcrrAgreementID*: string
      tcrrAgreementDate*: string
      tcrrAgreementCurrency*: string
      tcrrTerminationType*: int
      tcrrStartDate*: string
      tcrrEndDate*: string
      tcrrDeliveryType*: int
      tcrrMarginRatio*: float
      tcrrNoUnderlyings*: seq[NoUnderlyings]
      tcrrNoLegs*: seq[NoLegs]
      tcrrNoDates*: seq[NoDates]
      tcrrClearingBusinessDate*: string
      tcrrTradingSessionID*: string
      tcrrTradingSessionSubID*: string
      tcrrTimeBracket*: string
      tcrrSide*: char
      tcrrMultiLegReportingType*: char
      tcrrTradeInputSource*: string
      tcrrTradeInputDevice*: string
      tcrrResponseTransportType*: int
      tcrrResponseDestination*: string
      tcrrText*: string
      tcrrEncodedTextLen*: uint
      tcrrEncodedText*: string
    of TradeCaptureReport:
      tcrTradeReportID*: string
      tcrTradeReportTransType*: int
      tcrTradeReportType*: int
      tcrTradeRequestID*: string
      tcrTrdType*: int
      tcrTrdSubType*: int
      tcrSecondaryTrdType*: int
      tcrTransferReason*: string
      tcrExecType*: char
      tcrTotNumTradeReports*: int
      tcrLastRptRequested*: bool
      tcrUnsolicitedIndicator*: bool
      tcrSubscriptionRequestType*: char
      tcrTradeReportRefID*: string
      tcrSecondaryTradeReportRefID*: string
      tcrSecondaryTradeReportID*: string
      tcrTradeLinkID*: string
      tcrTrdMatchID*: string
      tcrExecID*: string
      tcrOrdStatus*: char
      tcrSecondaryExecID*: string
      tcrExecRestatementReason*: int
      tcrPreviouslyReported*: bool
      tcrPriceType*: int
      tcrSymbol*: string
      tcrSymbolSfx*: string
      tcrSecurityID*: string
      tcrSecurityIDSource*: string
      tcrNoSecurityAltID*: seq[NoSecurityAltID]
      tcrProduct*: int
      tcrCFICode*: string
      tcrSecurityType*: string
      tcrSecuritySubType*: string
      tcrMaturityMonthYear*: string
      tcrMaturityDate*: string
      tcrPutOrCall*: int
      tcrCouponPaymentDate*: string
      tcrIssueDate*: string
      tcrRepoCollateralSecurityType*: string
      tcrRepurchaseTerm*: int
      tcrRepurchaseRate*: float
      tcrFactor*: string
      tcrCreditRating*: string
      tcrInstrRegistry*: string
      tcrCountryOfIssue*: string
      tcrStateOrProvinceOfIssue*: string
      tcrLocaleOfIssue*: string
      tcrRedemptionDate*: string
      tcrStrikePrice*: float
      tcrStrikeCurrency*: string
      tcrOptAttribute*: char
      tcrContractMultiplier*: string
      tcrCouponRate*: float
      tcrSecurityExchange*: string
      tcrIssuer*: string
      tcrEncodedIssuerLen*: uint
      tcrEncodedIssuer*: string
      tcrSecurityDesc*: string
      tcrEncodedSecurityDescLen*: uint
      tcrEncodedSecurityDesc*: string
      tcrPool*: string
      tcrContractSettlMonth*: string
      tcrCPProgram*: int
      tcrCPRegType*: string
      tcrNoEvents*: seq[NoEvents]
      tcrDatedDate*: string
      tcrInterestAccrualDate*: string
      tcrAgreementDesc*: string
      tcrAgreementID*: string
      tcrAgreementDate*: string
      tcrAgreementCurrency*: string
      tcrTerminationType*: int
      tcrStartDate*: string
      tcrEndDate*: string
      tcrDeliveryType*: int
      tcrMarginRatio*: float
      tcrOrderQty*: int
      tcrCashOrderQty*: int
      tcrOrderPercent*: float
      tcrRoundingDirection*: char
      tcrRoundingModulus*: string
      tcrQtyType*: int
      tcrYieldType*: string
      tcrYield*: float
      tcrYieldCalcDate*: string
      tcrYieldRedemptionDate*: string
      tcrYieldRedemptionPrice*: float
      tcrYieldRedemptionPriceType*: int
      tcrNoUnderlyings*: seq[NoUnderlyings]
      tcrUnderlyingTradingSessionID*: string
      tcrUnderlyingTradingSessionSubID*: string
      tcrLastQty*: int
      tcrLastPx*: float
      tcrLastParPx*: float
      tcrLastSpotRate*: float
      tcrLastForwardPoints*: float
      tcrLastMkt*: string
      tcrTradeDate*: string
      tcrClearingBusinessDate*: string
      tcrAvgPx*: float
      tcrSpread*: float
      tcrBenchmarkCurveCurrency*: string
      tcrBenchmarkCurveName*: string
      tcrBenchmarkCurvePoint*: string
      tcrBenchmarkPrice*: float
      tcrBenchmarkPriceType*: int
      tcrBenchmarkSecurityID*: string
      tcrBenchmarkSecurityIDSource*: string
      tcrAvgPxIndicator*: int
      tcrNoPosAmt*: seq[NoPosAmt]
      tcrMultiLegReportingType*: char
      tcrTradeLegRefID*: string
      tcrNoLegs*: seq[NoLegs]
      tcrTransactTime*: string
      tcrNoTrdRegTimestamps*: seq[NoTrdRegTimestamps]
      tcrSettlType*: char
      tcrSettlDate*: string
      tcrMatchStatus*: char
      tcrMatchType*: string
      tcrNoSides*: seq[NoSides]
      tcrCopyMsgIndicator*: bool
      tcrPublishTrdIndicator*: bool
      tcrShortSaleReason*: int
    of OrderMassStatusRequest:
      omsrMassStatusReqID*: string
      omsrMassStatusReqType*: int
      omsrNoPartyIDs*: seq[NoPartyIDs]
      omsrAccount*: string
      omsrAcctIDSource*: int
      omsrTradingSessionID*: string
      omsrTradingSessionSubID*: string
      omsrSymbol*: string
      omsrSymbolSfx*: string
      omsrSecurityID*: string
      omsrSecurityIDSource*: string
      omsrNoSecurityAltID*: seq[NoSecurityAltID]
      omsrProduct*: int
      omsrCFICode*: string
      omsrSecurityType*: string
      omsrSecuritySubType*: string
      omsrMaturityMonthYear*: string
      omsrMaturityDate*: string
      omsrPutOrCall*: int
      omsrCouponPaymentDate*: string
      omsrIssueDate*: string
      omsrRepoCollateralSecurityType*: string
      omsrRepurchaseTerm*: int
      omsrRepurchaseRate*: float
      omsrFactor*: string
      omsrCreditRating*: string
      omsrInstrRegistry*: string
      omsrCountryOfIssue*: string
      omsrStateOrProvinceOfIssue*: string
      omsrLocaleOfIssue*: string
      omsrRedemptionDate*: string
      omsrStrikePrice*: float
      omsrStrikeCurrency*: string
      omsrOptAttribute*: char
      omsrContractMultiplier*: string
      omsrCouponRate*: float
      omsrSecurityExchange*: string
      omsrIssuer*: string
      omsrEncodedIssuerLen*: uint
      omsrEncodedIssuer*: string
      omsrSecurityDesc*: string
      omsrEncodedSecurityDescLen*: uint
      omsrEncodedSecurityDesc*: string
      omsrPool*: string
      omsrContractSettlMonth*: string
      omsrCPProgram*: int
      omsrCPRegType*: string
      omsrNoEvents*: seq[NoEvents]
      omsrDatedDate*: string
      omsrInterestAccrualDate*: string
      omsrUnderlyingSymbol*: string
      omsrUnderlyingSymbolSfx*: string
      omsrUnderlyingSecurityID*: string
      omsrUnderlyingSecurityIDSource*: string
      omsrNoUnderlyingSecurityAltID*: seq[NoUnderlyingSecurityAltID]
      omsrUnderlyingProduct*: int
      omsrUnderlyingCFICode*: string
      omsrUnderlyingSecurityType*: string
      omsrUnderlyingSecuritySubType*: string
      omsrUnderlyingMaturityMonthYear*: string
      omsrUnderlyingMaturityDate*: string
      omsrUnderlyingPutOrCall*: int
      omsrUnderlyingCouponPaymentDate*: string
      omsrUnderlyingIssueDate*: string
      omsrUnderlyingRepoCollateralSecurityType*: string
      omsrUnderlyingRepurchaseTerm*: int
      omsrUnderlyingRepurchaseRate*: float
      omsrUnderlyingFactor*: string
      omsrUnderlyingCreditRating*: string
      omsrUnderlyingInstrRegistry*: string
      omsrUnderlyingCountryOfIssue*: string
      omsrUnderlyingStateOrProvinceOfIssue*: string
      omsrUnderlyingLocaleOfIssue*: string
      omsrUnderlyingRedemptionDate*: string
      omsrUnderlyingStrikePrice*: float
      omsrUnderlyingStrikeCurrency*: string
      omsrUnderlyingOptAttribute*: char
      omsrUnderlyingContractMultiplier*: string
      omsrUnderlyingCouponRate*: float
      omsrUnderlyingSecurityExchange*: string
      omsrUnderlyingIssuer*: string
      omsrEncodedUnderlyingIssuerLen*: uint
      omsrEncodedUnderlyingIssuer*: string
      omsrUnderlyingSecurityDesc*: string
      omsrEncodedUnderlyingSecurityDescLen*: uint
      omsrEncodedUnderlyingSecurityDesc*: string
      omsrUnderlyingCPProgram*: string
      omsrUnderlyingCPRegType*: string
      omsrUnderlyingCurrency*: string
      omsrUnderlyingQty*: int
      omsrUnderlyingPx*: float
      omsrUnderlyingDirtyPrice*: float
      omsrUnderlyingEndPrice*: float
      omsrUnderlyingStartValue*: uint
      omsrUnderlyingCurrentValue*: uint
      omsrUnderlyingEndValue*: uint
      omsrNoUnderlyingStips*: seq[NoUnderlyingStips]
      omsrSide*: char
    of QuoteRequestReject:
      qrrQuoteReqID*: string
      qrrRFQReqID*: string
      qrrQuoteRequestRejectReason*: int
      qrrNoRelatedSym*: seq[NoRelatedSym]
      qrrText*: string
      qrrEncodedTextLen*: uint
      qrrEncodedText*: string
    of RFQRequest:
      rfqrRFQReqID*: string
      rfqrNoRelatedSym*: seq[NoRelatedSym]
      rfqrSubscriptionRequestType*: char
    of QuoteStatusReport:
      qsrQuoteStatusReqID*: string
      qsrQuoteReqID*: string
      qsrQuoteID*: string
      qsrQuoteRespID*: string
      qsrQuoteType*: int
      qsrNoPartyIDs*: seq[NoPartyIDs]
      qsrTradingSessionID*: string
      qsrTradingSessionSubID*: string
      qsrSymbol*: string
      qsrSymbolSfx*: string
      qsrSecurityID*: string
      qsrSecurityIDSource*: string
      qsrNoSecurityAltID*: seq[NoSecurityAltID]
      qsrProduct*: int
      qsrCFICode*: string
      qsrSecurityType*: string
      qsrSecuritySubType*: string
      qsrMaturityMonthYear*: string
      qsrMaturityDate*: string
      qsrPutOrCall*: int
      qsrCouponPaymentDate*: string
      qsrIssueDate*: string
      qsrRepoCollateralSecurityType*: string
      qsrRepurchaseTerm*: int
      qsrRepurchaseRate*: float
      qsrFactor*: string
      qsrCreditRating*: string
      qsrInstrRegistry*: string
      qsrCountryOfIssue*: string
      qsrStateOrProvinceOfIssue*: string
      qsrLocaleOfIssue*: string
      qsrRedemptionDate*: string
      qsrStrikePrice*: float
      qsrStrikeCurrency*: string
      qsrOptAttribute*: char
      qsrContractMultiplier*: string
      qsrCouponRate*: float
      qsrSecurityExchange*: string
      qsrIssuer*: string
      qsrEncodedIssuerLen*: uint
      qsrEncodedIssuer*: string
      qsrSecurityDesc*: string
      qsrEncodedSecurityDescLen*: uint
      qsrEncodedSecurityDesc*: string
      qsrPool*: string
      qsrContractSettlMonth*: string
      qsrCPProgram*: int
      qsrCPRegType*: string
      qsrNoEvents*: seq[NoEvents]
      qsrDatedDate*: string
      qsrInterestAccrualDate*: string
      qsrAgreementDesc*: string
      qsrAgreementID*: string
      qsrAgreementDate*: string
      qsrAgreementCurrency*: string
      qsrTerminationType*: int
      qsrStartDate*: string
      qsrEndDate*: string
      qsrDeliveryType*: int
      qsrMarginRatio*: float
      qsrNoUnderlyings*: seq[NoUnderlyings]
      qsrSide*: char
      qsrOrderQty*: int
      qsrCashOrderQty*: int
      qsrOrderPercent*: float
      qsrRoundingDirection*: char
      qsrRoundingModulus*: string
      qsrSettlType*: char
      qsrSettlDate*: string
      qsrSettlDate2*: string
      qsrOrderQty2*: int
      qsrCurrency*: string
      qsrNoStipulations*: seq[NoStipulations]
      qsrAccount*: string
      qsrAcctIDSource*: int
      qsrAccountType*: int
      qsrNoLegs*: seq[NoLegs]
      qsrNoQuoteQualifiers*: seq[NoQuoteQualifiers]
      qsrExpireTime*: string
      qsrPrice*: float
      qsrPriceType*: int
      qsrSpread*: float
      qsrBenchmarkCurveCurrency*: string
      qsrBenchmarkCurveName*: string
      qsrBenchmarkCurvePoint*: string
      qsrBenchmarkPrice*: float
      qsrBenchmarkPriceType*: int
      qsrBenchmarkSecurityID*: string
      qsrBenchmarkSecurityIDSource*: string
      qsrYieldType*: string
      qsrYield*: float
      qsrYieldCalcDate*: string
      qsrYieldRedemptionDate*: string
      qsrYieldRedemptionPrice*: float
      qsrYieldRedemptionPriceType*: int
      qsrBidPx*: float
      qsrOfferPx*: float
      qsrMktBidPx*: float
      qsrMktOfferPx*: float
      qsrMinBidSize*: int
      qsrBidSize*: int
      qsrMinOfferSize*: int
      qsrOfferSize*: int
      qsrValidUntilTime*: string
      qsrBidSpotRate*: float
      qsrOfferSpotRate*: float
      qsrBidForwardPoints*: float
      qsrOfferForwardPoints*: float
      qsrMidPx*: float
      qsrBidYield*: float
      qsrMidYield*: float
      qsrOfferYield*: float
      qsrTransactTime*: string
      qsrOrdType*: char
      qsrBidForwardPoints2*: float
      qsrOfferForwardPoints2*: float
      qsrSettlCurrBidFxRate*: string
      qsrSettlCurrOfferFxRate*: string
      qsrSettlCurrFxRateCalc*: char
      qsrCommType*: char
      qsrCommission*: uint
      qsrCustOrderCapacity*: int
      qsrExDestination*: string
      qsrQuoteStatus*: int
      qsrText*: string
      qsrEncodedTextLen*: uint
      qsrEncodedText*: string
    of QuoteResponse:
      qrQuoteRespID*: string
      qrQuoteID*: string
      qrQuoteRespType*: int
      qrClOrdID*: string
      qrOrderCapacity*: char
      qrIOIID*: string
      qrQuoteType*: int
      qrNoQuoteQualifiers*: seq[NoQuoteQualifiers]
      qrNoPartyIDs*: seq[NoPartyIDs]
      qrTradingSessionID*: string
      qrTradingSessionSubID*: string
      qrSymbol*: string
      qrSymbolSfx*: string
      qrSecurityID*: string
      qrSecurityIDSource*: string
      qrNoSecurityAltID*: seq[NoSecurityAltID]
      qrProduct*: int
      qrCFICode*: string
      qrSecurityType*: string
      qrSecuritySubType*: string
      qrMaturityMonthYear*: string
      qrMaturityDate*: string
      qrPutOrCall*: int
      qrCouponPaymentDate*: string
      qrIssueDate*: string
      qrRepoCollateralSecurityType*: string
      qrRepurchaseTerm*: int
      qrRepurchaseRate*: float
      qrFactor*: string
      qrCreditRating*: string
      qrInstrRegistry*: string
      qrCountryOfIssue*: string
      qrStateOrProvinceOfIssue*: string
      qrLocaleOfIssue*: string
      qrRedemptionDate*: string
      qrStrikePrice*: float
      qrStrikeCurrency*: string
      qrOptAttribute*: char
      qrContractMultiplier*: string
      qrCouponRate*: float
      qrSecurityExchange*: string
      qrIssuer*: string
      qrEncodedIssuerLen*: uint
      qrEncodedIssuer*: string
      qrSecurityDesc*: string
      qrEncodedSecurityDescLen*: uint
      qrEncodedSecurityDesc*: string
      qrPool*: string
      qrContractSettlMonth*: string
      qrCPProgram*: int
      qrCPRegType*: string
      qrNoEvents*: seq[NoEvents]
      qrDatedDate*: string
      qrInterestAccrualDate*: string
      qrAgreementDesc*: string
      qrAgreementID*: string
      qrAgreementDate*: string
      qrAgreementCurrency*: string
      qrTerminationType*: int
      qrStartDate*: string
      qrEndDate*: string
      qrDeliveryType*: int
      qrMarginRatio*: float
      qrNoUnderlyings*: seq[NoUnderlyings]
      qrSide*: char
      qrOrderQty*: int
      qrCashOrderQty*: int
      qrOrderPercent*: float
      qrRoundingDirection*: char
      qrRoundingModulus*: string
      qrSettlType*: char
      qrSettlDate*: string
      qrSettlDate2*: string
      qrOrderQty2*: int
      qrCurrency*: string
      qrNoStipulations*: seq[NoStipulations]
      qrAccount*: string
      qrAcctIDSource*: int
      qrAccountType*: int
      qrNoLegs*: seq[NoLegs]
      qrBidPx*: float
      qrOfferPx*: float
      qrMktBidPx*: float
      qrMktOfferPx*: float
      qrMinBidSize*: int
      qrBidSize*: int
      qrMinOfferSize*: int
      qrOfferSize*: int
      qrValidUntilTime*: string
      qrBidSpotRate*: float
      qrOfferSpotRate*: float
      qrBidForwardPoints*: float
      qrOfferForwardPoints*: float
      qrMidPx*: float
      qrBidYield*: float
      qrMidYield*: float
      qrOfferYield*: float
      qrTransactTime*: string
      qrOrdType*: char
      qrBidForwardPoints2*: float
      qrOfferForwardPoints2*: float
      qrSettlCurrBidFxRate*: string
      qrSettlCurrOfferFxRate*: string
      qrSettlCurrFxRateCalc*: char
      qrCommission*: uint
      qrCommType*: char
      qrCustOrderCapacity*: int
      qrExDestination*: string
      qrText*: string
      qrEncodedTextLen*: uint
      qrEncodedText*: string
      qrPrice*: float
      qrPriceType*: int
      qrSpread*: float
      qrBenchmarkCurveCurrency*: string
      qrBenchmarkCurveName*: string
      qrBenchmarkCurvePoint*: string
      qrBenchmarkPrice*: float
      qrBenchmarkPriceType*: int
      qrBenchmarkSecurityID*: string
      qrBenchmarkSecurityIDSource*: string
      qrYieldType*: string
      qrYield*: float
      qrYieldCalcDate*: string
      qrYieldRedemptionDate*: string
      qrYieldRedemptionPrice*: float
      qrYieldRedemptionPriceType*: int
    of Confirmation:
      cConfirmID*: string
      cConfirmRefID*: string
      cConfirmReqID*: string
      cConfirmTransType*: int
      cConfirmType*: int
      cCopyMsgIndicator*: bool
      cLegalConfirm*: bool
      cConfirmStatus*: int
      cNoPartyIDs*: seq[NoPartyIDs]
      cNoOrders*: seq[NoOrders]
      cAllocID*: string
      cSecondaryAllocID*: string
      cIndividualAllocID*: string
      cTransactTime*: string
      cTradeDate*: string
      cNoTrdRegTimestamps*: seq[NoTrdRegTimestamps]
      cSymbol*: string
      cSymbolSfx*: string
      cSecurityID*: string
      cSecurityIDSource*: string
      cNoSecurityAltID*: seq[NoSecurityAltID]
      cProduct*: int
      cCFICode*: string
      cSecurityType*: string
      cSecuritySubType*: string
      cMaturityMonthYear*: string
      cMaturityDate*: string
      cPutOrCall*: int
      cCouponPaymentDate*: string
      cIssueDate*: string
      cRepoCollateralSecurityType*: string
      cRepurchaseTerm*: int
      cRepurchaseRate*: float
      cFactor*: string
      cCreditRating*: string
      cInstrRegistry*: string
      cCountryOfIssue*: string
      cStateOrProvinceOfIssue*: string
      cLocaleOfIssue*: string
      cRedemptionDate*: string
      cStrikePrice*: float
      cStrikeCurrency*: string
      cOptAttribute*: char
      cContractMultiplier*: string
      cCouponRate*: float
      cSecurityExchange*: string
      cIssuer*: string
      cEncodedIssuerLen*: uint
      cEncodedIssuer*: string
      cSecurityDesc*: string
      cEncodedSecurityDescLen*: uint
      cEncodedSecurityDesc*: string
      cPool*: string
      cContractSettlMonth*: string
      cCPProgram*: int
      cCPRegType*: string
      cNoEvents*: seq[NoEvents]
      cDatedDate*: string
      cInterestAccrualDate*: string
      cDeliveryForm*: int
      cPctAtRisk*: float
      cNoInstrAttrib*: seq[NoInstrAttrib]
      cAgreementDesc*: string
      cAgreementID*: string
      cAgreementDate*: string
      cAgreementCurrency*: string
      cTerminationType*: int
      cStartDate*: string
      cEndDate*: string
      cDeliveryType*: int
      cMarginRatio*: float
      cNoUnderlyings*: seq[NoUnderlyings]
      cNoLegs*: seq[NoLegs]
      cYieldType*: string
      cYield*: float
      cYieldCalcDate*: string
      cYieldRedemptionDate*: string
      cYieldRedemptionPrice*: float
      cYieldRedemptionPriceType*: int
      cAllocQty*: int
      cQtyType*: int
      cSide*: char
      cCurrency*: string
      cLastMkt*: string
      cNoCapacities*: seq[NoCapacities]
      cAllocAccount*: string
      cAllocAcctIDSource*: int
      cAllocAccountType*: int
      cAvgPx*: float
      cAvgPxPrecision*: int
      cPriceType*: int
      cAvgParPx*: float
      cSpread*: float
      cBenchmarkCurveCurrency*: string
      cBenchmarkCurveName*: string
      cBenchmarkCurvePoint*: string
      cBenchmarkPrice*: float
      cBenchmarkPriceType*: int
      cBenchmarkSecurityID*: string
      cBenchmarkSecurityIDSource*: string
      cReportedPx*: float
      cText*: string
      cEncodedTextLen*: uint
      cEncodedText*: string
      cProcessCode*: char
      cGrossTradeAmt*: uint
      cNumDaysInterest*: int
      cExDate*: string
      cAccruedInterestRate*: float
      cAccruedInterestAmt*: uint
      cInterestAtMaturity*: uint
      cEndAccruedInterestAmt*: uint
      cStartCash*: uint
      cEndCash*: uint
      cConcession*: uint
      cTotalTakedown*: uint
      cNetMoney*: uint
      cMaturityNetMoney*: uint
      cSettlCurrAmt*: uint
      cSettlCurrency*: string
      cSettlCurrFxRate*: string
      cSettlCurrFxRateCalc*: char
      cSettlType*: char
      cSettlDate*: string
      cSettlDeliveryType*: int
      cStandInstDbType*: int
      cStandInstDbName*: string
      cStandInstDbID*: string
      cNoDlvyInst*: seq[NoDlvyInst]
      cCommission*: uint
      cCommType*: char
      cCommCurrency*: string
      cFundRenewWaiv*: char
      cSharedCommission*: uint
      cNoStipulations*: seq[NoStipulations]
      cNoMiscFees*: seq[NoMiscFees]
    of PositionMaintenanceRequest:
      pmrPosReqID*: string
      pmrPosTransType*: int
      pmrPosMaintAction*: int
      pmrOrigPosReqRefID*: string
      pmrPosMaintRptRefID*: string
      pmrClearingBusinessDate*: string
      pmrSettlSessID*: string
      pmrSettlSessSubID*: string
      pmrNoPartyIDs*: seq[NoPartyIDs]
      pmrAccount*: string
      pmrAcctIDSource*: int
      pmrAccountType*: int
      pmrSymbol*: string
      pmrSymbolSfx*: string
      pmrSecurityID*: string
      pmrSecurityIDSource*: string
      pmrNoSecurityAltID*: seq[NoSecurityAltID]
      pmrProduct*: int
      pmrCFICode*: string
      pmrSecurityType*: string
      pmrSecuritySubType*: string
      pmrMaturityMonthYear*: string
      pmrMaturityDate*: string
      pmrPutOrCall*: int
      pmrCouponPaymentDate*: string
      pmrIssueDate*: string
      pmrRepoCollateralSecurityType*: string
      pmrRepurchaseTerm*: int
      pmrRepurchaseRate*: float
      pmrFactor*: string
      pmrCreditRating*: string
      pmrInstrRegistry*: string
      pmrCountryOfIssue*: string
      pmrStateOrProvinceOfIssue*: string
      pmrLocaleOfIssue*: string
      pmrRedemptionDate*: string
      pmrStrikePrice*: float
      pmrStrikeCurrency*: string
      pmrOptAttribute*: char
      pmrContractMultiplier*: string
      pmrCouponRate*: float
      pmrSecurityExchange*: string
      pmrIssuer*: string
      pmrEncodedIssuerLen*: uint
      pmrEncodedIssuer*: string
      pmrSecurityDesc*: string
      pmrEncodedSecurityDescLen*: uint
      pmrEncodedSecurityDesc*: string
      pmrPool*: string
      pmrContractSettlMonth*: string
      pmrCPProgram*: int
      pmrCPRegType*: string
      pmrNoEvents*: seq[NoEvents]
      pmrDatedDate*: string
      pmrInterestAccrualDate*: string
      pmrCurrency*: string
      pmrNoLegs*: seq[NoLegs]
      pmrNoUnderlyings*: seq[NoUnderlyings]
      pmrNoTradingSessions*: seq[NoTradingSessions]
      pmrTransactTime*: string
      pmrNoPositions*: seq[NoPositions]
      pmrAdjustmentType*: int
      pmrContraryInstructionIndicator*: bool
      pmrPriorSpreadIndicator*: bool
      pmrThresholdAmount*: float
      pmrText*: string
      pmrEncodedTextLen*: uint
      pmrEncodedText*: string
    of PositionMaintenanceReport:
      pmrPosMaintRptID*: string
      pmrPosTransType*: int
      pmrPosReqID*: string
      pmrPosMaintAction*: int
      pmrOrigPosReqRefID*: string
      pmrPosMaintStatus*: int
      pmrPosMaintResult*: int
      pmrClearingBusinessDate*: string
      pmrSettlSessID*: string
      pmrSettlSessSubID*: string
      pmrNoPartyIDs*: seq[NoPartyIDs]
      pmrAccount*: string
      pmrAcctIDSource*: int
      pmrAccountType*: int
      pmrSymbol*: string
      pmrSymbolSfx*: string
      pmrSecurityID*: string
      pmrSecurityIDSource*: string
      pmrNoSecurityAltID*: seq[NoSecurityAltID]
      pmrProduct*: int
      pmrCFICode*: string
      pmrSecurityType*: string
      pmrSecuritySubType*: string
      pmrMaturityMonthYear*: string
      pmrMaturityDate*: string
      pmrPutOrCall*: int
      pmrCouponPaymentDate*: string
      pmrIssueDate*: string
      pmrRepoCollateralSecurityType*: string
      pmrRepurchaseTerm*: int
      pmrRepurchaseRate*: float
      pmrFactor*: string
      pmrCreditRating*: string
      pmrInstrRegistry*: string
      pmrCountryOfIssue*: string
      pmrStateOrProvinceOfIssue*: string
      pmrLocaleOfIssue*: string
      pmrRedemptionDate*: string
      pmrStrikePrice*: float
      pmrStrikeCurrency*: string
      pmrOptAttribute*: char
      pmrContractMultiplier*: string
      pmrCouponRate*: float
      pmrSecurityExchange*: string
      pmrIssuer*: string
      pmrEncodedIssuerLen*: uint
      pmrEncodedIssuer*: string
      pmrSecurityDesc*: string
      pmrEncodedSecurityDescLen*: uint
      pmrEncodedSecurityDesc*: string
      pmrPool*: string
      pmrContractSettlMonth*: string
      pmrCPProgram*: int
      pmrCPRegType*: string
      pmrNoEvents*: seq[NoEvents]
      pmrDatedDate*: string
      pmrInterestAccrualDate*: string
      pmrCurrency*: string
      pmrNoLegs*: seq[NoLegs]
      pmrNoUnderlyings*: seq[NoUnderlyings]
      pmrNoTradingSessions*: seq[NoTradingSessions]
      pmrTransactTime*: string
      pmrNoPositions*: seq[NoPositions]
      pmrNoPosAmt*: seq[NoPosAmt]
      pmrAdjustmentType*: int
      pmrThresholdAmount*: float
      pmrText*: string
      pmrEncodedTextLen*: uint
      pmrEncodedText*: string
    of RequestForPositions:
      rfpPosReqID*: string
      rfpPosReqType*: int
      rfpMatchStatus*: char
      rfpSubscriptionRequestType*: char
      rfpNoPartyIDs*: seq[NoPartyIDs]
      rfpAccount*: string
      rfpAcctIDSource*: int
      rfpAccountType*: int
      rfpSymbol*: string
      rfpSymbolSfx*: string
      rfpSecurityID*: string
      rfpSecurityIDSource*: string
      rfpNoSecurityAltID*: seq[NoSecurityAltID]
      rfpProduct*: int
      rfpCFICode*: string
      rfpSecurityType*: string
      rfpSecuritySubType*: string
      rfpMaturityMonthYear*: string
      rfpMaturityDate*: string
      rfpPutOrCall*: int
      rfpCouponPaymentDate*: string
      rfpIssueDate*: string
      rfpRepoCollateralSecurityType*: string
      rfpRepurchaseTerm*: int
      rfpRepurchaseRate*: float
      rfpFactor*: string
      rfpCreditRating*: string
      rfpInstrRegistry*: string
      rfpCountryOfIssue*: string
      rfpStateOrProvinceOfIssue*: string
      rfpLocaleOfIssue*: string
      rfpRedemptionDate*: string
      rfpStrikePrice*: float
      rfpStrikeCurrency*: string
      rfpOptAttribute*: char
      rfpContractMultiplier*: string
      rfpCouponRate*: float
      rfpSecurityExchange*: string
      rfpIssuer*: string
      rfpEncodedIssuerLen*: uint
      rfpEncodedIssuer*: string
      rfpSecurityDesc*: string
      rfpEncodedSecurityDescLen*: uint
      rfpEncodedSecurityDesc*: string
      rfpPool*: string
      rfpContractSettlMonth*: string
      rfpCPProgram*: int
      rfpCPRegType*: string
      rfpNoEvents*: seq[NoEvents]
      rfpDatedDate*: string
      rfpInterestAccrualDate*: string
      rfpCurrency*: string
      rfpNoLegs*: seq[NoLegs]
      rfpNoUnderlyings*: seq[NoUnderlyings]
      rfpClearingBusinessDate*: string
      rfpSettlSessID*: string
      rfpSettlSessSubID*: string
      rfpNoTradingSessions*: seq[NoTradingSessions]
      rfpTransactTime*: string
      rfpResponseTransportType*: int
      rfpResponseDestination*: string
      rfpText*: string
      rfpEncodedTextLen*: uint
      rfpEncodedText*: string
    of RequestForPositionsAck:
      rfpaPosMaintRptID*: string
      rfpaPosReqID*: string
      rfpaTotalNumPosReports*: int
      rfpaUnsolicitedIndicator*: bool
      rfpaPosReqResult*: int
      rfpaPosReqStatus*: int
      rfpaNoPartyIDs*: seq[NoPartyIDs]
      rfpaAccount*: string
      rfpaAcctIDSource*: int
      rfpaAccountType*: int
      rfpaSymbol*: string
      rfpaSymbolSfx*: string
      rfpaSecurityID*: string
      rfpaSecurityIDSource*: string
      rfpaNoSecurityAltID*: seq[NoSecurityAltID]
      rfpaProduct*: int
      rfpaCFICode*: string
      rfpaSecurityType*: string
      rfpaSecuritySubType*: string
      rfpaMaturityMonthYear*: string
      rfpaMaturityDate*: string
      rfpaPutOrCall*: int
      rfpaCouponPaymentDate*: string
      rfpaIssueDate*: string
      rfpaRepoCollateralSecurityType*: string
      rfpaRepurchaseTerm*: int
      rfpaRepurchaseRate*: float
      rfpaFactor*: string
      rfpaCreditRating*: string
      rfpaInstrRegistry*: string
      rfpaCountryOfIssue*: string
      rfpaStateOrProvinceOfIssue*: string
      rfpaLocaleOfIssue*: string
      rfpaRedemptionDate*: string
      rfpaStrikePrice*: float
      rfpaStrikeCurrency*: string
      rfpaOptAttribute*: char
      rfpaContractMultiplier*: string
      rfpaCouponRate*: float
      rfpaSecurityExchange*: string
      rfpaIssuer*: string
      rfpaEncodedIssuerLen*: uint
      rfpaEncodedIssuer*: string
      rfpaSecurityDesc*: string
      rfpaEncodedSecurityDescLen*: uint
      rfpaEncodedSecurityDesc*: string
      rfpaPool*: string
      rfpaContractSettlMonth*: string
      rfpaCPProgram*: int
      rfpaCPRegType*: string
      rfpaNoEvents*: seq[NoEvents]
      rfpaDatedDate*: string
      rfpaInterestAccrualDate*: string
      rfpaCurrency*: string
      rfpaNoLegs*: seq[NoLegs]
      rfpaNoUnderlyings*: seq[NoUnderlyings]
      rfpaResponseTransportType*: int
      rfpaResponseDestination*: string
      rfpaText*: string
      rfpaEncodedTextLen*: uint
      rfpaEncodedText*: string
    of PositionReport:
      prPosMaintRptID*: string
      prPosReqID*: string
      prPosReqType*: int
      prSubscriptionRequestType*: char
      prTotalNumPosReports*: int
      prUnsolicitedIndicator*: bool
      prPosReqResult*: int
      prClearingBusinessDate*: string
      prSettlSessID*: string
      prSettlSessSubID*: string
      prNoPartyIDs*: seq[NoPartyIDs]
      prAccount*: string
      prAcctIDSource*: int
      prAccountType*: int
      prSymbol*: string
      prSymbolSfx*: string
      prSecurityID*: string
      prSecurityIDSource*: string
      prNoSecurityAltID*: seq[NoSecurityAltID]
      prProduct*: int
      prCFICode*: string
      prSecurityType*: string
      prSecuritySubType*: string
      prMaturityMonthYear*: string
      prMaturityDate*: string
      prPutOrCall*: int
      prCouponPaymentDate*: string
      prIssueDate*: string
      prRepoCollateralSecurityType*: string
      prRepurchaseTerm*: int
      prRepurchaseRate*: float
      prFactor*: string
      prCreditRating*: string
      prInstrRegistry*: string
      prCountryOfIssue*: string
      prStateOrProvinceOfIssue*: string
      prLocaleOfIssue*: string
      prRedemptionDate*: string
      prStrikePrice*: float
      prStrikeCurrency*: string
      prOptAttribute*: char
      prContractMultiplier*: string
      prCouponRate*: float
      prSecurityExchange*: string
      prIssuer*: string
      prEncodedIssuerLen*: uint
      prEncodedIssuer*: string
      prSecurityDesc*: string
      prEncodedSecurityDescLen*: uint
      prEncodedSecurityDesc*: string
      prPool*: string
      prContractSettlMonth*: string
      prCPProgram*: int
      prCPRegType*: string
      prNoEvents*: seq[NoEvents]
      prDatedDate*: string
      prInterestAccrualDate*: string
      prCurrency*: string
      prSettlPrice*: float
      prSettlPriceType*: int
      prPriorSettlPrice*: float
      prNoLegs*: seq[NoLegs]
      prNoUnderlyings*: seq[NoUnderlyings]
      prNoPositions*: seq[NoPositions]
      prNoPosAmt*: seq[NoPosAmt]
      prRegistStatus*: char
      prDeliveryDate*: string
      prText*: string
      prEncodedTextLen*: uint
      prEncodedText*: string
    of TradeCaptureReportRequestAck:
      tcrraTradeRequestID*: string
      tcrraTradeRequestType*: int
      tcrraSubscriptionRequestType*: char
      tcrraTotNumTradeReports*: int
      tcrraTradeRequestResult*: int
      tcrraTradeRequestStatus*: int
      tcrraSymbol*: string
      tcrraSymbolSfx*: string
      tcrraSecurityID*: string
      tcrraSecurityIDSource*: string
      tcrraNoSecurityAltID*: seq[NoSecurityAltID]
      tcrraProduct*: int
      tcrraCFICode*: string
      tcrraSecurityType*: string
      tcrraSecuritySubType*: string
      tcrraMaturityMonthYear*: string
      tcrraMaturityDate*: string
      tcrraPutOrCall*: int
      tcrraCouponPaymentDate*: string
      tcrraIssueDate*: string
      tcrraRepoCollateralSecurityType*: string
      tcrraRepurchaseTerm*: int
      tcrraRepurchaseRate*: float
      tcrraFactor*: string
      tcrraCreditRating*: string
      tcrraInstrRegistry*: string
      tcrraCountryOfIssue*: string
      tcrraStateOrProvinceOfIssue*: string
      tcrraLocaleOfIssue*: string
      tcrraRedemptionDate*: string
      tcrraStrikePrice*: float
      tcrraStrikeCurrency*: string
      tcrraOptAttribute*: char
      tcrraContractMultiplier*: string
      tcrraCouponRate*: float
      tcrraSecurityExchange*: string
      tcrraIssuer*: string
      tcrraEncodedIssuerLen*: uint
      tcrraEncodedIssuer*: string
      tcrraSecurityDesc*: string
      tcrraEncodedSecurityDescLen*: uint
      tcrraEncodedSecurityDesc*: string
      tcrraPool*: string
      tcrraContractSettlMonth*: string
      tcrraCPProgram*: int
      tcrraCPRegType*: string
      tcrraNoEvents*: seq[NoEvents]
      tcrraDatedDate*: string
      tcrraInterestAccrualDate*: string
      tcrraNoUnderlyings*: seq[NoUnderlyings]
      tcrraNoLegs*: seq[NoLegs]
      tcrraMultiLegReportingType*: char
      tcrraResponseTransportType*: int
      tcrraResponseDestination*: string
      tcrraText*: string
      tcrraEncodedTextLen*: uint
      tcrraEncodedText*: string
    of TradeCaptureReportAck:
      tcraTradeReportID*: string
      tcraTradeReportTransType*: int
      tcraTradeReportType*: int
      tcraTrdType*: int
      tcraTrdSubType*: int
      tcraSecondaryTrdType*: int
      tcraTransferReason*: string
      tcraExecType*: char
      tcraTradeReportRefID*: string
      tcraSecondaryTradeReportRefID*: string
      tcraTrdRptStatus*: int
      tcraTradeReportRejectReason*: int
      tcraSecondaryTradeReportID*: string
      tcraSubscriptionRequestType*: char
      tcraTradeLinkID*: string
      tcraTrdMatchID*: string
      tcraExecID*: string
      tcraSecondaryExecID*: string
      tcraSymbol*: string
      tcraSymbolSfx*: string
      tcraSecurityID*: string
      tcraSecurityIDSource*: string
      tcraNoSecurityAltID*: seq[NoSecurityAltID]
      tcraProduct*: int
      tcraCFICode*: string
      tcraSecurityType*: string
      tcraSecuritySubType*: string
      tcraMaturityMonthYear*: string
      tcraMaturityDate*: string
      tcraPutOrCall*: int
      tcraCouponPaymentDate*: string
      tcraIssueDate*: string
      tcraRepoCollateralSecurityType*: string
      tcraRepurchaseTerm*: int
      tcraRepurchaseRate*: float
      tcraFactor*: string
      tcraCreditRating*: string
      tcraInstrRegistry*: string
      tcraCountryOfIssue*: string
      tcraStateOrProvinceOfIssue*: string
      tcraLocaleOfIssue*: string
      tcraRedemptionDate*: string
      tcraStrikePrice*: float
      tcraStrikeCurrency*: string
      tcraOptAttribute*: char
      tcraContractMultiplier*: string
      tcraCouponRate*: float
      tcraSecurityExchange*: string
      tcraIssuer*: string
      tcraEncodedIssuerLen*: uint
      tcraEncodedIssuer*: string
      tcraSecurityDesc*: string
      tcraEncodedSecurityDescLen*: uint
      tcraEncodedSecurityDesc*: string
      tcraPool*: string
      tcraContractSettlMonth*: string
      tcraCPProgram*: int
      tcraCPRegType*: string
      tcraNoEvents*: seq[NoEvents]
      tcraDatedDate*: string
      tcraInterestAccrualDate*: string
      tcraTransactTime*: string
      tcraNoTrdRegTimestamps*: seq[NoTrdRegTimestamps]
      tcraResponseTransportType*: int
      tcraResponseDestination*: string
      tcraText*: string
      tcraEncodedTextLen*: uint
      tcraEncodedText*: string
      tcraNoLegs*: seq[NoLegs]
      tcraClearingFeeIndicator*: string
      tcraOrderCapacity*: char
      tcraOrderRestrictions*: string
      tcraCustOrderCapacity*: int
      tcraAccount*: string
      tcraAcctIDSource*: int
      tcraAccountType*: int
      tcraPositionEffect*: char
      tcraPreallocMethod*: char
      tcraNoAllocs*: seq[NoAllocs]
    of AllocationReport:
      arAllocReportID*: string
      arAllocID*: string
      arAllocTransType*: char
      arAllocReportRefID*: string
      arAllocCancReplaceReason*: int
      arSecondaryAllocID*: string
      arAllocReportType*: int
      arAllocStatus*: int
      arAllocRejCode*: int
      arRefAllocID*: string
      arAllocIntermedReqType*: int
      arAllocLinkID*: string
      arAllocLinkType*: int
      arBookingRefID*: string
      arAllocNoOrdersType*: int
      arNoOrders*: seq[NoOrders]
      arNoExecs*: seq[NoExecs]
      arPreviouslyReported*: bool
      arReversalIndicator*: bool
      arMatchType*: string
      arSide*: char
      arSymbol*: string
      arSymbolSfx*: string
      arSecurityID*: string
      arSecurityIDSource*: string
      arNoSecurityAltID*: seq[NoSecurityAltID]
      arProduct*: int
      arCFICode*: string
      arSecurityType*: string
      arSecuritySubType*: string
      arMaturityMonthYear*: string
      arMaturityDate*: string
      arPutOrCall*: int
      arCouponPaymentDate*: string
      arIssueDate*: string
      arRepoCollateralSecurityType*: string
      arRepurchaseTerm*: int
      arRepurchaseRate*: float
      arFactor*: string
      arCreditRating*: string
      arInstrRegistry*: string
      arCountryOfIssue*: string
      arStateOrProvinceOfIssue*: string
      arLocaleOfIssue*: string
      arRedemptionDate*: string
      arStrikePrice*: float
      arStrikeCurrency*: string
      arOptAttribute*: char
      arContractMultiplier*: string
      arCouponRate*: float
      arSecurityExchange*: string
      arIssuer*: string
      arEncodedIssuerLen*: uint
      arEncodedIssuer*: string
      arSecurityDesc*: string
      arEncodedSecurityDescLen*: uint
      arEncodedSecurityDesc*: string
      arPool*: string
      arContractSettlMonth*: string
      arCPProgram*: int
      arCPRegType*: string
      arNoEvents*: seq[NoEvents]
      arDatedDate*: string
      arInterestAccrualDate*: string
      arDeliveryForm*: int
      arPctAtRisk*: float
      arNoInstrAttrib*: seq[NoInstrAttrib]
      arAgreementDesc*: string
      arAgreementID*: string
      arAgreementDate*: string
      arAgreementCurrency*: string
      arTerminationType*: int
      arStartDate*: string
      arEndDate*: string
      arDeliveryType*: int
      arMarginRatio*: float
      arNoUnderlyings*: seq[NoUnderlyings]
      arNoLegs*: seq[NoLegs]
      arQuantity*: int
      arQtyType*: int
      arLastMkt*: string
      arTradeOriginationDate*: string
      arTradingSessionID*: string
      arTradingSessionSubID*: string
      arPriceType*: int
      arAvgPx*: float
      arAvgParPx*: float
      arSpread*: float
      arBenchmarkCurveCurrency*: string
      arBenchmarkCurveName*: string
      arBenchmarkCurvePoint*: string
      arBenchmarkPrice*: float
      arBenchmarkPriceType*: int
      arBenchmarkSecurityID*: string
      arBenchmarkSecurityIDSource*: string
      arCurrency*: string
      arAvgPxPrecision*: int
      arNoPartyIDs*: seq[NoPartyIDs]
      arTradeDate*: string
      arTransactTime*: string
      arSettlType*: char
      arSettlDate*: string
      arBookingType*: int
      arGrossTradeAmt*: uint
      arConcession*: uint
      arTotalTakedown*: uint
      arNetMoney*: uint
      arPositionEffect*: char
      arAutoAcceptIndicator*: bool
      arText*: string
      arEncodedTextLen*: uint
      arEncodedText*: string
      arNumDaysInterest*: int
      arAccruedInterestRate*: float
      arAccruedInterestAmt*: uint
      arTotalAccruedInterestAmt*: uint
      arInterestAtMaturity*: uint
      arEndAccruedInterestAmt*: uint
      arStartCash*: uint
      arEndCash*: uint
      arLegalConfirm*: bool
      arNoStipulations*: seq[NoStipulations]
      arYieldType*: string
      arYield*: float
      arYieldCalcDate*: string
      arYieldRedemptionDate*: string
      arYieldRedemptionPrice*: float
      arYieldRedemptionPriceType*: int
      arTotNoAllocs*: int
      arLastFragment*: bool
      arNoAllocs*: seq[NoAllocs]
    of AllocationReportAck:
      araAllocReportID*: string
      araAllocID*: string
      araNoPartyIDs*: seq[NoPartyIDs]
      araSecondaryAllocID*: string
      araTradeDate*: string
      araTransactTime*: string
      araAllocStatus*: int
      araAllocRejCode*: int
      araAllocReportType*: int
      araAllocIntermedReqType*: int
      araMatchStatus*: char
      araProduct*: int
      araSecurityType*: string
      araText*: string
      araEncodedTextLen*: uint
      araEncodedText*: string
      araNoAllocs*: seq[NoAllocs]
    of ConfirmationAck:
      caConfirmID*: string
      caTradeDate*: string
      caTransactTime*: string
      caAffirmStatus*: int
      caConfirmRejReason*: int
      caMatchStatus*: char
      caText*: string
      caEncodedTextLen*: uint
      caEncodedText*: string
    of SettlementInstructionRequest:
      sirSettlInstReqID*: string
      sirTransactTime*: string
      sirNoPartyIDs*: seq[NoPartyIDs]
      sirAllocAccount*: string
      sirAllocAcctIDSource*: int
      sirSide*: char
      sirProduct*: int
      sirSecurityType*: string
      sirCFICode*: string
      sirEffectiveTime*: string
      sirExpireTime*: string
      sirLastUpdateTime*: string
      sirStandInstDbType*: int
      sirStandInstDbName*: string
      sirStandInstDbID*: string
    of AssignmentReport:
      arAsgnRptID*: string
      arTotNumAssignmentReports*: int
      arLastRptRequested*: bool
      arNoPartyIDs*: seq[NoPartyIDs]
      arAccount*: string
      arAccountType*: int
      arSymbol*: string
      arSymbolSfx*: string
      arSecurityID*: string
      arSecurityIDSource*: string
      arNoSecurityAltID*: seq[NoSecurityAltID]
      arProduct*: int
      arCFICode*: string
      arSecurityType*: string
      arSecuritySubType*: string
      arMaturityMonthYear*: string
      arMaturityDate*: string
      arPutOrCall*: int
      arCouponPaymentDate*: string
      arIssueDate*: string
      arRepoCollateralSecurityType*: string
      arRepurchaseTerm*: int
      arRepurchaseRate*: float
      arFactor*: string
      arCreditRating*: string
      arInstrRegistry*: string
      arCountryOfIssue*: string
      arStateOrProvinceOfIssue*: string
      arLocaleOfIssue*: string
      arRedemptionDate*: string
      arStrikePrice*: float
      arStrikeCurrency*: string
      arOptAttribute*: char
      arContractMultiplier*: string
      arCouponRate*: float
      arSecurityExchange*: string
      arIssuer*: string
      arEncodedIssuerLen*: uint
      arEncodedIssuer*: string
      arSecurityDesc*: string
      arEncodedSecurityDescLen*: uint
      arEncodedSecurityDesc*: string
      arPool*: string
      arContractSettlMonth*: string
      arCPProgram*: int
      arCPRegType*: string
      arNoEvents*: seq[NoEvents]
      arDatedDate*: string
      arInterestAccrualDate*: string
      arCurrency*: string
      arNoLegs*: seq[NoLegs]
      arNoUnderlyings*: seq[NoUnderlyings]
      arNoPositions*: seq[NoPositions]
      arNoPosAmt*: seq[NoPosAmt]
      arThresholdAmount*: float
      arSettlPrice*: float
      arSettlPriceType*: int
      arUnderlyingSettlPrice*: float
      arExpireDate*: string
      arAssignmentMethod*: char
      arAssignmentUnit*: int
      arOpenInterest*: uint
      arExerciseMethod*: char
      arSettlSessID*: string
      arSettlSessSubID*: string
      arClearingBusinessDate*: string
      arText*: string
      arEncodedTextLen*: uint
      arEncodedText*: string
    of CollateralRequest:
      crCollReqID*: string
      crCollAsgnReason*: int
      crTransactTime*: string
      crExpireTime*: string
      crNoPartyIDs*: seq[NoPartyIDs]
      crAccount*: string
      crAccountType*: int
      crClOrdID*: string
      crOrderID*: string
      crSecondaryOrderID*: string
      crSecondaryClOrdID*: string
      crNoExecs*: seq[NoExecs]
      crNoTrades*: seq[NoTrades]
      crSymbol*: string
      crSymbolSfx*: string
      crSecurityID*: string
      crSecurityIDSource*: string
      crNoSecurityAltID*: seq[NoSecurityAltID]
      crProduct*: int
      crCFICode*: string
      crSecurityType*: string
      crSecuritySubType*: string
      crMaturityMonthYear*: string
      crMaturityDate*: string
      crPutOrCall*: int
      crCouponPaymentDate*: string
      crIssueDate*: string
      crRepoCollateralSecurityType*: string
      crRepurchaseTerm*: int
      crRepurchaseRate*: float
      crFactor*: string
      crCreditRating*: string
      crInstrRegistry*: string
      crCountryOfIssue*: string
      crStateOrProvinceOfIssue*: string
      crLocaleOfIssue*: string
      crRedemptionDate*: string
      crStrikePrice*: float
      crStrikeCurrency*: string
      crOptAttribute*: char
      crContractMultiplier*: string
      crCouponRate*: float
      crSecurityExchange*: string
      crIssuer*: string
      crEncodedIssuerLen*: uint
      crEncodedIssuer*: string
      crSecurityDesc*: string
      crEncodedSecurityDescLen*: uint
      crEncodedSecurityDesc*: string
      crPool*: string
      crContractSettlMonth*: string
      crCPProgram*: int
      crCPRegType*: string
      crNoEvents*: seq[NoEvents]
      crDatedDate*: string
      crInterestAccrualDate*: string
      crAgreementDesc*: string
      crAgreementID*: string
      crAgreementDate*: string
      crAgreementCurrency*: string
      crTerminationType*: int
      crStartDate*: string
      crEndDate*: string
      crDeliveryType*: int
      crMarginRatio*: float
      crSettlDate*: string
      crQuantity*: int
      crQtyType*: int
      crCurrency*: string
      crNoLegs*: seq[NoLegs]
      crNoUnderlyings*: seq[NoUnderlyings]
      crMarginExcess*: uint
      crTotalNetValue*: uint
      crCashOutstanding*: uint
      crNoTrdRegTimestamps*: seq[NoTrdRegTimestamps]
      crSide*: char
      crNoMiscFees*: seq[NoMiscFees]
      crPrice*: float
      crPriceType*: int
      crAccruedInterestAmt*: uint
      crEndAccruedInterestAmt*: uint
      crStartCash*: uint
      crEndCash*: uint
      crSpread*: float
      crBenchmarkCurveCurrency*: string
      crBenchmarkCurveName*: string
      crBenchmarkCurvePoint*: string
      crBenchmarkPrice*: float
      crBenchmarkPriceType*: int
      crBenchmarkSecurityID*: string
      crBenchmarkSecurityIDSource*: string
      crNoStipulations*: seq[NoStipulations]
      crTradingSessionID*: string
      crTradingSessionSubID*: string
      crSettlSessID*: string
      crSettlSessSubID*: string
      crClearingBusinessDate*: string
      crText*: string
      crEncodedTextLen*: uint
      crEncodedText*: string
    of CollateralAssignment:
      caCollAsgnID*: string
      caCollReqID*: string
      caCollAsgnReason*: int
      caCollAsgnTransType*: int
      caCollAsgnRefID*: string
      caTransactTime*: string
      caExpireTime*: string
      caNoPartyIDs*: seq[NoPartyIDs]
      caAccount*: string
      caAccountType*: int
      caClOrdID*: string
      caOrderID*: string
      caSecondaryOrderID*: string
      caSecondaryClOrdID*: string
      caNoExecs*: seq[NoExecs]
      caNoTrades*: seq[NoTrades]
      caSymbol*: string
      caSymbolSfx*: string
      caSecurityID*: string
      caSecurityIDSource*: string
      caNoSecurityAltID*: seq[NoSecurityAltID]
      caProduct*: int
      caCFICode*: string
      caSecurityType*: string
      caSecuritySubType*: string
      caMaturityMonthYear*: string
      caMaturityDate*: string
      caPutOrCall*: int
      caCouponPaymentDate*: string
      caIssueDate*: string
      caRepoCollateralSecurityType*: string
      caRepurchaseTerm*: int
      caRepurchaseRate*: float
      caFactor*: string
      caCreditRating*: string
      caInstrRegistry*: string
      caCountryOfIssue*: string
      caStateOrProvinceOfIssue*: string
      caLocaleOfIssue*: string
      caRedemptionDate*: string
      caStrikePrice*: float
      caStrikeCurrency*: string
      caOptAttribute*: char
      caContractMultiplier*: string
      caCouponRate*: float
      caSecurityExchange*: string
      caIssuer*: string
      caEncodedIssuerLen*: uint
      caEncodedIssuer*: string
      caSecurityDesc*: string
      caEncodedSecurityDescLen*: uint
      caEncodedSecurityDesc*: string
      caPool*: string
      caContractSettlMonth*: string
      caCPProgram*: int
      caCPRegType*: string
      caNoEvents*: seq[NoEvents]
      caDatedDate*: string
      caInterestAccrualDate*: string
      caAgreementDesc*: string
      caAgreementID*: string
      caAgreementDate*: string
      caAgreementCurrency*: string
      caTerminationType*: int
      caStartDate*: string
      caEndDate*: string
      caDeliveryType*: int
      caMarginRatio*: float
      caSettlDate*: string
      caQuantity*: int
      caQtyType*: int
      caCurrency*: string
      caNoLegs*: seq[NoLegs]
      caNoUnderlyings*: seq[NoUnderlyings]
      caMarginExcess*: uint
      caTotalNetValue*: uint
      caCashOutstanding*: uint
      caNoTrdRegTimestamps*: seq[NoTrdRegTimestamps]
      caSide*: char
      caNoMiscFees*: seq[NoMiscFees]
      caPrice*: float
      caPriceType*: int
      caAccruedInterestAmt*: uint
      caEndAccruedInterestAmt*: uint
      caStartCash*: uint
      caEndCash*: uint
      caSpread*: float
      caBenchmarkCurveCurrency*: string
      caBenchmarkCurveName*: string
      caBenchmarkCurvePoint*: string
      caBenchmarkPrice*: float
      caBenchmarkPriceType*: int
      caBenchmarkSecurityID*: string
      caBenchmarkSecurityIDSource*: string
      caNoStipulations*: seq[NoStipulations]
      caSettlDeliveryType*: int
      caStandInstDbType*: int
      caStandInstDbName*: string
      caStandInstDbID*: string
      caNoDlvyInst*: seq[NoDlvyInst]
      caTradingSessionID*: string
      caTradingSessionSubID*: string
      caSettlSessID*: string
      caSettlSessSubID*: string
      caClearingBusinessDate*: string
      caText*: string
      caEncodedTextLen*: uint
      caEncodedText*: string
    of CollateralResponse:
      crCollRespID*: string
      crCollAsgnID*: string
      crCollReqID*: string
      crCollAsgnReason*: int
      crCollAsgnTransType*: int
      crCollAsgnRespType*: int
      crCollAsgnRejectReason*: int
      crTransactTime*: string
      crNoPartyIDs*: seq[NoPartyIDs]
      crAccount*: string
      crAccountType*: int
      crClOrdID*: string
      crOrderID*: string
      crSecondaryOrderID*: string
      crSecondaryClOrdID*: string
      crNoExecs*: seq[NoExecs]
      crNoTrades*: seq[NoTrades]
      crSymbol*: string
      crSymbolSfx*: string
      crSecurityID*: string
      crSecurityIDSource*: string
      crNoSecurityAltID*: seq[NoSecurityAltID]
      crProduct*: int
      crCFICode*: string
      crSecurityType*: string
      crSecuritySubType*: string
      crMaturityMonthYear*: string
      crMaturityDate*: string
      crPutOrCall*: int
      crCouponPaymentDate*: string
      crIssueDate*: string
      crRepoCollateralSecurityType*: string
      crRepurchaseTerm*: int
      crRepurchaseRate*: float
      crFactor*: string
      crCreditRating*: string
      crInstrRegistry*: string
      crCountryOfIssue*: string
      crStateOrProvinceOfIssue*: string
      crLocaleOfIssue*: string
      crRedemptionDate*: string
      crStrikePrice*: float
      crStrikeCurrency*: string
      crOptAttribute*: char
      crContractMultiplier*: string
      crCouponRate*: float
      crSecurityExchange*: string
      crIssuer*: string
      crEncodedIssuerLen*: uint
      crEncodedIssuer*: string
      crSecurityDesc*: string
      crEncodedSecurityDescLen*: uint
      crEncodedSecurityDesc*: string
      crPool*: string
      crContractSettlMonth*: string
      crCPProgram*: int
      crCPRegType*: string
      crNoEvents*: seq[NoEvents]
      crDatedDate*: string
      crInterestAccrualDate*: string
      crAgreementDesc*: string
      crAgreementID*: string
      crAgreementDate*: string
      crAgreementCurrency*: string
      crTerminationType*: int
      crStartDate*: string
      crEndDate*: string
      crDeliveryType*: int
      crMarginRatio*: float
      crSettlDate*: string
      crQuantity*: int
      crQtyType*: int
      crCurrency*: string
      crNoLegs*: seq[NoLegs]
      crNoUnderlyings*: seq[NoUnderlyings]
      crMarginExcess*: uint
      crTotalNetValue*: uint
      crCashOutstanding*: uint
      crNoTrdRegTimestamps*: seq[NoTrdRegTimestamps]
      crSide*: char
      crNoMiscFees*: seq[NoMiscFees]
      crPrice*: float
      crPriceType*: int
      crAccruedInterestAmt*: uint
      crEndAccruedInterestAmt*: uint
      crStartCash*: uint
      crEndCash*: uint
      crSpread*: float
      crBenchmarkCurveCurrency*: string
      crBenchmarkCurveName*: string
      crBenchmarkCurvePoint*: string
      crBenchmarkPrice*: float
      crBenchmarkPriceType*: int
      crBenchmarkSecurityID*: string
      crBenchmarkSecurityIDSource*: string
      crNoStipulations*: seq[NoStipulations]
      crText*: string
      crEncodedTextLen*: uint
      crEncodedText*: string
    of CollateralReport:
      crCollRptID*: string
      crCollInquiryID*: string
      crCollStatus*: int
      crTotNumReports*: int
      crLastRptRequested*: bool
      crNoPartyIDs*: seq[NoPartyIDs]
      crAccount*: string
      crAccountType*: int
      crClOrdID*: string
      crOrderID*: string
      crSecondaryOrderID*: string
      crSecondaryClOrdID*: string
      crNoExecs*: seq[NoExecs]
      crNoTrades*: seq[NoTrades]
      crSymbol*: string
      crSymbolSfx*: string
      crSecurityID*: string
      crSecurityIDSource*: string
      crNoSecurityAltID*: seq[NoSecurityAltID]
      crProduct*: int
      crCFICode*: string
      crSecurityType*: string
      crSecuritySubType*: string
      crMaturityMonthYear*: string
      crMaturityDate*: string
      crPutOrCall*: int
      crCouponPaymentDate*: string
      crIssueDate*: string
      crRepoCollateralSecurityType*: string
      crRepurchaseTerm*: int
      crRepurchaseRate*: float
      crFactor*: string
      crCreditRating*: string
      crInstrRegistry*: string
      crCountryOfIssue*: string
      crStateOrProvinceOfIssue*: string
      crLocaleOfIssue*: string
      crRedemptionDate*: string
      crStrikePrice*: float
      crStrikeCurrency*: string
      crOptAttribute*: char
      crContractMultiplier*: string
      crCouponRate*: float
      crSecurityExchange*: string
      crIssuer*: string
      crEncodedIssuerLen*: uint
      crEncodedIssuer*: string
      crSecurityDesc*: string
      crEncodedSecurityDescLen*: uint
      crEncodedSecurityDesc*: string
      crPool*: string
      crContractSettlMonth*: string
      crCPProgram*: int
      crCPRegType*: string
      crNoEvents*: seq[NoEvents]
      crDatedDate*: string
      crInterestAccrualDate*: string
      crAgreementDesc*: string
      crAgreementID*: string
      crAgreementDate*: string
      crAgreementCurrency*: string
      crTerminationType*: int
      crStartDate*: string
      crEndDate*: string
      crDeliveryType*: int
      crMarginRatio*: float
      crSettlDate*: string
      crQuantity*: int
      crQtyType*: int
      crCurrency*: string
      crNoLegs*: seq[NoLegs]
      crNoUnderlyings*: seq[NoUnderlyings]
      crMarginExcess*: uint
      crTotalNetValue*: uint
      crCashOutstanding*: uint
      crNoTrdRegTimestamps*: seq[NoTrdRegTimestamps]
      crSide*: char
      crNoMiscFees*: seq[NoMiscFees]
      crPrice*: float
      crPriceType*: int
      crAccruedInterestAmt*: uint
      crEndAccruedInterestAmt*: uint
      crStartCash*: uint
      crEndCash*: uint
      crSpread*: float
      crBenchmarkCurveCurrency*: string
      crBenchmarkCurveName*: string
      crBenchmarkCurvePoint*: string
      crBenchmarkPrice*: float
      crBenchmarkPriceType*: int
      crBenchmarkSecurityID*: string
      crBenchmarkSecurityIDSource*: string
      crNoStipulations*: seq[NoStipulations]
      crSettlDeliveryType*: int
      crStandInstDbType*: int
      crStandInstDbName*: string
      crStandInstDbID*: string
      crNoDlvyInst*: seq[NoDlvyInst]
      crTradingSessionID*: string
      crTradingSessionSubID*: string
      crSettlSessID*: string
      crSettlSessSubID*: string
      crClearingBusinessDate*: string
      crText*: string
      crEncodedTextLen*: uint
      crEncodedText*: string
    of CollateralInquiry:
      ciCollInquiryID*: string
      ciNoCollInquiryQualifier*: seq[NoCollInquiryQualifier]
      ciSubscriptionRequestType*: char
      ciResponseTransportType*: int
      ciResponseDestination*: string
      ciNoPartyIDs*: seq[NoPartyIDs]
      ciAccount*: string
      ciAccountType*: int
      ciClOrdID*: string
      ciOrderID*: string
      ciSecondaryOrderID*: string
      ciSecondaryClOrdID*: string
      ciNoExecs*: seq[NoExecs]
      ciNoTrades*: seq[NoTrades]
      ciSymbol*: string
      ciSymbolSfx*: string
      ciSecurityID*: string
      ciSecurityIDSource*: string
      ciNoSecurityAltID*: seq[NoSecurityAltID]
      ciProduct*: int
      ciCFICode*: string
      ciSecurityType*: string
      ciSecuritySubType*: string
      ciMaturityMonthYear*: string
      ciMaturityDate*: string
      ciPutOrCall*: int
      ciCouponPaymentDate*: string
      ciIssueDate*: string
      ciRepoCollateralSecurityType*: string
      ciRepurchaseTerm*: int
      ciRepurchaseRate*: float
      ciFactor*: string
      ciCreditRating*: string
      ciInstrRegistry*: string
      ciCountryOfIssue*: string
      ciStateOrProvinceOfIssue*: string
      ciLocaleOfIssue*: string
      ciRedemptionDate*: string
      ciStrikePrice*: float
      ciStrikeCurrency*: string
      ciOptAttribute*: char
      ciContractMultiplier*: string
      ciCouponRate*: float
      ciSecurityExchange*: string
      ciIssuer*: string
      ciEncodedIssuerLen*: uint
      ciEncodedIssuer*: string
      ciSecurityDesc*: string
      ciEncodedSecurityDescLen*: uint
      ciEncodedSecurityDesc*: string
      ciPool*: string
      ciContractSettlMonth*: string
      ciCPProgram*: int
      ciCPRegType*: string
      ciNoEvents*: seq[NoEvents]
      ciDatedDate*: string
      ciInterestAccrualDate*: string
      ciAgreementDesc*: string
      ciAgreementID*: string
      ciAgreementDate*: string
      ciAgreementCurrency*: string
      ciTerminationType*: int
      ciStartDate*: string
      ciEndDate*: string
      ciDeliveryType*: int
      ciMarginRatio*: float
      ciSettlDate*: string
      ciQuantity*: int
      ciQtyType*: int
      ciCurrency*: string
      ciNoLegs*: seq[NoLegs]
      ciNoUnderlyings*: seq[NoUnderlyings]
      ciMarginExcess*: uint
      ciTotalNetValue*: uint
      ciCashOutstanding*: uint
      ciNoTrdRegTimestamps*: seq[NoTrdRegTimestamps]
      ciSide*: char
      ciPrice*: float
      ciPriceType*: int
      ciAccruedInterestAmt*: uint
      ciEndAccruedInterestAmt*: uint
      ciStartCash*: uint
      ciEndCash*: uint
      ciSpread*: float
      ciBenchmarkCurveCurrency*: string
      ciBenchmarkCurveName*: string
      ciBenchmarkCurvePoint*: string
      ciBenchmarkPrice*: float
      ciBenchmarkPriceType*: int
      ciBenchmarkSecurityID*: string
      ciBenchmarkSecurityIDSource*: string
      ciNoStipulations*: seq[NoStipulations]
      ciSettlDeliveryType*: int
      ciStandInstDbType*: int
      ciStandInstDbName*: string
      ciStandInstDbID*: string
      ciNoDlvyInst*: seq[NoDlvyInst]
      ciTradingSessionID*: string
      ciTradingSessionSubID*: string
      ciSettlSessID*: string
      ciSettlSessSubID*: string
      ciClearingBusinessDate*: string
      ciText*: string
      ciEncodedTextLen*: uint
      ciEncodedText*: string
    of NetworkCounterpartySystemStatusRequest:
      ncssrNetworkRequestType*: int
      ncssrNetworkRequestID*: string
      ncssrNoCompIDs*: seq[NoCompIDs]
    of NetworkCounterpartySystemStatusResponse:
      ncssrNetworkStatusResponseType*: int
      ncssrNetworkRequestID*: string
      ncssrNetworkResponseID*: string
      ncssrLastNetworkResponseID*: string
      ncssrNoCompIDs*: seq[NoCompIDs]
    of UserRequest:
      urUserRequestID*: string
      urUserRequestType*: int
      urUsername*: string
      urPassword*: string
      urNewPassword*: string
      urRawDataLength*: uint
      urRawData*: string
    of UserResponse:
      urUserRequestID*: string
      urUsername*: string
      urUserStatus*: int
      urUserStatusText*: string
    of CollateralInquiryAck:
      ciaCollInquiryID*: string
      ciaCollInquiryStatus*: int
      ciaCollInquiryResult*: int
      ciaNoCollInquiryQualifier*: seq[NoCollInquiryQualifier]
      ciaTotNumReports*: int
      ciaNoPartyIDs*: seq[NoPartyIDs]
      ciaAccount*: string
      ciaAccountType*: int
      ciaClOrdID*: string
      ciaOrderID*: string
      ciaSecondaryOrderID*: string
      ciaSecondaryClOrdID*: string
      ciaNoExecs*: seq[NoExecs]
      ciaNoTrades*: seq[NoTrades]
      ciaSymbol*: string
      ciaSymbolSfx*: string
      ciaSecurityID*: string
      ciaSecurityIDSource*: string
      ciaNoSecurityAltID*: seq[NoSecurityAltID]
      ciaProduct*: int
      ciaCFICode*: string
      ciaSecurityType*: string
      ciaSecuritySubType*: string
      ciaMaturityMonthYear*: string
      ciaMaturityDate*: string
      ciaPutOrCall*: int
      ciaCouponPaymentDate*: string
      ciaIssueDate*: string
      ciaRepoCollateralSecurityType*: string
      ciaRepurchaseTerm*: int
      ciaRepurchaseRate*: float
      ciaFactor*: string
      ciaCreditRating*: string
      ciaInstrRegistry*: string
      ciaCountryOfIssue*: string
      ciaStateOrProvinceOfIssue*: string
      ciaLocaleOfIssue*: string
      ciaRedemptionDate*: string
      ciaStrikePrice*: float
      ciaStrikeCurrency*: string
      ciaOptAttribute*: char
      ciaContractMultiplier*: string
      ciaCouponRate*: float
      ciaSecurityExchange*: string
      ciaIssuer*: string
      ciaEncodedIssuerLen*: uint
      ciaEncodedIssuer*: string
      ciaSecurityDesc*: string
      ciaEncodedSecurityDescLen*: uint
      ciaEncodedSecurityDesc*: string
      ciaPool*: string
      ciaContractSettlMonth*: string
      ciaCPProgram*: int
      ciaCPRegType*: string
      ciaNoEvents*: seq[NoEvents]
      ciaDatedDate*: string
      ciaInterestAccrualDate*: string
      ciaAgreementDesc*: string
      ciaAgreementID*: string
      ciaAgreementDate*: string
      ciaAgreementCurrency*: string
      ciaTerminationType*: int
      ciaStartDate*: string
      ciaEndDate*: string
      ciaDeliveryType*: int
      ciaMarginRatio*: float
      ciaSettlDate*: string
      ciaQuantity*: int
      ciaQtyType*: int
      ciaCurrency*: string
      ciaNoLegs*: seq[NoLegs]
      ciaNoUnderlyings*: seq[NoUnderlyings]
      ciaTradingSessionID*: string
      ciaTradingSessionSubID*: string
      ciaSettlSessID*: string
      ciaSettlSessSubID*: string
      ciaClearingBusinessDate*: string
      ciaResponseTransportType*: int
      ciaResponseDestination*: string
      ciaText*: string
      ciaEncodedTextLen*: uint
      ciaEncodedText*: string
    of ConfirmationRequest:
      crConfirmReqID*: string
      crConfirmType*: int
      crNoOrders*: seq[NoOrders]
      crAllocID*: string
      crSecondaryAllocID*: string
      crIndividualAllocID*: string
      crTransactTime*: string
      crAllocAccount*: string
      crAllocAcctIDSource*: int
      crAllocAccountType*: int
      crText*: string
      crEncodedTextLen*: uint
      crEncodedText*: string
    signatureLength*: uint
    signature*: string
    checkSum*: string

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
    of 437: parseInt(s, v.contraTradeQty, pos)
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
    of 38: parseInt(s, v.orderQty, pos)
    of 152: parseInt(s, v.cashOrderQty, pos)
    of 516: parseFloat(s, v.orderPercent, pos)
    of 468: parseChar(s, v.roundingDirection, pos)
    of 469: parseStr(s, v.roundingModulus, pos)
    of 63: parseChar(s, v.settlType, pos)
    of 64: parseStr(s, v.settlDate, pos)
    of 193: parseStr(s, v.settlDate2, pos)
    of 192: parseInt(s, v.orderQty2, pos)
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
    of 561: parseInt(s, v.roundLot, pos)
    of 562: parseInt(s, v.minTradeVol, pos)
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
    of 110: parseInt(s, v.minQty, pos)
    of 111: parseInt(s, v.maxFloor, pos)
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
    of 38: parseInt(s, v.orderQty, pos)
    of 152: parseInt(s, v.cashOrderQty, pos)
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
    of 192: parseInt(s, v.orderQty2, pos)
    of 640: parseFloat(s, v.price2, pos)
    of 77: parseChar(s, v.positionEffect, pos)
    of 203: parseInt(s, v.coveredOrUncovered, pos)
    of 210: parseInt(s, v.maxShow, pos)
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
    of 800: parseInt(s, v.orderBookingQty, pos)
    of 14: parseInt(s, v.cumQty, pos)
    of 39: parseChar(s, v.ordStatus, pos)
    of 636: parseBool(s, v.workingIndicator, pos)
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
    of 32: parseInt(s, v.lastQty, pos)
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
    of 271: parseInt(s, v.mDEntrySize, pos)
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
    of 110: parseInt(s, v.minQty, pos)
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
    of 879: parseInt(s, v.underlyingQty, pos)
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
    of 134: parseInt(s, v.bidSize, pos)
    of 135: parseInt(s, v.offerSize, pos)
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
    of 192: parseInt(s, v.orderQty2, pos)
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
    of 38: parseInt(s, v.orderQty, pos)
    of 152: parseInt(s, v.cashOrderQty, pos)
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
    of 673: parseInt(s, v.legAllocQty, pos)
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
    of 80: parseInt(s, v.allocQty, pos)
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
    of 879: parseInt(s, v.underlyingQty, pos)
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
    of 687: parseInt(s, v.legQty, pos)
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
    of 863: parseInt(s, v.orderCapacityQty, pos)
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
    of 704: parseInt(s, v.longQty, pos)
    of 705: parseInt(s, v.shortQty, pos)
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

proc parseHeartbeat(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("0", "Heartbeat"))
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
    of 112: parseStr(s, result.hTestReqID, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseTestRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("1", "TestRequest"))
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
    of 112: parseStr(s, result.trTestReqID, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseResendRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("2", "ResendRequest"))
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
    of 7: parseUInt(s, result.rrBeginSeqNo, pos)
    of 16: parseUInt(s, result.rrEndSeqNo, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseReject(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("3", "Reject"))
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
    of 45: parseUInt(s, result.rRefSeqNum, pos)
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

proc parseSequenceReset(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("4", "SequenceReset"))
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
    of 123: parseBool(s, result.srGapFillFlag, pos)
    of 36: parseUInt(s, result.srNewSeqNo, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseLogout(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("5", "Logout"))
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
    of 58: parseStr(s, result.lText, pos)
    of 354: parseUInt(s, result.lEncodedTextLen, pos)
    of 355: parseStr(s, result.lEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseIOI(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("6", "IOI"))
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
    of 23: parseStr(s, result.ioiIOIID, pos)
    of 28: parseChar(s, result.ioiIOITransType, pos)
    of 26: parseStr(s, result.ioiIOIRefID, pos)
    of 55: parseStr(s, result.ioiSymbol, pos)
    of 65: parseStr(s, result.ioiSymbolSfx, pos)
    of 48: parseStr(s, result.ioiSecurityID, pos)
    of 22: parseStr(s, result.ioiSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.ioiNoSecurityAltID, pos)
    of 460: parseInt(s, result.ioiProduct, pos)
    of 461: parseStr(s, result.ioiCFICode, pos)
    of 167: parseStr(s, result.ioiSecurityType, pos)
    of 762: parseStr(s, result.ioiSecuritySubType, pos)
    of 200: parseStr(s, result.ioiMaturityMonthYear, pos)
    of 541: parseStr(s, result.ioiMaturityDate, pos)
    of 201: parseInt(s, result.ioiPutOrCall, pos)
    of 224: parseStr(s, result.ioiCouponPaymentDate, pos)
    of 225: parseStr(s, result.ioiIssueDate, pos)
    of 239: parseStr(s, result.ioiRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.ioiRepurchaseTerm, pos)
    of 227: parseFloat(s, result.ioiRepurchaseRate, pos)
    of 228: parseStr(s, result.ioiFactor, pos)
    of 255: parseStr(s, result.ioiCreditRating, pos)
    of 543: parseStr(s, result.ioiInstrRegistry, pos)
    of 470: parseStr(s, result.ioiCountryOfIssue, pos)
    of 471: parseStr(s, result.ioiStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.ioiLocaleOfIssue, pos)
    of 240: parseStr(s, result.ioiRedemptionDate, pos)
    of 202: parseFloat(s, result.ioiStrikePrice, pos)
    of 947: parseStr(s, result.ioiStrikeCurrency, pos)
    of 206: parseChar(s, result.ioiOptAttribute, pos)
    of 231: parseStr(s, result.ioiContractMultiplier, pos)
    of 223: parseFloat(s, result.ioiCouponRate, pos)
    of 207: parseStr(s, result.ioiSecurityExchange, pos)
    of 106: parseStr(s, result.ioiIssuer, pos)
    of 348: parseUInt(s, result.ioiEncodedIssuerLen, pos)
    of 349: parseStr(s, result.ioiEncodedIssuer, pos)
    of 107: parseStr(s, result.ioiSecurityDesc, pos)
    of 350: parseUInt(s, result.ioiEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.ioiEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.ioiPool, pos)
    of 667: parseStr(s, result.ioiContractSettlMonth, pos)
    of 875: parseInt(s, result.ioiCPProgram, pos)
    of 876: parseStr(s, result.ioiCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.ioiNoEvents, pos)
    of 873: parseStr(s, result.ioiDatedDate, pos)
    of 874: parseStr(s, result.ioiInterestAccrualDate, pos)
    of 913: parseStr(s, result.ioiAgreementDesc, pos)
    of 914: parseStr(s, result.ioiAgreementID, pos)
    of 915: parseStr(s, result.ioiAgreementDate, pos)
    of 918: parseStr(s, result.ioiAgreementCurrency, pos)
    of 788: parseInt(s, result.ioiTerminationType, pos)
    of 916: parseStr(s, result.ioiStartDate, pos)
    of 917: parseStr(s, result.ioiEndDate, pos)
    of 919: parseInt(s, result.ioiDeliveryType, pos)
    of 898: parseFloat(s, result.ioiMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.ioiNoUnderlyings, pos)
    of 54: parseChar(s, result.ioiSide, pos)
    of 854: parseInt(s, result.ioiQtyType, pos)
    of 38: parseInt(s, result.ioiOrderQty, pos)
    of 152: parseInt(s, result.ioiCashOrderQty, pos)
    of 516: parseFloat(s, result.ioiOrderPercent, pos)
    of 468: parseChar(s, result.ioiRoundingDirection, pos)
    of 469: parseStr(s, result.ioiRoundingModulus, pos)
    of 27: parseStr(s, result.ioiIOIQty, pos)
    of 15: parseStr(s, result.ioiCurrency, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.ioiNoStipulations, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.ioiNoLegs, pos)
    of 423: parseInt(s, result.ioiPriceType, pos)
    of 44: parseFloat(s, result.ioiPrice, pos)
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
    of 218: parseFloat(s, result.ioiSpread, pos)
    of 220: parseStr(s, result.ioiBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.ioiBenchmarkCurveName, pos)
    of 222: parseStr(s, result.ioiBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.ioiBenchmarkPrice, pos)
    of 663: parseInt(s, result.ioiBenchmarkPriceType, pos)
    of 699: parseStr(s, result.ioiBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.ioiBenchmarkSecurityIDSource, pos)
    of 235: parseStr(s, result.ioiYieldType, pos)
    of 236: parseFloat(s, result.ioiYield, pos)
    of 701: parseStr(s, result.ioiYieldCalcDate, pos)
    of 696: parseStr(s, result.ioiYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.ioiYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.ioiYieldRedemptionPriceType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseAdvertisement(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("7", "Advertisement"))
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
    of 2: parseStr(s, result.aAdvId, pos)
    of 5: parseStr(s, result.aAdvTransType, pos)
    of 3: parseStr(s, result.aAdvRefID, pos)
    of 55: parseStr(s, result.aSymbol, pos)
    of 65: parseStr(s, result.aSymbolSfx, pos)
    of 48: parseStr(s, result.aSecurityID, pos)
    of 22: parseStr(s, result.aSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.aNoSecurityAltID, pos)
    of 460: parseInt(s, result.aProduct, pos)
    of 461: parseStr(s, result.aCFICode, pos)
    of 167: parseStr(s, result.aSecurityType, pos)
    of 762: parseStr(s, result.aSecuritySubType, pos)
    of 200: parseStr(s, result.aMaturityMonthYear, pos)
    of 541: parseStr(s, result.aMaturityDate, pos)
    of 201: parseInt(s, result.aPutOrCall, pos)
    of 224: parseStr(s, result.aCouponPaymentDate, pos)
    of 225: parseStr(s, result.aIssueDate, pos)
    of 239: parseStr(s, result.aRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.aRepurchaseTerm, pos)
    of 227: parseFloat(s, result.aRepurchaseRate, pos)
    of 228: parseStr(s, result.aFactor, pos)
    of 255: parseStr(s, result.aCreditRating, pos)
    of 543: parseStr(s, result.aInstrRegistry, pos)
    of 470: parseStr(s, result.aCountryOfIssue, pos)
    of 471: parseStr(s, result.aStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.aLocaleOfIssue, pos)
    of 240: parseStr(s, result.aRedemptionDate, pos)
    of 202: parseFloat(s, result.aStrikePrice, pos)
    of 947: parseStr(s, result.aStrikeCurrency, pos)
    of 206: parseChar(s, result.aOptAttribute, pos)
    of 231: parseStr(s, result.aContractMultiplier, pos)
    of 223: parseFloat(s, result.aCouponRate, pos)
    of 207: parseStr(s, result.aSecurityExchange, pos)
    of 106: parseStr(s, result.aIssuer, pos)
    of 348: parseUInt(s, result.aEncodedIssuerLen, pos)
    of 349: parseStr(s, result.aEncodedIssuer, pos)
    of 107: parseStr(s, result.aSecurityDesc, pos)
    of 350: parseUInt(s, result.aEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.aEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.aPool, pos)
    of 667: parseStr(s, result.aContractSettlMonth, pos)
    of 875: parseInt(s, result.aCPProgram, pos)
    of 876: parseStr(s, result.aCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.aNoEvents, pos)
    of 873: parseStr(s, result.aDatedDate, pos)
    of 874: parseStr(s, result.aInterestAccrualDate, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.aNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.aNoUnderlyings, pos)
    of 4: parseChar(s, result.aAdvSide, pos)
    of 53: parseInt(s, result.aQuantity, pos)
    of 854: parseInt(s, result.aQtyType, pos)
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
    of 625: parseStr(s, result.aTradingSessionSubID, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseExecutionReport(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("8", "ExecutionReport"))
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
    of 37: parseStr(s, result.erOrderID, pos)
    of 198: parseStr(s, result.erSecondaryOrderID, pos)
    of 526: parseStr(s, result.erSecondaryClOrdID, pos)
    of 527: parseStr(s, result.erSecondaryExecID, pos)
    of 11: parseStr(s, result.erClOrdID, pos)
    of 41: parseStr(s, result.erOrigClOrdID, pos)
    of 583: parseStr(s, result.erClOrdLinkID, pos)
    of 693: parseStr(s, result.erQuoteRespID, pos)
    of 790: parseStr(s, result.erOrdStatusReqID, pos)
    of 584: parseStr(s, result.erMassStatusReqID, pos)
    of 911: parseInt(s, result.erTotNumReports, pos)
    of 912: parseBool(s, result.erLastRptRequested, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.erNoPartyIDs, pos)
    of 229: parseStr(s, result.erTradeOriginationDate, pos)
    of 382: skipValue(s, pos); parseNoContraBrokers(s, result.erNoContraBrokers, pos)
    of 66: parseStr(s, result.erListID, pos)
    of 548: parseStr(s, result.erCrossID, pos)
    of 551: parseStr(s, result.erOrigCrossID, pos)
    of 549: parseInt(s, result.erCrossType, pos)
    of 17: parseStr(s, result.erExecID, pos)
    of 19: parseStr(s, result.erExecRefID, pos)
    of 150: parseChar(s, result.erExecType, pos)
    of 39: parseChar(s, result.erOrdStatus, pos)
    of 636: parseBool(s, result.erWorkingIndicator, pos)
    of 103: parseInt(s, result.erOrdRejReason, pos)
    of 378: parseInt(s, result.erExecRestatementReason, pos)
    of 1: parseStr(s, result.erAccount, pos)
    of 660: parseInt(s, result.erAcctIDSource, pos)
    of 581: parseInt(s, result.erAccountType, pos)
    of 589: parseChar(s, result.erDayBookingInst, pos)
    of 590: parseChar(s, result.erBookingUnit, pos)
    of 591: parseChar(s, result.erPreallocMethod, pos)
    of 63: parseChar(s, result.erSettlType, pos)
    of 64: parseStr(s, result.erSettlDate, pos)
    of 544: parseChar(s, result.erCashMargin, pos)
    of 635: parseStr(s, result.erClearingFeeIndicator, pos)
    of 55: parseStr(s, result.erSymbol, pos)
    of 65: parseStr(s, result.erSymbolSfx, pos)
    of 48: parseStr(s, result.erSecurityID, pos)
    of 22: parseStr(s, result.erSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.erNoSecurityAltID, pos)
    of 460: parseInt(s, result.erProduct, pos)
    of 461: parseStr(s, result.erCFICode, pos)
    of 167: parseStr(s, result.erSecurityType, pos)
    of 762: parseStr(s, result.erSecuritySubType, pos)
    of 200: parseStr(s, result.erMaturityMonthYear, pos)
    of 541: parseStr(s, result.erMaturityDate, pos)
    of 201: parseInt(s, result.erPutOrCall, pos)
    of 224: parseStr(s, result.erCouponPaymentDate, pos)
    of 225: parseStr(s, result.erIssueDate, pos)
    of 239: parseStr(s, result.erRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.erRepurchaseTerm, pos)
    of 227: parseFloat(s, result.erRepurchaseRate, pos)
    of 228: parseStr(s, result.erFactor, pos)
    of 255: parseStr(s, result.erCreditRating, pos)
    of 543: parseStr(s, result.erInstrRegistry, pos)
    of 470: parseStr(s, result.erCountryOfIssue, pos)
    of 471: parseStr(s, result.erStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.erLocaleOfIssue, pos)
    of 240: parseStr(s, result.erRedemptionDate, pos)
    of 202: parseFloat(s, result.erStrikePrice, pos)
    of 947: parseStr(s, result.erStrikeCurrency, pos)
    of 206: parseChar(s, result.erOptAttribute, pos)
    of 231: parseStr(s, result.erContractMultiplier, pos)
    of 223: parseFloat(s, result.erCouponRate, pos)
    of 207: parseStr(s, result.erSecurityExchange, pos)
    of 106: parseStr(s, result.erIssuer, pos)
    of 348: parseUInt(s, result.erEncodedIssuerLen, pos)
    of 349: parseStr(s, result.erEncodedIssuer, pos)
    of 107: parseStr(s, result.erSecurityDesc, pos)
    of 350: parseUInt(s, result.erEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.erEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.erPool, pos)
    of 667: parseStr(s, result.erContractSettlMonth, pos)
    of 875: parseInt(s, result.erCPProgram, pos)
    of 876: parseStr(s, result.erCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.erNoEvents, pos)
    of 873: parseStr(s, result.erDatedDate, pos)
    of 874: parseStr(s, result.erInterestAccrualDate, pos)
    of 913: parseStr(s, result.erAgreementDesc, pos)
    of 914: parseStr(s, result.erAgreementID, pos)
    of 915: parseStr(s, result.erAgreementDate, pos)
    of 918: parseStr(s, result.erAgreementCurrency, pos)
    of 788: parseInt(s, result.erTerminationType, pos)
    of 916: parseStr(s, result.erStartDate, pos)
    of 917: parseStr(s, result.erEndDate, pos)
    of 919: parseInt(s, result.erDeliveryType, pos)
    of 898: parseFloat(s, result.erMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.erNoUnderlyings, pos)
    of 54: parseChar(s, result.erSide, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.erNoStipulations, pos)
    of 854: parseInt(s, result.erQtyType, pos)
    of 38: parseInt(s, result.erOrderQty, pos)
    of 152: parseInt(s, result.erCashOrderQty, pos)
    of 516: parseFloat(s, result.erOrderPercent, pos)
    of 468: parseChar(s, result.erRoundingDirection, pos)
    of 469: parseStr(s, result.erRoundingModulus, pos)
    of 40: parseChar(s, result.erOrdType, pos)
    of 423: parseInt(s, result.erPriceType, pos)
    of 44: parseFloat(s, result.erPrice, pos)
    of 99: parseFloat(s, result.erStopPx, pos)
    of 211: parseStr(s, result.erPegOffsetValue, pos)
    of 835: parseInt(s, result.erPegMoveType, pos)
    of 836: parseInt(s, result.erPegOffsetType, pos)
    of 837: parseInt(s, result.erPegLimitType, pos)
    of 838: parseInt(s, result.erPegRoundDirection, pos)
    of 840: parseInt(s, result.erPegScope, pos)
    of 388: parseChar(s, result.erDiscretionInst, pos)
    of 389: parseStr(s, result.erDiscretionOffsetValue, pos)
    of 841: parseInt(s, result.erDiscretionMoveType, pos)
    of 842: parseInt(s, result.erDiscretionOffsetType, pos)
    of 843: parseInt(s, result.erDiscretionLimitType, pos)
    of 844: parseInt(s, result.erDiscretionRoundDirection, pos)
    of 846: parseInt(s, result.erDiscretionScope, pos)
    of 839: parseFloat(s, result.erPeggedPrice, pos)
    of 845: parseFloat(s, result.erDiscretionPrice, pos)
    of 847: parseInt(s, result.erTargetStrategy, pos)
    of 848: parseStr(s, result.erTargetStrategyParameters, pos)
    of 849: parseFloat(s, result.erParticipationRate, pos)
    of 850: parseStr(s, result.erTargetStrategyPerformance, pos)
    of 15: parseStr(s, result.erCurrency, pos)
    of 376: parseStr(s, result.erComplianceID, pos)
    of 377: parseBool(s, result.erSolicitedFlag, pos)
    of 59: parseChar(s, result.erTimeInForce, pos)
    of 168: parseStr(s, result.erEffectiveTime, pos)
    of 432: parseStr(s, result.erExpireDate, pos)
    of 126: parseStr(s, result.erExpireTime, pos)
    of 18: parseStr(s, result.erExecInst, pos)
    of 528: parseChar(s, result.erOrderCapacity, pos)
    of 529: parseStr(s, result.erOrderRestrictions, pos)
    of 582: parseInt(s, result.erCustOrderCapacity, pos)
    of 32: parseInt(s, result.erLastQty, pos)
    of 652: parseInt(s, result.erUnderlyingLastQty, pos)
    of 31: parseFloat(s, result.erLastPx, pos)
    of 651: parseFloat(s, result.erUnderlyingLastPx, pos)
    of 669: parseFloat(s, result.erLastParPx, pos)
    of 194: parseFloat(s, result.erLastSpotRate, pos)
    of 195: parseFloat(s, result.erLastForwardPoints, pos)
    of 30: parseStr(s, result.erLastMkt, pos)
    of 336: parseStr(s, result.erTradingSessionID, pos)
    of 625: parseStr(s, result.erTradingSessionSubID, pos)
    of 943: parseStr(s, result.erTimeBracket, pos)
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
    of 479: parseStr(s, result.erCommCurrency, pos)
    of 497: parseChar(s, result.erFundRenewWaiv, pos)
    of 218: parseFloat(s, result.erSpread, pos)
    of 220: parseStr(s, result.erBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.erBenchmarkCurveName, pos)
    of 222: parseStr(s, result.erBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.erBenchmarkPrice, pos)
    of 663: parseInt(s, result.erBenchmarkPriceType, pos)
    of 699: parseStr(s, result.erBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.erBenchmarkSecurityIDSource, pos)
    of 235: parseStr(s, result.erYieldType, pos)
    of 236: parseFloat(s, result.erYield, pos)
    of 701: parseStr(s, result.erYieldCalcDate, pos)
    of 696: parseStr(s, result.erYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.erYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.erYieldRedemptionPriceType, pos)
    of 381: parseUInt(s, result.erGrossTradeAmt, pos)
    of 157: parseInt(s, result.erNumDaysInterest, pos)
    of 230: parseStr(s, result.erExDate, pos)
    of 158: parseFloat(s, result.erAccruedInterestRate, pos)
    of 159: parseUInt(s, result.erAccruedInterestAmt, pos)
    of 738: parseUInt(s, result.erInterestAtMaturity, pos)
    of 920: parseUInt(s, result.erEndAccruedInterestAmt, pos)
    of 921: parseUInt(s, result.erStartCash, pos)
    of 922: parseUInt(s, result.erEndCash, pos)
    of 258: parseBool(s, result.erTradedFlatSwitch, pos)
    of 259: parseStr(s, result.erBasisFeatureDate, pos)
    of 260: parseFloat(s, result.erBasisFeaturePrice, pos)
    of 238: parseUInt(s, result.erConcession, pos)
    of 237: parseUInt(s, result.erTotalTakedown, pos)
    of 118: parseUInt(s, result.erNetMoney, pos)
    of 119: parseUInt(s, result.erSettlCurrAmt, pos)
    of 120: parseStr(s, result.erSettlCurrency, pos)
    of 155: parseStr(s, result.erSettlCurrFxRate, pos)
    of 156: parseChar(s, result.erSettlCurrFxRateCalc, pos)
    of 21: parseChar(s, result.erHandlInst, pos)
    of 110: parseInt(s, result.erMinQty, pos)
    of 111: parseInt(s, result.erMaxFloor, pos)
    of 77: parseChar(s, result.erPositionEffect, pos)
    of 210: parseInt(s, result.erMaxShow, pos)
    of 775: parseInt(s, result.erBookingType, pos)
    of 58: parseStr(s, result.erText, pos)
    of 354: parseUInt(s, result.erEncodedTextLen, pos)
    of 355: parseStr(s, result.erEncodedText, pos)
    of 193: parseStr(s, result.erSettlDate2, pos)
    of 192: parseInt(s, result.erOrderQty2, pos)
    of 641: parseFloat(s, result.erLastForwardPoints2, pos)
    of 442: parseChar(s, result.erMultiLegReportingType, pos)
    of 480: parseChar(s, result.erCancellationRights, pos)
    of 481: parseChar(s, result.erMoneyLaunderingStatus, pos)
    of 513: parseStr(s, result.erRegistID, pos)
    of 494: parseStr(s, result.erDesignation, pos)
    of 483: parseStr(s, result.erTransBkdTime, pos)
    of 515: parseStr(s, result.erExecValuationPoint, pos)
    of 484: parseChar(s, result.erExecPriceType, pos)
    of 485: parseStr(s, result.erExecPriceAdjustment, pos)
    of 638: parseInt(s, result.erPriorityIndicator, pos)
    of 639: parseFloat(s, result.erPriceImprovement, pos)
    of 851: parseInt(s, result.erLastLiquidityInd, pos)
    of 518: skipValue(s, pos); parseNoContAmts(s, result.erNoContAmts, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.erNoLegs, pos)
    of 797: parseBool(s, result.erCopyMsgIndicator, pos)
    of 136: skipValue(s, pos); parseNoMiscFees(s, result.erNoMiscFees, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseOrderCancelReject(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("9", "OrderCancelReject"))
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
    of 37: parseStr(s, result.ocrOrderID, pos)
    of 198: parseStr(s, result.ocrSecondaryOrderID, pos)
    of 526: parseStr(s, result.ocrSecondaryClOrdID, pos)
    of 11: parseStr(s, result.ocrClOrdID, pos)
    of 583: parseStr(s, result.ocrClOrdLinkID, pos)
    of 41: parseStr(s, result.ocrOrigClOrdID, pos)
    of 39: parseChar(s, result.ocrOrdStatus, pos)
    of 636: parseBool(s, result.ocrWorkingIndicator, pos)
    of 586: parseStr(s, result.ocrOrigOrdModTime, pos)
    of 66: parseStr(s, result.ocrListID, pos)
    of 1: parseStr(s, result.ocrAccount, pos)
    of 660: parseInt(s, result.ocrAcctIDSource, pos)
    of 581: parseInt(s, result.ocrAccountType, pos)
    of 229: parseStr(s, result.ocrTradeOriginationDate, pos)
    of 75: parseStr(s, result.ocrTradeDate, pos)
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

proc parseLogon(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("A", "Logon"))
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
    of 98: parseInt(s, result.lEncryptMethod, pos)
    of 108: parseInt(s, result.lHeartBtInt, pos)
    of 95: parseUInt(s, result.lRawDataLength, pos)
    of 96: parseStr(s, result.lRawData, pos)
    of 141: parseBool(s, result.lResetSeqNumFlag, pos)
    of 789: parseUInt(s, result.lNextExpectedMsgSeqNum, pos)
    of 383: parseUInt(s, result.lMaxMessageSize, pos)
    of 384: skipValue(s, pos); parseNoMsgTypes(s, result.lNoMsgTypes, pos)
    of 464: parseBool(s, result.lTestMessageIndicator, pos)
    of 553: parseStr(s, result.lUsername, pos)
    of 554: parseStr(s, result.lPassword, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseNews(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("B", "News"))
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
    of 42: parseStr(s, result.nOrigTime, pos)
    of 61: parseChar(s, result.nUrgency, pos)
    of 148: parseStr(s, result.nHeadline, pos)
    of 358: parseUInt(s, result.nEncodedHeadlineLen, pos)
    of 359: parseStr(s, result.nEncodedHeadline, pos)
    of 215: skipValue(s, pos); parseNoRoutingIDs(s, result.nNoRoutingIDs, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.nNoRelatedSym, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.nNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.nNoUnderlyings, pos)
    of 33: skipValue(s, pos); parseNoLinesOfText(s, result.nNoLinesOfText, pos)
    of 149: parseStr(s, result.nURLLink, pos)
    of 95: parseUInt(s, result.nRawDataLength, pos)
    of 96: parseStr(s, result.nRawData, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseEmail(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("C", "Email"))
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
    of 164: parseStr(s, result.eEmailThreadID, pos)
    of 94: parseChar(s, result.eEmailType, pos)
    of 42: parseStr(s, result.eOrigTime, pos)
    of 147: parseStr(s, result.eSubject, pos)
    of 356: parseUInt(s, result.eEncodedSubjectLen, pos)
    of 357: parseStr(s, result.eEncodedSubject, pos)
    of 215: skipValue(s, pos); parseNoRoutingIDs(s, result.eNoRoutingIDs, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.eNoRelatedSym, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.eNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.eNoLegs, pos)
    of 37: parseStr(s, result.eOrderID, pos)
    of 11: parseStr(s, result.eClOrdID, pos)
    of 33: skipValue(s, pos); parseNoLinesOfText(s, result.eNoLinesOfText, pos)
    of 95: parseUInt(s, result.eRawDataLength, pos)
    of 96: parseStr(s, result.eRawData, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseNewOrderSingle(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("D", "NewOrderSingle"))
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
    of 11: parseStr(s, result.nosClOrdID, pos)
    of 526: parseStr(s, result.nosSecondaryClOrdID, pos)
    of 583: parseStr(s, result.nosClOrdLinkID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.nosNoPartyIDs, pos)
    of 229: parseStr(s, result.nosTradeOriginationDate, pos)
    of 75: parseStr(s, result.nosTradeDate, pos)
    of 1: parseStr(s, result.nosAccount, pos)
    of 660: parseInt(s, result.nosAcctIDSource, pos)
    of 581: parseInt(s, result.nosAccountType, pos)
    of 589: parseChar(s, result.nosDayBookingInst, pos)
    of 590: parseChar(s, result.nosBookingUnit, pos)
    of 591: parseChar(s, result.nosPreallocMethod, pos)
    of 70: parseStr(s, result.nosAllocID, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.nosNoAllocs, pos)
    of 63: parseChar(s, result.nosSettlType, pos)
    of 64: parseStr(s, result.nosSettlDate, pos)
    of 544: parseChar(s, result.nosCashMargin, pos)
    of 635: parseStr(s, result.nosClearingFeeIndicator, pos)
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
    of 22: parseStr(s, result.nosSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.nosNoSecurityAltID, pos)
    of 460: parseInt(s, result.nosProduct, pos)
    of 461: parseStr(s, result.nosCFICode, pos)
    of 167: parseStr(s, result.nosSecurityType, pos)
    of 762: parseStr(s, result.nosSecuritySubType, pos)
    of 200: parseStr(s, result.nosMaturityMonthYear, pos)
    of 541: parseStr(s, result.nosMaturityDate, pos)
    of 201: parseInt(s, result.nosPutOrCall, pos)
    of 224: parseStr(s, result.nosCouponPaymentDate, pos)
    of 225: parseStr(s, result.nosIssueDate, pos)
    of 239: parseStr(s, result.nosRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.nosRepurchaseTerm, pos)
    of 227: parseFloat(s, result.nosRepurchaseRate, pos)
    of 228: parseStr(s, result.nosFactor, pos)
    of 255: parseStr(s, result.nosCreditRating, pos)
    of 543: parseStr(s, result.nosInstrRegistry, pos)
    of 470: parseStr(s, result.nosCountryOfIssue, pos)
    of 471: parseStr(s, result.nosStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.nosLocaleOfIssue, pos)
    of 240: parseStr(s, result.nosRedemptionDate, pos)
    of 202: parseFloat(s, result.nosStrikePrice, pos)
    of 947: parseStr(s, result.nosStrikeCurrency, pos)
    of 206: parseChar(s, result.nosOptAttribute, pos)
    of 231: parseStr(s, result.nosContractMultiplier, pos)
    of 223: parseFloat(s, result.nosCouponRate, pos)
    of 207: parseStr(s, result.nosSecurityExchange, pos)
    of 106: parseStr(s, result.nosIssuer, pos)
    of 348: parseUInt(s, result.nosEncodedIssuerLen, pos)
    of 349: parseStr(s, result.nosEncodedIssuer, pos)
    of 107: parseStr(s, result.nosSecurityDesc, pos)
    of 350: parseUInt(s, result.nosEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.nosEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.nosPool, pos)
    of 667: parseStr(s, result.nosContractSettlMonth, pos)
    of 875: parseInt(s, result.nosCPProgram, pos)
    of 876: parseStr(s, result.nosCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.nosNoEvents, pos)
    of 873: parseStr(s, result.nosDatedDate, pos)
    of 874: parseStr(s, result.nosInterestAccrualDate, pos)
    of 913: parseStr(s, result.nosAgreementDesc, pos)
    of 914: parseStr(s, result.nosAgreementID, pos)
    of 915: parseStr(s, result.nosAgreementDate, pos)
    of 918: parseStr(s, result.nosAgreementCurrency, pos)
    of 788: parseInt(s, result.nosTerminationType, pos)
    of 916: parseStr(s, result.nosStartDate, pos)
    of 917: parseStr(s, result.nosEndDate, pos)
    of 919: parseInt(s, result.nosDeliveryType, pos)
    of 898: parseFloat(s, result.nosMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.nosNoUnderlyings, pos)
    of 140: parseFloat(s, result.nosPrevClosePx, pos)
    of 54: parseChar(s, result.nosSide, pos)
    of 114: parseBool(s, result.nosLocateReqd, pos)
    of 60: parseStr(s, result.nosTransactTime, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.nosNoStipulations, pos)
    of 854: parseInt(s, result.nosQtyType, pos)
    of 38: parseInt(s, result.nosOrderQty, pos)
    of 152: parseInt(s, result.nosCashOrderQty, pos)
    of 516: parseFloat(s, result.nosOrderPercent, pos)
    of 468: parseChar(s, result.nosRoundingDirection, pos)
    of 469: parseStr(s, result.nosRoundingModulus, pos)
    of 40: parseChar(s, result.nosOrdType, pos)
    of 423: parseInt(s, result.nosPriceType, pos)
    of 44: parseFloat(s, result.nosPrice, pos)
    of 99: parseFloat(s, result.nosStopPx, pos)
    of 218: parseFloat(s, result.nosSpread, pos)
    of 220: parseStr(s, result.nosBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.nosBenchmarkCurveName, pos)
    of 222: parseStr(s, result.nosBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.nosBenchmarkPrice, pos)
    of 663: parseInt(s, result.nosBenchmarkPriceType, pos)
    of 699: parseStr(s, result.nosBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.nosBenchmarkSecurityIDSource, pos)
    of 235: parseStr(s, result.nosYieldType, pos)
    of 236: parseFloat(s, result.nosYield, pos)
    of 701: parseStr(s, result.nosYieldCalcDate, pos)
    of 696: parseStr(s, result.nosYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.nosYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.nosYieldRedemptionPriceType, pos)
    of 15: parseStr(s, result.nosCurrency, pos)
    of 376: parseStr(s, result.nosComplianceID, pos)
    of 377: parseBool(s, result.nosSolicitedFlag, pos)
    of 23: parseStr(s, result.nosIOIID, pos)
    of 117: parseStr(s, result.nosQuoteID, pos)
    of 59: parseChar(s, result.nosTimeInForce, pos)
    of 168: parseStr(s, result.nosEffectiveTime, pos)
    of 432: parseStr(s, result.nosExpireDate, pos)
    of 126: parseStr(s, result.nosExpireTime, pos)
    of 427: parseInt(s, result.nosGTBookingInst, pos)
    of 12: parseUInt(s, result.nosCommission, pos)
    of 13: parseChar(s, result.nosCommType, pos)
    of 479: parseStr(s, result.nosCommCurrency, pos)
    of 497: parseChar(s, result.nosFundRenewWaiv, pos)
    of 528: parseChar(s, result.nosOrderCapacity, pos)
    of 529: parseStr(s, result.nosOrderRestrictions, pos)
    of 582: parseInt(s, result.nosCustOrderCapacity, pos)
    of 121: parseBool(s, result.nosForexReq, pos)
    of 120: parseStr(s, result.nosSettlCurrency, pos)
    of 775: parseInt(s, result.nosBookingType, pos)
    of 58: parseStr(s, result.nosText, pos)
    of 354: parseUInt(s, result.nosEncodedTextLen, pos)
    of 355: parseStr(s, result.nosEncodedText, pos)
    of 193: parseStr(s, result.nosSettlDate2, pos)
    of 192: parseInt(s, result.nosOrderQty2, pos)
    of 640: parseFloat(s, result.nosPrice2, pos)
    of 77: parseChar(s, result.nosPositionEffect, pos)
    of 203: parseInt(s, result.nosCoveredOrUncovered, pos)
    of 210: parseInt(s, result.nosMaxShow, pos)
    of 211: parseStr(s, result.nosPegOffsetValue, pos)
    of 835: parseInt(s, result.nosPegMoveType, pos)
    of 836: parseInt(s, result.nosPegOffsetType, pos)
    of 837: parseInt(s, result.nosPegLimitType, pos)
    of 838: parseInt(s, result.nosPegRoundDirection, pos)
    of 840: parseInt(s, result.nosPegScope, pos)
    of 388: parseChar(s, result.nosDiscretionInst, pos)
    of 389: parseStr(s, result.nosDiscretionOffsetValue, pos)
    of 841: parseInt(s, result.nosDiscretionMoveType, pos)
    of 842: parseInt(s, result.nosDiscretionOffsetType, pos)
    of 843: parseInt(s, result.nosDiscretionLimitType, pos)
    of 844: parseInt(s, result.nosDiscretionRoundDirection, pos)
    of 846: parseInt(s, result.nosDiscretionScope, pos)
    of 847: parseInt(s, result.nosTargetStrategy, pos)
    of 848: parseStr(s, result.nosTargetStrategyParameters, pos)
    of 849: parseFloat(s, result.nosParticipationRate, pos)
    of 480: parseChar(s, result.nosCancellationRights, pos)
    of 481: parseChar(s, result.nosMoneyLaunderingStatus, pos)
    of 513: parseStr(s, result.nosRegistID, pos)
    of 494: parseStr(s, result.nosDesignation, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseNewOrderList(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("E", "NewOrderList"))
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
    of 66: parseStr(s, result.nolListID, pos)
    of 390: parseStr(s, result.nolBidID, pos)
    of 391: parseStr(s, result.nolClientBidID, pos)
    of 414: parseInt(s, result.nolProgRptReqs, pos)
    of 394: parseInt(s, result.nolBidType, pos)
    of 415: parseInt(s, result.nolProgPeriodInterval, pos)
    of 480: parseChar(s, result.nolCancellationRights, pos)
    of 481: parseChar(s, result.nolMoneyLaunderingStatus, pos)
    of 513: parseStr(s, result.nolRegistID, pos)
    of 433: parseChar(s, result.nolListExecInstType, pos)
    of 69: parseStr(s, result.nolListExecInst, pos)
    of 352: parseUInt(s, result.nolEncodedListExecInstLen, pos)
    of 353: parseStr(s, result.nolEncodedListExecInst, pos)
    of 765: parseFloat(s, result.nolAllowableOneSidednessPct, pos)
    of 766: parseUInt(s, result.nolAllowableOneSidednessValue, pos)
    of 767: parseStr(s, result.nolAllowableOneSidednessCurr, pos)
    of 68: parseInt(s, result.nolTotNoOrders, pos)
    of 893: parseBool(s, result.nolLastFragment, pos)
    of 73: skipValue(s, pos); parseNoOrders(s, result.nolNoOrders, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseOrderCancelRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("F", "OrderCancelRequest"))
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
    of 41: parseStr(s, result.ocrOrigClOrdID, pos)
    of 37: parseStr(s, result.ocrOrderID, pos)
    of 11: parseStr(s, result.ocrClOrdID, pos)
    of 526: parseStr(s, result.ocrSecondaryClOrdID, pos)
    of 583: parseStr(s, result.ocrClOrdLinkID, pos)
    of 66: parseStr(s, result.ocrListID, pos)
    of 586: parseStr(s, result.ocrOrigOrdModTime, pos)
    of 1: parseStr(s, result.ocrAccount, pos)
    of 660: parseInt(s, result.ocrAcctIDSource, pos)
    of 581: parseInt(s, result.ocrAccountType, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.ocrNoPartyIDs, pos)
    of 55: parseStr(s, result.ocrSymbol, pos)
    of 65: parseStr(s, result.ocrSymbolSfx, pos)
    of 48: parseStr(s, result.ocrSecurityID, pos)
    of 22: parseStr(s, result.ocrSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.ocrNoSecurityAltID, pos)
    of 460: parseInt(s, result.ocrProduct, pos)
    of 461: parseStr(s, result.ocrCFICode, pos)
    of 167: parseStr(s, result.ocrSecurityType, pos)
    of 762: parseStr(s, result.ocrSecuritySubType, pos)
    of 200: parseStr(s, result.ocrMaturityMonthYear, pos)
    of 541: parseStr(s, result.ocrMaturityDate, pos)
    of 201: parseInt(s, result.ocrPutOrCall, pos)
    of 224: parseStr(s, result.ocrCouponPaymentDate, pos)
    of 225: parseStr(s, result.ocrIssueDate, pos)
    of 239: parseStr(s, result.ocrRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.ocrRepurchaseTerm, pos)
    of 227: parseFloat(s, result.ocrRepurchaseRate, pos)
    of 228: parseStr(s, result.ocrFactor, pos)
    of 255: parseStr(s, result.ocrCreditRating, pos)
    of 543: parseStr(s, result.ocrInstrRegistry, pos)
    of 470: parseStr(s, result.ocrCountryOfIssue, pos)
    of 471: parseStr(s, result.ocrStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.ocrLocaleOfIssue, pos)
    of 240: parseStr(s, result.ocrRedemptionDate, pos)
    of 202: parseFloat(s, result.ocrStrikePrice, pos)
    of 947: parseStr(s, result.ocrStrikeCurrency, pos)
    of 206: parseChar(s, result.ocrOptAttribute, pos)
    of 231: parseStr(s, result.ocrContractMultiplier, pos)
    of 223: parseFloat(s, result.ocrCouponRate, pos)
    of 207: parseStr(s, result.ocrSecurityExchange, pos)
    of 106: parseStr(s, result.ocrIssuer, pos)
    of 348: parseUInt(s, result.ocrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.ocrEncodedIssuer, pos)
    of 107: parseStr(s, result.ocrSecurityDesc, pos)
    of 350: parseUInt(s, result.ocrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.ocrEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.ocrPool, pos)
    of 667: parseStr(s, result.ocrContractSettlMonth, pos)
    of 875: parseInt(s, result.ocrCPProgram, pos)
    of 876: parseStr(s, result.ocrCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.ocrNoEvents, pos)
    of 873: parseStr(s, result.ocrDatedDate, pos)
    of 874: parseStr(s, result.ocrInterestAccrualDate, pos)
    of 913: parseStr(s, result.ocrAgreementDesc, pos)
    of 914: parseStr(s, result.ocrAgreementID, pos)
    of 915: parseStr(s, result.ocrAgreementDate, pos)
    of 918: parseStr(s, result.ocrAgreementCurrency, pos)
    of 788: parseInt(s, result.ocrTerminationType, pos)
    of 916: parseStr(s, result.ocrStartDate, pos)
    of 917: parseStr(s, result.ocrEndDate, pos)
    of 919: parseInt(s, result.ocrDeliveryType, pos)
    of 898: parseFloat(s, result.ocrMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.ocrNoUnderlyings, pos)
    of 54: parseChar(s, result.ocrSide, pos)
    of 60: parseStr(s, result.ocrTransactTime, pos)
    of 38: parseInt(s, result.ocrOrderQty, pos)
    of 152: parseInt(s, result.ocrCashOrderQty, pos)
    of 516: parseFloat(s, result.ocrOrderPercent, pos)
    of 468: parseChar(s, result.ocrRoundingDirection, pos)
    of 469: parseStr(s, result.ocrRoundingModulus, pos)
    of 376: parseStr(s, result.ocrComplianceID, pos)
    of 58: parseStr(s, result.ocrText, pos)
    of 354: parseUInt(s, result.ocrEncodedTextLen, pos)
    of 355: parseStr(s, result.ocrEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseOrderCancelReplaceRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("G", "OrderCancelReplaceRequest"))
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
    of 37: parseStr(s, result.ocrrOrderID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.ocrrNoPartyIDs, pos)
    of 229: parseStr(s, result.ocrrTradeOriginationDate, pos)
    of 75: parseStr(s, result.ocrrTradeDate, pos)
    of 41: parseStr(s, result.ocrrOrigClOrdID, pos)
    of 11: parseStr(s, result.ocrrClOrdID, pos)
    of 526: parseStr(s, result.ocrrSecondaryClOrdID, pos)
    of 583: parseStr(s, result.ocrrClOrdLinkID, pos)
    of 66: parseStr(s, result.ocrrListID, pos)
    of 586: parseStr(s, result.ocrrOrigOrdModTime, pos)
    of 1: parseStr(s, result.ocrrAccount, pos)
    of 660: parseInt(s, result.ocrrAcctIDSource, pos)
    of 581: parseInt(s, result.ocrrAccountType, pos)
    of 589: parseChar(s, result.ocrrDayBookingInst, pos)
    of 590: parseChar(s, result.ocrrBookingUnit, pos)
    of 591: parseChar(s, result.ocrrPreallocMethod, pos)
    of 70: parseStr(s, result.ocrrAllocID, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.ocrrNoAllocs, pos)
    of 63: parseChar(s, result.ocrrSettlType, pos)
    of 64: parseStr(s, result.ocrrSettlDate, pos)
    of 544: parseChar(s, result.ocrrCashMargin, pos)
    of 635: parseStr(s, result.ocrrClearingFeeIndicator, pos)
    of 21: parseChar(s, result.ocrrHandlInst, pos)
    of 18: parseStr(s, result.ocrrExecInst, pos)
    of 110: parseInt(s, result.ocrrMinQty, pos)
    of 111: parseInt(s, result.ocrrMaxFloor, pos)
    of 100: parseStr(s, result.ocrrExDestination, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.ocrrNoTradingSessions, pos)
    of 55: parseStr(s, result.ocrrSymbol, pos)
    of 65: parseStr(s, result.ocrrSymbolSfx, pos)
    of 48: parseStr(s, result.ocrrSecurityID, pos)
    of 22: parseStr(s, result.ocrrSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.ocrrNoSecurityAltID, pos)
    of 460: parseInt(s, result.ocrrProduct, pos)
    of 461: parseStr(s, result.ocrrCFICode, pos)
    of 167: parseStr(s, result.ocrrSecurityType, pos)
    of 762: parseStr(s, result.ocrrSecuritySubType, pos)
    of 200: parseStr(s, result.ocrrMaturityMonthYear, pos)
    of 541: parseStr(s, result.ocrrMaturityDate, pos)
    of 201: parseInt(s, result.ocrrPutOrCall, pos)
    of 224: parseStr(s, result.ocrrCouponPaymentDate, pos)
    of 225: parseStr(s, result.ocrrIssueDate, pos)
    of 239: parseStr(s, result.ocrrRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.ocrrRepurchaseTerm, pos)
    of 227: parseFloat(s, result.ocrrRepurchaseRate, pos)
    of 228: parseStr(s, result.ocrrFactor, pos)
    of 255: parseStr(s, result.ocrrCreditRating, pos)
    of 543: parseStr(s, result.ocrrInstrRegistry, pos)
    of 470: parseStr(s, result.ocrrCountryOfIssue, pos)
    of 471: parseStr(s, result.ocrrStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.ocrrLocaleOfIssue, pos)
    of 240: parseStr(s, result.ocrrRedemptionDate, pos)
    of 202: parseFloat(s, result.ocrrStrikePrice, pos)
    of 947: parseStr(s, result.ocrrStrikeCurrency, pos)
    of 206: parseChar(s, result.ocrrOptAttribute, pos)
    of 231: parseStr(s, result.ocrrContractMultiplier, pos)
    of 223: parseFloat(s, result.ocrrCouponRate, pos)
    of 207: parseStr(s, result.ocrrSecurityExchange, pos)
    of 106: parseStr(s, result.ocrrIssuer, pos)
    of 348: parseUInt(s, result.ocrrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.ocrrEncodedIssuer, pos)
    of 107: parseStr(s, result.ocrrSecurityDesc, pos)
    of 350: parseUInt(s, result.ocrrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.ocrrEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.ocrrPool, pos)
    of 667: parseStr(s, result.ocrrContractSettlMonth, pos)
    of 875: parseInt(s, result.ocrrCPProgram, pos)
    of 876: parseStr(s, result.ocrrCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.ocrrNoEvents, pos)
    of 873: parseStr(s, result.ocrrDatedDate, pos)
    of 874: parseStr(s, result.ocrrInterestAccrualDate, pos)
    of 913: parseStr(s, result.ocrrAgreementDesc, pos)
    of 914: parseStr(s, result.ocrrAgreementID, pos)
    of 915: parseStr(s, result.ocrrAgreementDate, pos)
    of 918: parseStr(s, result.ocrrAgreementCurrency, pos)
    of 788: parseInt(s, result.ocrrTerminationType, pos)
    of 916: parseStr(s, result.ocrrStartDate, pos)
    of 917: parseStr(s, result.ocrrEndDate, pos)
    of 919: parseInt(s, result.ocrrDeliveryType, pos)
    of 898: parseFloat(s, result.ocrrMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.ocrrNoUnderlyings, pos)
    of 54: parseChar(s, result.ocrrSide, pos)
    of 60: parseStr(s, result.ocrrTransactTime, pos)
    of 854: parseInt(s, result.ocrrQtyType, pos)
    of 38: parseInt(s, result.ocrrOrderQty, pos)
    of 152: parseInt(s, result.ocrrCashOrderQty, pos)
    of 516: parseFloat(s, result.ocrrOrderPercent, pos)
    of 468: parseChar(s, result.ocrrRoundingDirection, pos)
    of 469: parseStr(s, result.ocrrRoundingModulus, pos)
    of 40: parseChar(s, result.ocrrOrdType, pos)
    of 423: parseInt(s, result.ocrrPriceType, pos)
    of 44: parseFloat(s, result.ocrrPrice, pos)
    of 99: parseFloat(s, result.ocrrStopPx, pos)
    of 218: parseFloat(s, result.ocrrSpread, pos)
    of 220: parseStr(s, result.ocrrBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.ocrrBenchmarkCurveName, pos)
    of 222: parseStr(s, result.ocrrBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.ocrrBenchmarkPrice, pos)
    of 663: parseInt(s, result.ocrrBenchmarkPriceType, pos)
    of 699: parseStr(s, result.ocrrBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.ocrrBenchmarkSecurityIDSource, pos)
    of 235: parseStr(s, result.ocrrYieldType, pos)
    of 236: parseFloat(s, result.ocrrYield, pos)
    of 701: parseStr(s, result.ocrrYieldCalcDate, pos)
    of 696: parseStr(s, result.ocrrYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.ocrrYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.ocrrYieldRedemptionPriceType, pos)
    of 211: parseStr(s, result.ocrrPegOffsetValue, pos)
    of 835: parseInt(s, result.ocrrPegMoveType, pos)
    of 836: parseInt(s, result.ocrrPegOffsetType, pos)
    of 837: parseInt(s, result.ocrrPegLimitType, pos)
    of 838: parseInt(s, result.ocrrPegRoundDirection, pos)
    of 840: parseInt(s, result.ocrrPegScope, pos)
    of 388: parseChar(s, result.ocrrDiscretionInst, pos)
    of 389: parseStr(s, result.ocrrDiscretionOffsetValue, pos)
    of 841: parseInt(s, result.ocrrDiscretionMoveType, pos)
    of 842: parseInt(s, result.ocrrDiscretionOffsetType, pos)
    of 843: parseInt(s, result.ocrrDiscretionLimitType, pos)
    of 844: parseInt(s, result.ocrrDiscretionRoundDirection, pos)
    of 846: parseInt(s, result.ocrrDiscretionScope, pos)
    of 847: parseInt(s, result.ocrrTargetStrategy, pos)
    of 848: parseStr(s, result.ocrrTargetStrategyParameters, pos)
    of 849: parseFloat(s, result.ocrrParticipationRate, pos)
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
    of 479: parseStr(s, result.ocrrCommCurrency, pos)
    of 497: parseChar(s, result.ocrrFundRenewWaiv, pos)
    of 528: parseChar(s, result.ocrrOrderCapacity, pos)
    of 529: parseStr(s, result.ocrrOrderRestrictions, pos)
    of 582: parseInt(s, result.ocrrCustOrderCapacity, pos)
    of 121: parseBool(s, result.ocrrForexReq, pos)
    of 120: parseStr(s, result.ocrrSettlCurrency, pos)
    of 775: parseInt(s, result.ocrrBookingType, pos)
    of 58: parseStr(s, result.ocrrText, pos)
    of 354: parseUInt(s, result.ocrrEncodedTextLen, pos)
    of 355: parseStr(s, result.ocrrEncodedText, pos)
    of 193: parseStr(s, result.ocrrSettlDate2, pos)
    of 192: parseInt(s, result.ocrrOrderQty2, pos)
    of 640: parseFloat(s, result.ocrrPrice2, pos)
    of 77: parseChar(s, result.ocrrPositionEffect, pos)
    of 203: parseInt(s, result.ocrrCoveredOrUncovered, pos)
    of 210: parseInt(s, result.ocrrMaxShow, pos)
    of 114: parseBool(s, result.ocrrLocateReqd, pos)
    of 480: parseChar(s, result.ocrrCancellationRights, pos)
    of 481: parseChar(s, result.ocrrMoneyLaunderingStatus, pos)
    of 513: parseStr(s, result.ocrrRegistID, pos)
    of 494: parseStr(s, result.ocrrDesignation, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseOrderStatusRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("H", "OrderStatusRequest"))
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
    of 37: parseStr(s, result.osrOrderID, pos)
    of 11: parseStr(s, result.osrClOrdID, pos)
    of 526: parseStr(s, result.osrSecondaryClOrdID, pos)
    of 583: parseStr(s, result.osrClOrdLinkID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.osrNoPartyIDs, pos)
    of 790: parseStr(s, result.osrOrdStatusReqID, pos)
    of 1: parseStr(s, result.osrAccount, pos)
    of 660: parseInt(s, result.osrAcctIDSource, pos)
    of 55: parseStr(s, result.osrSymbol, pos)
    of 65: parseStr(s, result.osrSymbolSfx, pos)
    of 48: parseStr(s, result.osrSecurityID, pos)
    of 22: parseStr(s, result.osrSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.osrNoSecurityAltID, pos)
    of 460: parseInt(s, result.osrProduct, pos)
    of 461: parseStr(s, result.osrCFICode, pos)
    of 167: parseStr(s, result.osrSecurityType, pos)
    of 762: parseStr(s, result.osrSecuritySubType, pos)
    of 200: parseStr(s, result.osrMaturityMonthYear, pos)
    of 541: parseStr(s, result.osrMaturityDate, pos)
    of 201: parseInt(s, result.osrPutOrCall, pos)
    of 224: parseStr(s, result.osrCouponPaymentDate, pos)
    of 225: parseStr(s, result.osrIssueDate, pos)
    of 239: parseStr(s, result.osrRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.osrRepurchaseTerm, pos)
    of 227: parseFloat(s, result.osrRepurchaseRate, pos)
    of 228: parseStr(s, result.osrFactor, pos)
    of 255: parseStr(s, result.osrCreditRating, pos)
    of 543: parseStr(s, result.osrInstrRegistry, pos)
    of 470: parseStr(s, result.osrCountryOfIssue, pos)
    of 471: parseStr(s, result.osrStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.osrLocaleOfIssue, pos)
    of 240: parseStr(s, result.osrRedemptionDate, pos)
    of 202: parseFloat(s, result.osrStrikePrice, pos)
    of 947: parseStr(s, result.osrStrikeCurrency, pos)
    of 206: parseChar(s, result.osrOptAttribute, pos)
    of 231: parseStr(s, result.osrContractMultiplier, pos)
    of 223: parseFloat(s, result.osrCouponRate, pos)
    of 207: parseStr(s, result.osrSecurityExchange, pos)
    of 106: parseStr(s, result.osrIssuer, pos)
    of 348: parseUInt(s, result.osrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.osrEncodedIssuer, pos)
    of 107: parseStr(s, result.osrSecurityDesc, pos)
    of 350: parseUInt(s, result.osrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.osrEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.osrPool, pos)
    of 667: parseStr(s, result.osrContractSettlMonth, pos)
    of 875: parseInt(s, result.osrCPProgram, pos)
    of 876: parseStr(s, result.osrCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.osrNoEvents, pos)
    of 873: parseStr(s, result.osrDatedDate, pos)
    of 874: parseStr(s, result.osrInterestAccrualDate, pos)
    of 913: parseStr(s, result.osrAgreementDesc, pos)
    of 914: parseStr(s, result.osrAgreementID, pos)
    of 915: parseStr(s, result.osrAgreementDate, pos)
    of 918: parseStr(s, result.osrAgreementCurrency, pos)
    of 788: parseInt(s, result.osrTerminationType, pos)
    of 916: parseStr(s, result.osrStartDate, pos)
    of 917: parseStr(s, result.osrEndDate, pos)
    of 919: parseInt(s, result.osrDeliveryType, pos)
    of 898: parseFloat(s, result.osrMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.osrNoUnderlyings, pos)
    of 54: parseChar(s, result.osrSide, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseAllocationInstruction(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("J", "AllocationInstruction"))
  result.msgType = AllocationInstruction
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
    of 70: parseStr(s, result.aiAllocID, pos)
    of 71: parseChar(s, result.aiAllocTransType, pos)
    of 626: parseInt(s, result.aiAllocType, pos)
    of 793: parseStr(s, result.aiSecondaryAllocID, pos)
    of 72: parseStr(s, result.aiRefAllocID, pos)
    of 796: parseInt(s, result.aiAllocCancReplaceReason, pos)
    of 808: parseInt(s, result.aiAllocIntermedReqType, pos)
    of 196: parseStr(s, result.aiAllocLinkID, pos)
    of 197: parseInt(s, result.aiAllocLinkType, pos)
    of 466: parseStr(s, result.aiBookingRefID, pos)
    of 857: parseInt(s, result.aiAllocNoOrdersType, pos)
    of 73: skipValue(s, pos); parseNoOrders(s, result.aiNoOrders, pos)
    of 124: skipValue(s, pos); parseNoExecs(s, result.aiNoExecs, pos)
    of 570: parseBool(s, result.aiPreviouslyReported, pos)
    of 700: parseBool(s, result.aiReversalIndicator, pos)
    of 574: parseStr(s, result.aiMatchType, pos)
    of 54: parseChar(s, result.aiSide, pos)
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
    of 668: parseInt(s, result.aiDeliveryForm, pos)
    of 869: parseFloat(s, result.aiPctAtRisk, pos)
    of 870: skipValue(s, pos); parseNoInstrAttrib(s, result.aiNoInstrAttrib, pos)
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
    of 555: skipValue(s, pos); parseNoLegs(s, result.aiNoLegs, pos)
    of 53: parseInt(s, result.aiQuantity, pos)
    of 854: parseInt(s, result.aiQtyType, pos)
    of 30: parseStr(s, result.aiLastMkt, pos)
    of 229: parseStr(s, result.aiTradeOriginationDate, pos)
    of 336: parseStr(s, result.aiTradingSessionID, pos)
    of 625: parseStr(s, result.aiTradingSessionSubID, pos)
    of 423: parseInt(s, result.aiPriceType, pos)
    of 6: parseFloat(s, result.aiAvgPx, pos)
    of 860: parseFloat(s, result.aiAvgParPx, pos)
    of 218: parseFloat(s, result.aiSpread, pos)
    of 220: parseStr(s, result.aiBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.aiBenchmarkCurveName, pos)
    of 222: parseStr(s, result.aiBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.aiBenchmarkPrice, pos)
    of 663: parseInt(s, result.aiBenchmarkPriceType, pos)
    of 699: parseStr(s, result.aiBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.aiBenchmarkSecurityIDSource, pos)
    of 15: parseStr(s, result.aiCurrency, pos)
    of 74: parseInt(s, result.aiAvgPxPrecision, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.aiNoPartyIDs, pos)
    of 75: parseStr(s, result.aiTradeDate, pos)
    of 60: parseStr(s, result.aiTransactTime, pos)
    of 63: parseChar(s, result.aiSettlType, pos)
    of 64: parseStr(s, result.aiSettlDate, pos)
    of 775: parseInt(s, result.aiBookingType, pos)
    of 381: parseUInt(s, result.aiGrossTradeAmt, pos)
    of 238: parseUInt(s, result.aiConcession, pos)
    of 237: parseUInt(s, result.aiTotalTakedown, pos)
    of 118: parseUInt(s, result.aiNetMoney, pos)
    of 77: parseChar(s, result.aiPositionEffect, pos)
    of 754: parseBool(s, result.aiAutoAcceptIndicator, pos)
    of 58: parseStr(s, result.aiText, pos)
    of 354: parseUInt(s, result.aiEncodedTextLen, pos)
    of 355: parseStr(s, result.aiEncodedText, pos)
    of 157: parseInt(s, result.aiNumDaysInterest, pos)
    of 158: parseFloat(s, result.aiAccruedInterestRate, pos)
    of 159: parseUInt(s, result.aiAccruedInterestAmt, pos)
    of 540: parseUInt(s, result.aiTotalAccruedInterestAmt, pos)
    of 738: parseUInt(s, result.aiInterestAtMaturity, pos)
    of 920: parseUInt(s, result.aiEndAccruedInterestAmt, pos)
    of 921: parseUInt(s, result.aiStartCash, pos)
    of 922: parseUInt(s, result.aiEndCash, pos)
    of 650: parseBool(s, result.aiLegalConfirm, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.aiNoStipulations, pos)
    of 235: parseStr(s, result.aiYieldType, pos)
    of 236: parseFloat(s, result.aiYield, pos)
    of 701: parseStr(s, result.aiYieldCalcDate, pos)
    of 696: parseStr(s, result.aiYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.aiYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.aiYieldRedemptionPriceType, pos)
    of 892: parseInt(s, result.aiTotNoAllocs, pos)
    of 893: parseBool(s, result.aiLastFragment, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.aiNoAllocs, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseListCancelRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("K", "ListCancelRequest"))
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
    of 66: parseStr(s, result.lcrListID, pos)
    of 60: parseStr(s, result.lcrTransactTime, pos)
    of 229: parseStr(s, result.lcrTradeOriginationDate, pos)
    of 75: parseStr(s, result.lcrTradeDate, pos)
    of 58: parseStr(s, result.lcrText, pos)
    of 354: parseUInt(s, result.lcrEncodedTextLen, pos)
    of 355: parseStr(s, result.lcrEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseListExecute(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("L", "ListExecute"))
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

proc parseListStatusRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("M", "ListStatusRequest"))
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
    of 66: parseStr(s, result.lsrListID, pos)
    of 58: parseStr(s, result.lsrText, pos)
    of 354: parseUInt(s, result.lsrEncodedTextLen, pos)
    of 355: parseStr(s, result.lsrEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseListStatus(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("N", "ListStatus"))
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
    of 893: parseBool(s, result.lsLastFragment, pos)
    of 73: skipValue(s, pos); parseNoOrders(s, result.lsNoOrders, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseAllocationInstructionAck(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("P", "AllocationInstructionAck"))
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
    of 70: parseStr(s, result.aiaAllocID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.aiaNoPartyIDs, pos)
    of 793: parseStr(s, result.aiaSecondaryAllocID, pos)
    of 75: parseStr(s, result.aiaTradeDate, pos)
    of 60: parseStr(s, result.aiaTransactTime, pos)
    of 87: parseInt(s, result.aiaAllocStatus, pos)
    of 88: parseInt(s, result.aiaAllocRejCode, pos)
    of 626: parseInt(s, result.aiaAllocType, pos)
    of 808: parseInt(s, result.aiaAllocIntermedReqType, pos)
    of 573: parseChar(s, result.aiaMatchStatus, pos)
    of 460: parseInt(s, result.aiaProduct, pos)
    of 167: parseStr(s, result.aiaSecurityType, pos)
    of 58: parseStr(s, result.aiaText, pos)
    of 354: parseUInt(s, result.aiaEncodedTextLen, pos)
    of 355: parseStr(s, result.aiaEncodedText, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.aiaNoAllocs, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseDontKnowTrade(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("Q", "DontKnowTrade"))
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
    of 37: parseStr(s, result.dktOrderID, pos)
    of 198: parseStr(s, result.dktSecondaryOrderID, pos)
    of 17: parseStr(s, result.dktExecID, pos)
    of 127: parseChar(s, result.dktDKReason, pos)
    of 55: parseStr(s, result.dktSymbol, pos)
    of 65: parseStr(s, result.dktSymbolSfx, pos)
    of 48: parseStr(s, result.dktSecurityID, pos)
    of 22: parseStr(s, result.dktSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.dktNoSecurityAltID, pos)
    of 460: parseInt(s, result.dktProduct, pos)
    of 461: parseStr(s, result.dktCFICode, pos)
    of 167: parseStr(s, result.dktSecurityType, pos)
    of 762: parseStr(s, result.dktSecuritySubType, pos)
    of 200: parseStr(s, result.dktMaturityMonthYear, pos)
    of 541: parseStr(s, result.dktMaturityDate, pos)
    of 201: parseInt(s, result.dktPutOrCall, pos)
    of 224: parseStr(s, result.dktCouponPaymentDate, pos)
    of 225: parseStr(s, result.dktIssueDate, pos)
    of 239: parseStr(s, result.dktRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.dktRepurchaseTerm, pos)
    of 227: parseFloat(s, result.dktRepurchaseRate, pos)
    of 228: parseStr(s, result.dktFactor, pos)
    of 255: parseStr(s, result.dktCreditRating, pos)
    of 543: parseStr(s, result.dktInstrRegistry, pos)
    of 470: parseStr(s, result.dktCountryOfIssue, pos)
    of 471: parseStr(s, result.dktStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.dktLocaleOfIssue, pos)
    of 240: parseStr(s, result.dktRedemptionDate, pos)
    of 202: parseFloat(s, result.dktStrikePrice, pos)
    of 947: parseStr(s, result.dktStrikeCurrency, pos)
    of 206: parseChar(s, result.dktOptAttribute, pos)
    of 231: parseStr(s, result.dktContractMultiplier, pos)
    of 223: parseFloat(s, result.dktCouponRate, pos)
    of 207: parseStr(s, result.dktSecurityExchange, pos)
    of 106: parseStr(s, result.dktIssuer, pos)
    of 348: parseUInt(s, result.dktEncodedIssuerLen, pos)
    of 349: parseStr(s, result.dktEncodedIssuer, pos)
    of 107: parseStr(s, result.dktSecurityDesc, pos)
    of 350: parseUInt(s, result.dktEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.dktEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.dktPool, pos)
    of 667: parseStr(s, result.dktContractSettlMonth, pos)
    of 875: parseInt(s, result.dktCPProgram, pos)
    of 876: parseStr(s, result.dktCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.dktNoEvents, pos)
    of 873: parseStr(s, result.dktDatedDate, pos)
    of 874: parseStr(s, result.dktInterestAccrualDate, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.dktNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.dktNoLegs, pos)
    of 54: parseChar(s, result.dktSide, pos)
    of 38: parseInt(s, result.dktOrderQty, pos)
    of 152: parseInt(s, result.dktCashOrderQty, pos)
    of 516: parseFloat(s, result.dktOrderPercent, pos)
    of 468: parseChar(s, result.dktRoundingDirection, pos)
    of 469: parseStr(s, result.dktRoundingModulus, pos)
    of 32: parseInt(s, result.dktLastQty, pos)
    of 31: parseFloat(s, result.dktLastPx, pos)
    of 58: parseStr(s, result.dktText, pos)
    of 354: parseUInt(s, result.dktEncodedTextLen, pos)
    of 355: parseStr(s, result.dktEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseQuoteRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("R", "QuoteRequest"))
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
    of 131: parseStr(s, result.qrQuoteReqID, pos)
    of 644: parseStr(s, result.qrRFQReqID, pos)
    of 11: parseStr(s, result.qrClOrdID, pos)
    of 528: parseChar(s, result.qrOrderCapacity, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.qrNoRelatedSym, pos)
    of 58: parseStr(s, result.qrText, pos)
    of 354: parseUInt(s, result.qrEncodedTextLen, pos)
    of 355: parseStr(s, result.qrEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseQuote(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("S", "Quote"))
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
    of 131: parseStr(s, result.qQuoteReqID, pos)
    of 117: parseStr(s, result.qQuoteID, pos)
    of 693: parseStr(s, result.qQuoteRespID, pos)
    of 537: parseInt(s, result.qQuoteType, pos)
    of 735: skipValue(s, pos); parseNoQuoteQualifiers(s, result.qNoQuoteQualifiers, pos)
    of 301: parseInt(s, result.qQuoteResponseLevel, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.qNoPartyIDs, pos)
    of 336: parseStr(s, result.qTradingSessionID, pos)
    of 625: parseStr(s, result.qTradingSessionSubID, pos)
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
    of 913: parseStr(s, result.qAgreementDesc, pos)
    of 914: parseStr(s, result.qAgreementID, pos)
    of 915: parseStr(s, result.qAgreementDate, pos)
    of 918: parseStr(s, result.qAgreementCurrency, pos)
    of 788: parseInt(s, result.qTerminationType, pos)
    of 916: parseStr(s, result.qStartDate, pos)
    of 917: parseStr(s, result.qEndDate, pos)
    of 919: parseInt(s, result.qDeliveryType, pos)
    of 898: parseFloat(s, result.qMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.qNoUnderlyings, pos)
    of 54: parseChar(s, result.qSide, pos)
    of 38: parseInt(s, result.qOrderQty, pos)
    of 152: parseInt(s, result.qCashOrderQty, pos)
    of 516: parseFloat(s, result.qOrderPercent, pos)
    of 468: parseChar(s, result.qRoundingDirection, pos)
    of 469: parseStr(s, result.qRoundingModulus, pos)
    of 63: parseChar(s, result.qSettlType, pos)
    of 64: parseStr(s, result.qSettlDate, pos)
    of 193: parseStr(s, result.qSettlDate2, pos)
    of 192: parseInt(s, result.qOrderQty2, pos)
    of 15: parseStr(s, result.qCurrency, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.qNoStipulations, pos)
    of 1: parseStr(s, result.qAccount, pos)
    of 660: parseInt(s, result.qAcctIDSource, pos)
    of 581: parseInt(s, result.qAccountType, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.qNoLegs, pos)
    of 132: parseFloat(s, result.qBidPx, pos)
    of 133: parseFloat(s, result.qOfferPx, pos)
    of 645: parseFloat(s, result.qMktBidPx, pos)
    of 646: parseFloat(s, result.qMktOfferPx, pos)
    of 647: parseInt(s, result.qMinBidSize, pos)
    of 134: parseInt(s, result.qBidSize, pos)
    of 648: parseInt(s, result.qMinOfferSize, pos)
    of 135: parseInt(s, result.qOfferSize, pos)
    of 62: parseStr(s, result.qValidUntilTime, pos)
    of 188: parseFloat(s, result.qBidSpotRate, pos)
    of 190: parseFloat(s, result.qOfferSpotRate, pos)
    of 189: parseFloat(s, result.qBidForwardPoints, pos)
    of 191: parseFloat(s, result.qOfferForwardPoints, pos)
    of 631: parseFloat(s, result.qMidPx, pos)
    of 632: parseFloat(s, result.qBidYield, pos)
    of 633: parseFloat(s, result.qMidYield, pos)
    of 634: parseFloat(s, result.qOfferYield, pos)
    of 60: parseStr(s, result.qTransactTime, pos)
    of 40: parseChar(s, result.qOrdType, pos)
    of 642: parseFloat(s, result.qBidForwardPoints2, pos)
    of 643: parseFloat(s, result.qOfferForwardPoints2, pos)
    of 656: parseStr(s, result.qSettlCurrBidFxRate, pos)
    of 657: parseStr(s, result.qSettlCurrOfferFxRate, pos)
    of 156: parseChar(s, result.qSettlCurrFxRateCalc, pos)
    of 13: parseChar(s, result.qCommType, pos)
    of 12: parseUInt(s, result.qCommission, pos)
    of 582: parseInt(s, result.qCustOrderCapacity, pos)
    of 100: parseStr(s, result.qExDestination, pos)
    of 528: parseChar(s, result.qOrderCapacity, pos)
    of 423: parseInt(s, result.qPriceType, pos)
    of 218: parseFloat(s, result.qSpread, pos)
    of 220: parseStr(s, result.qBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.qBenchmarkCurveName, pos)
    of 222: parseStr(s, result.qBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.qBenchmarkPrice, pos)
    of 663: parseInt(s, result.qBenchmarkPriceType, pos)
    of 699: parseStr(s, result.qBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.qBenchmarkSecurityIDSource, pos)
    of 235: parseStr(s, result.qYieldType, pos)
    of 236: parseFloat(s, result.qYield, pos)
    of 701: parseStr(s, result.qYieldCalcDate, pos)
    of 696: parseStr(s, result.qYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.qYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.qYieldRedemptionPriceType, pos)
    of 58: parseStr(s, result.qText, pos)
    of 354: parseUInt(s, result.qEncodedTextLen, pos)
    of 355: parseStr(s, result.qEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseSettlementInstructions(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("T", "SettlementInstructions"))
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
    of 777: parseStr(s, result.siSettlInstMsgID, pos)
    of 791: parseStr(s, result.siSettlInstReqID, pos)
    of 160: parseChar(s, result.siSettlInstMode, pos)
    of 792: parseInt(s, result.siSettlInstReqRejCode, pos)
    of 58: parseStr(s, result.siText, pos)
    of 354: parseUInt(s, result.siEncodedTextLen, pos)
    of 355: parseStr(s, result.siEncodedText, pos)
    of 11: parseStr(s, result.siClOrdID, pos)
    of 60: parseStr(s, result.siTransactTime, pos)
    of 778: skipValue(s, pos); parseNoSettlInst(s, result.siNoSettlInst, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseMarketDataRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("V", "MarketDataRequest"))
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
    of 262: parseStr(s, result.mdrMDReqID, pos)
    of 263: parseChar(s, result.mdrSubscriptionRequestType, pos)
    of 264: parseInt(s, result.mdrMarketDepth, pos)
    of 265: parseInt(s, result.mdrMDUpdateType, pos)
    of 266: parseBool(s, result.mdrAggregatedBook, pos)
    of 286: parseStr(s, result.mdrOpenCloseSettlFlag, pos)
    of 546: parseStr(s, result.mdrScope, pos)
    of 547: parseBool(s, result.mdrMDImplicitDelete, pos)
    of 267: skipValue(s, pos); parseNoMDEntryTypes(s, result.mdrNoMDEntryTypes, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.mdrNoRelatedSym, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.mdrNoTradingSessions, pos)
    of 815: parseInt(s, result.mdrApplQueueAction, pos)
    of 812: parseInt(s, result.mdrApplQueueMax, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseMarketDataSnapshotFullRefresh(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("W", "MarketDataSnapshotFullRefresh"))
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
    of 262: parseStr(s, result.mdsfrMDReqID, pos)
    of 55: parseStr(s, result.mdsfrSymbol, pos)
    of 65: parseStr(s, result.mdsfrSymbolSfx, pos)
    of 48: parseStr(s, result.mdsfrSecurityID, pos)
    of 22: parseStr(s, result.mdsfrSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.mdsfrNoSecurityAltID, pos)
    of 460: parseInt(s, result.mdsfrProduct, pos)
    of 461: parseStr(s, result.mdsfrCFICode, pos)
    of 167: parseStr(s, result.mdsfrSecurityType, pos)
    of 762: parseStr(s, result.mdsfrSecuritySubType, pos)
    of 200: parseStr(s, result.mdsfrMaturityMonthYear, pos)
    of 541: parseStr(s, result.mdsfrMaturityDate, pos)
    of 201: parseInt(s, result.mdsfrPutOrCall, pos)
    of 224: parseStr(s, result.mdsfrCouponPaymentDate, pos)
    of 225: parseStr(s, result.mdsfrIssueDate, pos)
    of 239: parseStr(s, result.mdsfrRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.mdsfrRepurchaseTerm, pos)
    of 227: parseFloat(s, result.mdsfrRepurchaseRate, pos)
    of 228: parseStr(s, result.mdsfrFactor, pos)
    of 255: parseStr(s, result.mdsfrCreditRating, pos)
    of 543: parseStr(s, result.mdsfrInstrRegistry, pos)
    of 470: parseStr(s, result.mdsfrCountryOfIssue, pos)
    of 471: parseStr(s, result.mdsfrStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.mdsfrLocaleOfIssue, pos)
    of 240: parseStr(s, result.mdsfrRedemptionDate, pos)
    of 202: parseFloat(s, result.mdsfrStrikePrice, pos)
    of 947: parseStr(s, result.mdsfrStrikeCurrency, pos)
    of 206: parseChar(s, result.mdsfrOptAttribute, pos)
    of 231: parseStr(s, result.mdsfrContractMultiplier, pos)
    of 223: parseFloat(s, result.mdsfrCouponRate, pos)
    of 207: parseStr(s, result.mdsfrSecurityExchange, pos)
    of 106: parseStr(s, result.mdsfrIssuer, pos)
    of 348: parseUInt(s, result.mdsfrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.mdsfrEncodedIssuer, pos)
    of 107: parseStr(s, result.mdsfrSecurityDesc, pos)
    of 350: parseUInt(s, result.mdsfrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.mdsfrEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.mdsfrPool, pos)
    of 667: parseStr(s, result.mdsfrContractSettlMonth, pos)
    of 875: parseInt(s, result.mdsfrCPProgram, pos)
    of 876: parseStr(s, result.mdsfrCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.mdsfrNoEvents, pos)
    of 873: parseStr(s, result.mdsfrDatedDate, pos)
    of 874: parseStr(s, result.mdsfrInterestAccrualDate, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.mdsfrNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.mdsfrNoLegs, pos)
    of 291: parseStr(s, result.mdsfrFinancialStatus, pos)
    of 292: parseStr(s, result.mdsfrCorporateAction, pos)
    of 451: parseFloat(s, result.mdsfrNetChgPrevDay, pos)
    of 268: skipValue(s, pos); parseNoMDEntries(s, result.mdsfrNoMDEntries, pos)
    of 813: parseInt(s, result.mdsfrApplQueueDepth, pos)
    of 814: parseInt(s, result.mdsfrApplQueueResolution, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseMarketDataIncrementalRefresh(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("X", "MarketDataIncrementalRefresh"))
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
    of 262: parseStr(s, result.mdirMDReqID, pos)
    of 268: skipValue(s, pos); parseNoMDEntries(s, result.mdirNoMDEntries, pos)
    of 813: parseInt(s, result.mdirApplQueueDepth, pos)
    of 814: parseInt(s, result.mdirApplQueueResolution, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseMarketDataRequestReject(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("Y", "MarketDataRequestReject"))
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
    of 262: parseStr(s, result.mdrrMDReqID, pos)
    of 281: parseChar(s, result.mdrrMDReqRejReason, pos)
    of 816: skipValue(s, pos); parseNoAltMDSource(s, result.mdrrNoAltMDSource, pos)
    of 58: parseStr(s, result.mdrrText, pos)
    of 354: parseUInt(s, result.mdrrEncodedTextLen, pos)
    of 355: parseStr(s, result.mdrrEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseQuoteCancel(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("Z", "QuoteCancel"))
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
    of 131: parseStr(s, result.qcQuoteReqID, pos)
    of 117: parseStr(s, result.qcQuoteID, pos)
    of 298: parseInt(s, result.qcQuoteCancelType, pos)
    of 301: parseInt(s, result.qcQuoteResponseLevel, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.qcNoPartyIDs, pos)
    of 1: parseStr(s, result.qcAccount, pos)
    of 660: parseInt(s, result.qcAcctIDSource, pos)
    of 581: parseInt(s, result.qcAccountType, pos)
    of 336: parseStr(s, result.qcTradingSessionID, pos)
    of 625: parseStr(s, result.qcTradingSessionSubID, pos)
    of 295: skipValue(s, pos); parseNoQuoteEntries(s, result.qcNoQuoteEntries, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseQuoteStatusRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("a", "QuoteStatusRequest"))
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
    of 649: parseStr(s, result.qsrQuoteStatusReqID, pos)
    of 117: parseStr(s, result.qsrQuoteID, pos)
    of 55: parseStr(s, result.qsrSymbol, pos)
    of 65: parseStr(s, result.qsrSymbolSfx, pos)
    of 48: parseStr(s, result.qsrSecurityID, pos)
    of 22: parseStr(s, result.qsrSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.qsrNoSecurityAltID, pos)
    of 460: parseInt(s, result.qsrProduct, pos)
    of 461: parseStr(s, result.qsrCFICode, pos)
    of 167: parseStr(s, result.qsrSecurityType, pos)
    of 762: parseStr(s, result.qsrSecuritySubType, pos)
    of 200: parseStr(s, result.qsrMaturityMonthYear, pos)
    of 541: parseStr(s, result.qsrMaturityDate, pos)
    of 201: parseInt(s, result.qsrPutOrCall, pos)
    of 224: parseStr(s, result.qsrCouponPaymentDate, pos)
    of 225: parseStr(s, result.qsrIssueDate, pos)
    of 239: parseStr(s, result.qsrRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.qsrRepurchaseTerm, pos)
    of 227: parseFloat(s, result.qsrRepurchaseRate, pos)
    of 228: parseStr(s, result.qsrFactor, pos)
    of 255: parseStr(s, result.qsrCreditRating, pos)
    of 543: parseStr(s, result.qsrInstrRegistry, pos)
    of 470: parseStr(s, result.qsrCountryOfIssue, pos)
    of 471: parseStr(s, result.qsrStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.qsrLocaleOfIssue, pos)
    of 240: parseStr(s, result.qsrRedemptionDate, pos)
    of 202: parseFloat(s, result.qsrStrikePrice, pos)
    of 947: parseStr(s, result.qsrStrikeCurrency, pos)
    of 206: parseChar(s, result.qsrOptAttribute, pos)
    of 231: parseStr(s, result.qsrContractMultiplier, pos)
    of 223: parseFloat(s, result.qsrCouponRate, pos)
    of 207: parseStr(s, result.qsrSecurityExchange, pos)
    of 106: parseStr(s, result.qsrIssuer, pos)
    of 348: parseUInt(s, result.qsrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.qsrEncodedIssuer, pos)
    of 107: parseStr(s, result.qsrSecurityDesc, pos)
    of 350: parseUInt(s, result.qsrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.qsrEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.qsrPool, pos)
    of 667: parseStr(s, result.qsrContractSettlMonth, pos)
    of 875: parseInt(s, result.qsrCPProgram, pos)
    of 876: parseStr(s, result.qsrCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.qsrNoEvents, pos)
    of 873: parseStr(s, result.qsrDatedDate, pos)
    of 874: parseStr(s, result.qsrInterestAccrualDate, pos)
    of 913: parseStr(s, result.qsrAgreementDesc, pos)
    of 914: parseStr(s, result.qsrAgreementID, pos)
    of 915: parseStr(s, result.qsrAgreementDate, pos)
    of 918: parseStr(s, result.qsrAgreementCurrency, pos)
    of 788: parseInt(s, result.qsrTerminationType, pos)
    of 916: parseStr(s, result.qsrStartDate, pos)
    of 917: parseStr(s, result.qsrEndDate, pos)
    of 919: parseInt(s, result.qsrDeliveryType, pos)
    of 898: parseFloat(s, result.qsrMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.qsrNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.qsrNoLegs, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.qsrNoPartyIDs, pos)
    of 1: parseStr(s, result.qsrAccount, pos)
    of 660: parseInt(s, result.qsrAcctIDSource, pos)
    of 581: parseInt(s, result.qsrAccountType, pos)
    of 336: parseStr(s, result.qsrTradingSessionID, pos)
    of 625: parseStr(s, result.qsrTradingSessionSubID, pos)
    of 263: parseChar(s, result.qsrSubscriptionRequestType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseMassQuoteAcknowledgement(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("b", "MassQuoteAcknowledgement"))
  result.msgType = MassQuoteAcknowledgement
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
    of 131: parseStr(s, result.mqaQuoteReqID, pos)
    of 117: parseStr(s, result.mqaQuoteID, pos)
    of 297: parseInt(s, result.mqaQuoteStatus, pos)
    of 300: parseInt(s, result.mqaQuoteRejectReason, pos)
    of 301: parseInt(s, result.mqaQuoteResponseLevel, pos)
    of 537: parseInt(s, result.mqaQuoteType, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.mqaNoPartyIDs, pos)
    of 1: parseStr(s, result.mqaAccount, pos)
    of 660: parseInt(s, result.mqaAcctIDSource, pos)
    of 581: parseInt(s, result.mqaAccountType, pos)
    of 58: parseStr(s, result.mqaText, pos)
    of 354: parseUInt(s, result.mqaEncodedTextLen, pos)
    of 355: parseStr(s, result.mqaEncodedText, pos)
    of 296: skipValue(s, pos); parseNoQuoteSets(s, result.mqaNoQuoteSets, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseSecurityDefinitionRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("c", "SecurityDefinitionRequest"))
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
    of 320: parseStr(s, result.sdrSecurityReqID, pos)
    of 321: parseInt(s, result.sdrSecurityRequestType, pos)
    of 55: parseStr(s, result.sdrSymbol, pos)
    of 65: parseStr(s, result.sdrSymbolSfx, pos)
    of 48: parseStr(s, result.sdrSecurityID, pos)
    of 22: parseStr(s, result.sdrSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.sdrNoSecurityAltID, pos)
    of 460: parseInt(s, result.sdrProduct, pos)
    of 461: parseStr(s, result.sdrCFICode, pos)
    of 167: parseStr(s, result.sdrSecurityType, pos)
    of 762: parseStr(s, result.sdrSecuritySubType, pos)
    of 200: parseStr(s, result.sdrMaturityMonthYear, pos)
    of 541: parseStr(s, result.sdrMaturityDate, pos)
    of 201: parseInt(s, result.sdrPutOrCall, pos)
    of 224: parseStr(s, result.sdrCouponPaymentDate, pos)
    of 225: parseStr(s, result.sdrIssueDate, pos)
    of 239: parseStr(s, result.sdrRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.sdrRepurchaseTerm, pos)
    of 227: parseFloat(s, result.sdrRepurchaseRate, pos)
    of 228: parseStr(s, result.sdrFactor, pos)
    of 255: parseStr(s, result.sdrCreditRating, pos)
    of 543: parseStr(s, result.sdrInstrRegistry, pos)
    of 470: parseStr(s, result.sdrCountryOfIssue, pos)
    of 471: parseStr(s, result.sdrStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.sdrLocaleOfIssue, pos)
    of 240: parseStr(s, result.sdrRedemptionDate, pos)
    of 202: parseFloat(s, result.sdrStrikePrice, pos)
    of 947: parseStr(s, result.sdrStrikeCurrency, pos)
    of 206: parseChar(s, result.sdrOptAttribute, pos)
    of 231: parseStr(s, result.sdrContractMultiplier, pos)
    of 223: parseFloat(s, result.sdrCouponRate, pos)
    of 207: parseStr(s, result.sdrSecurityExchange, pos)
    of 106: parseStr(s, result.sdrIssuer, pos)
    of 348: parseUInt(s, result.sdrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.sdrEncodedIssuer, pos)
    of 107: parseStr(s, result.sdrSecurityDesc, pos)
    of 350: parseUInt(s, result.sdrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.sdrEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.sdrPool, pos)
    of 667: parseStr(s, result.sdrContractSettlMonth, pos)
    of 875: parseInt(s, result.sdrCPProgram, pos)
    of 876: parseStr(s, result.sdrCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.sdrNoEvents, pos)
    of 873: parseStr(s, result.sdrDatedDate, pos)
    of 874: parseStr(s, result.sdrInterestAccrualDate, pos)
    of 668: parseInt(s, result.sdrDeliveryForm, pos)
    of 869: parseFloat(s, result.sdrPctAtRisk, pos)
    of 870: skipValue(s, pos); parseNoInstrAttrib(s, result.sdrNoInstrAttrib, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.sdrNoUnderlyings, pos)
    of 15: parseStr(s, result.sdrCurrency, pos)
    of 58: parseStr(s, result.sdrText, pos)
    of 354: parseUInt(s, result.sdrEncodedTextLen, pos)
    of 355: parseStr(s, result.sdrEncodedText, pos)
    of 336: parseStr(s, result.sdrTradingSessionID, pos)
    of 625: parseStr(s, result.sdrTradingSessionSubID, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.sdrNoLegs, pos)
    of 827: parseInt(s, result.sdrExpirationCycle, pos)
    of 263: parseChar(s, result.sdrSubscriptionRequestType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseSecurityDefinition(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("d", "SecurityDefinition"))
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
    of 320: parseStr(s, result.sdSecurityReqID, pos)
    of 322: parseStr(s, result.sdSecurityResponseID, pos)
    of 323: parseInt(s, result.sdSecurityResponseType, pos)
    of 55: parseStr(s, result.sdSymbol, pos)
    of 65: parseStr(s, result.sdSymbolSfx, pos)
    of 48: parseStr(s, result.sdSecurityID, pos)
    of 22: parseStr(s, result.sdSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.sdNoSecurityAltID, pos)
    of 460: parseInt(s, result.sdProduct, pos)
    of 461: parseStr(s, result.sdCFICode, pos)
    of 167: parseStr(s, result.sdSecurityType, pos)
    of 762: parseStr(s, result.sdSecuritySubType, pos)
    of 200: parseStr(s, result.sdMaturityMonthYear, pos)
    of 541: parseStr(s, result.sdMaturityDate, pos)
    of 201: parseInt(s, result.sdPutOrCall, pos)
    of 224: parseStr(s, result.sdCouponPaymentDate, pos)
    of 225: parseStr(s, result.sdIssueDate, pos)
    of 239: parseStr(s, result.sdRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.sdRepurchaseTerm, pos)
    of 227: parseFloat(s, result.sdRepurchaseRate, pos)
    of 228: parseStr(s, result.sdFactor, pos)
    of 255: parseStr(s, result.sdCreditRating, pos)
    of 543: parseStr(s, result.sdInstrRegistry, pos)
    of 470: parseStr(s, result.sdCountryOfIssue, pos)
    of 471: parseStr(s, result.sdStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.sdLocaleOfIssue, pos)
    of 240: parseStr(s, result.sdRedemptionDate, pos)
    of 202: parseFloat(s, result.sdStrikePrice, pos)
    of 947: parseStr(s, result.sdStrikeCurrency, pos)
    of 206: parseChar(s, result.sdOptAttribute, pos)
    of 231: parseStr(s, result.sdContractMultiplier, pos)
    of 223: parseFloat(s, result.sdCouponRate, pos)
    of 207: parseStr(s, result.sdSecurityExchange, pos)
    of 106: parseStr(s, result.sdIssuer, pos)
    of 348: parseUInt(s, result.sdEncodedIssuerLen, pos)
    of 349: parseStr(s, result.sdEncodedIssuer, pos)
    of 107: parseStr(s, result.sdSecurityDesc, pos)
    of 350: parseUInt(s, result.sdEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.sdEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.sdPool, pos)
    of 667: parseStr(s, result.sdContractSettlMonth, pos)
    of 875: parseInt(s, result.sdCPProgram, pos)
    of 876: parseStr(s, result.sdCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.sdNoEvents, pos)
    of 873: parseStr(s, result.sdDatedDate, pos)
    of 874: parseStr(s, result.sdInterestAccrualDate, pos)
    of 668: parseInt(s, result.sdDeliveryForm, pos)
    of 869: parseFloat(s, result.sdPctAtRisk, pos)
    of 870: skipValue(s, pos); parseNoInstrAttrib(s, result.sdNoInstrAttrib, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.sdNoUnderlyings, pos)
    of 15: parseStr(s, result.sdCurrency, pos)
    of 336: parseStr(s, result.sdTradingSessionID, pos)
    of 625: parseStr(s, result.sdTradingSessionSubID, pos)
    of 58: parseStr(s, result.sdText, pos)
    of 354: parseUInt(s, result.sdEncodedTextLen, pos)
    of 355: parseStr(s, result.sdEncodedText, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.sdNoLegs, pos)
    of 827: parseInt(s, result.sdExpirationCycle, pos)
    of 561: parseInt(s, result.sdRoundLot, pos)
    of 562: parseInt(s, result.sdMinTradeVol, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseSecurityStatusRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("e", "SecurityStatusRequest"))
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
    of 324: parseStr(s, result.ssrSecurityStatusReqID, pos)
    of 55: parseStr(s, result.ssrSymbol, pos)
    of 65: parseStr(s, result.ssrSymbolSfx, pos)
    of 48: parseStr(s, result.ssrSecurityID, pos)
    of 22: parseStr(s, result.ssrSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.ssrNoSecurityAltID, pos)
    of 460: parseInt(s, result.ssrProduct, pos)
    of 461: parseStr(s, result.ssrCFICode, pos)
    of 167: parseStr(s, result.ssrSecurityType, pos)
    of 762: parseStr(s, result.ssrSecuritySubType, pos)
    of 200: parseStr(s, result.ssrMaturityMonthYear, pos)
    of 541: parseStr(s, result.ssrMaturityDate, pos)
    of 201: parseInt(s, result.ssrPutOrCall, pos)
    of 224: parseStr(s, result.ssrCouponPaymentDate, pos)
    of 225: parseStr(s, result.ssrIssueDate, pos)
    of 239: parseStr(s, result.ssrRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.ssrRepurchaseTerm, pos)
    of 227: parseFloat(s, result.ssrRepurchaseRate, pos)
    of 228: parseStr(s, result.ssrFactor, pos)
    of 255: parseStr(s, result.ssrCreditRating, pos)
    of 543: parseStr(s, result.ssrInstrRegistry, pos)
    of 470: parseStr(s, result.ssrCountryOfIssue, pos)
    of 471: parseStr(s, result.ssrStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.ssrLocaleOfIssue, pos)
    of 240: parseStr(s, result.ssrRedemptionDate, pos)
    of 202: parseFloat(s, result.ssrStrikePrice, pos)
    of 947: parseStr(s, result.ssrStrikeCurrency, pos)
    of 206: parseChar(s, result.ssrOptAttribute, pos)
    of 231: parseStr(s, result.ssrContractMultiplier, pos)
    of 223: parseFloat(s, result.ssrCouponRate, pos)
    of 207: parseStr(s, result.ssrSecurityExchange, pos)
    of 106: parseStr(s, result.ssrIssuer, pos)
    of 348: parseUInt(s, result.ssrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.ssrEncodedIssuer, pos)
    of 107: parseStr(s, result.ssrSecurityDesc, pos)
    of 350: parseUInt(s, result.ssrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.ssrEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.ssrPool, pos)
    of 667: parseStr(s, result.ssrContractSettlMonth, pos)
    of 875: parseInt(s, result.ssrCPProgram, pos)
    of 876: parseStr(s, result.ssrCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.ssrNoEvents, pos)
    of 873: parseStr(s, result.ssrDatedDate, pos)
    of 874: parseStr(s, result.ssrInterestAccrualDate, pos)
    of 668: parseInt(s, result.ssrDeliveryForm, pos)
    of 869: parseFloat(s, result.ssrPctAtRisk, pos)
    of 870: skipValue(s, pos); parseNoInstrAttrib(s, result.ssrNoInstrAttrib, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.ssrNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.ssrNoLegs, pos)
    of 15: parseStr(s, result.ssrCurrency, pos)
    of 263: parseChar(s, result.ssrSubscriptionRequestType, pos)
    of 336: parseStr(s, result.ssrTradingSessionID, pos)
    of 625: parseStr(s, result.ssrTradingSessionSubID, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseSecurityStatus(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("f", "SecurityStatus"))
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
    of 324: parseStr(s, result.ssSecurityStatusReqID, pos)
    of 55: parseStr(s, result.ssSymbol, pos)
    of 65: parseStr(s, result.ssSymbolSfx, pos)
    of 48: parseStr(s, result.ssSecurityID, pos)
    of 22: parseStr(s, result.ssSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.ssNoSecurityAltID, pos)
    of 460: parseInt(s, result.ssProduct, pos)
    of 461: parseStr(s, result.ssCFICode, pos)
    of 167: parseStr(s, result.ssSecurityType, pos)
    of 762: parseStr(s, result.ssSecuritySubType, pos)
    of 200: parseStr(s, result.ssMaturityMonthYear, pos)
    of 541: parseStr(s, result.ssMaturityDate, pos)
    of 201: parseInt(s, result.ssPutOrCall, pos)
    of 224: parseStr(s, result.ssCouponPaymentDate, pos)
    of 225: parseStr(s, result.ssIssueDate, pos)
    of 239: parseStr(s, result.ssRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.ssRepurchaseTerm, pos)
    of 227: parseFloat(s, result.ssRepurchaseRate, pos)
    of 228: parseStr(s, result.ssFactor, pos)
    of 255: parseStr(s, result.ssCreditRating, pos)
    of 543: parseStr(s, result.ssInstrRegistry, pos)
    of 470: parseStr(s, result.ssCountryOfIssue, pos)
    of 471: parseStr(s, result.ssStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.ssLocaleOfIssue, pos)
    of 240: parseStr(s, result.ssRedemptionDate, pos)
    of 202: parseFloat(s, result.ssStrikePrice, pos)
    of 947: parseStr(s, result.ssStrikeCurrency, pos)
    of 206: parseChar(s, result.ssOptAttribute, pos)
    of 231: parseStr(s, result.ssContractMultiplier, pos)
    of 223: parseFloat(s, result.ssCouponRate, pos)
    of 207: parseStr(s, result.ssSecurityExchange, pos)
    of 106: parseStr(s, result.ssIssuer, pos)
    of 348: parseUInt(s, result.ssEncodedIssuerLen, pos)
    of 349: parseStr(s, result.ssEncodedIssuer, pos)
    of 107: parseStr(s, result.ssSecurityDesc, pos)
    of 350: parseUInt(s, result.ssEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.ssEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.ssPool, pos)
    of 667: parseStr(s, result.ssContractSettlMonth, pos)
    of 875: parseInt(s, result.ssCPProgram, pos)
    of 876: parseStr(s, result.ssCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.ssNoEvents, pos)
    of 873: parseStr(s, result.ssDatedDate, pos)
    of 874: parseStr(s, result.ssInterestAccrualDate, pos)
    of 668: parseInt(s, result.ssDeliveryForm, pos)
    of 869: parseFloat(s, result.ssPctAtRisk, pos)
    of 870: skipValue(s, pos); parseNoInstrAttrib(s, result.ssNoInstrAttrib, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.ssNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.ssNoLegs, pos)
    of 15: parseStr(s, result.ssCurrency, pos)
    of 336: parseStr(s, result.ssTradingSessionID, pos)
    of 625: parseStr(s, result.ssTradingSessionSubID, pos)
    of 325: parseBool(s, result.ssUnsolicitedIndicator, pos)
    of 326: parseInt(s, result.ssSecurityTradingStatus, pos)
    of 291: parseStr(s, result.ssFinancialStatus, pos)
    of 292: parseStr(s, result.ssCorporateAction, pos)
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
    of 58: parseStr(s, result.ssText, pos)
    of 354: parseUInt(s, result.ssEncodedTextLen, pos)
    of 355: parseStr(s, result.ssEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseTradingSessionStatusRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("g", "TradingSessionStatusRequest"))
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
    of 335: parseStr(s, result.tssrTradSesReqID, pos)
    of 336: parseStr(s, result.tssrTradingSessionID, pos)
    of 625: parseStr(s, result.tssrTradingSessionSubID, pos)
    of 338: parseInt(s, result.tssrTradSesMethod, pos)
    of 339: parseInt(s, result.tssrTradSesMode, pos)
    of 263: parseChar(s, result.tssrSubscriptionRequestType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseTradingSessionStatus(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("h", "TradingSessionStatus"))
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
    of 335: parseStr(s, result.tssTradSesReqID, pos)
    of 336: parseStr(s, result.tssTradingSessionID, pos)
    of 625: parseStr(s, result.tssTradingSessionSubID, pos)
    of 338: parseInt(s, result.tssTradSesMethod, pos)
    of 339: parseInt(s, result.tssTradSesMode, pos)
    of 325: parseBool(s, result.tssUnsolicitedIndicator, pos)
    of 340: parseInt(s, result.tssTradSesStatus, pos)
    of 567: parseInt(s, result.tssTradSesStatusRejReason, pos)
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

proc parseMassQuote(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("i", "MassQuote"))
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
    of 131: parseStr(s, result.mqQuoteReqID, pos)
    of 117: parseStr(s, result.mqQuoteID, pos)
    of 537: parseInt(s, result.mqQuoteType, pos)
    of 301: parseInt(s, result.mqQuoteResponseLevel, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.mqNoPartyIDs, pos)
    of 1: parseStr(s, result.mqAccount, pos)
    of 660: parseInt(s, result.mqAcctIDSource, pos)
    of 581: parseInt(s, result.mqAccountType, pos)
    of 293: parseInt(s, result.mqDefBidSize, pos)
    of 294: parseInt(s, result.mqDefOfferSize, pos)
    of 296: skipValue(s, pos); parseNoQuoteSets(s, result.mqNoQuoteSets, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseBusinessMessageReject(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("j", "BusinessMessageReject"))
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
    of 45: parseUInt(s, result.bmrRefSeqNum, pos)
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

proc parseBidRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("k", "BidRequest"))
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
    of 390: parseStr(s, result.brBidID, pos)
    of 391: parseStr(s, result.brClientBidID, pos)
    of 374: parseChar(s, result.brBidRequestTransType, pos)
    of 392: parseStr(s, result.brListName, pos)
    of 393: parseInt(s, result.brTotNoRelatedSym, pos)
    of 394: parseInt(s, result.brBidType, pos)
    of 395: parseInt(s, result.brNumTickets, pos)
    of 15: parseStr(s, result.brCurrency, pos)
    of 396: parseUInt(s, result.brSideValue1, pos)
    of 397: parseUInt(s, result.brSideValue2, pos)
    of 398: skipValue(s, pos); parseNoBidDescriptors(s, result.brNoBidDescriptors, pos)
    of 420: skipValue(s, pos); parseNoBidComponents(s, result.brNoBidComponents, pos)
    of 409: parseInt(s, result.brLiquidityIndType, pos)
    of 410: parseFloat(s, result.brWtAverageLiquidity, pos)
    of 411: parseBool(s, result.brExchangeForPhysical, pos)
    of 412: parseUInt(s, result.brOutMainCntryUIndex, pos)
    of 413: parseFloat(s, result.brCrossPercent, pos)
    of 414: parseInt(s, result.brProgRptReqs, pos)
    of 415: parseInt(s, result.brProgPeriodInterval, pos)
    of 416: parseInt(s, result.brIncTaxInd, pos)
    of 121: parseBool(s, result.brForexReq, pos)
    of 417: parseInt(s, result.brNumBidders, pos)
    of 75: parseStr(s, result.brTradeDate, pos)
    of 418: parseChar(s, result.brBidTradeType, pos)
    of 419: parseChar(s, result.brBasisPxType, pos)
    of 443: parseStr(s, result.brStrikeTime, pos)
    of 58: parseStr(s, result.brText, pos)
    of 354: parseUInt(s, result.brEncodedTextLen, pos)
    of 355: parseStr(s, result.brEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseBidResponse(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("l", "BidResponse"))
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
    of 390: parseStr(s, result.brBidID, pos)
    of 391: parseStr(s, result.brClientBidID, pos)
    of 420: skipValue(s, pos); parseNoBidComponents(s, result.brNoBidComponents, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseListStrikePrice(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("m", "ListStrikePrice"))
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
    of 66: parseStr(s, result.lspListID, pos)
    of 422: parseInt(s, result.lspTotNoStrikes, pos)
    of 893: parseBool(s, result.lspLastFragment, pos)
    of 428: skipValue(s, pos); parseNoStrikes(s, result.lspNoStrikes, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.lspNoUnderlyings, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseXMLnonFIX(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("n", "XMLnonFIX"))
  result.msgType = XMLnonFIX
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

proc parseRegistrationInstructions(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("o", "RegistrationInstructions"))
  result.msgType = RegistrationInstructions
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
    of 513: parseStr(s, result.riRegistID, pos)
    of 514: parseChar(s, result.riRegistTransType, pos)
    of 508: parseStr(s, result.riRegistRefID, pos)
    of 11: parseStr(s, result.riClOrdID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.riNoPartyIDs, pos)
    of 1: parseStr(s, result.riAccount, pos)
    of 660: parseInt(s, result.riAcctIDSource, pos)
    of 493: parseStr(s, result.riRegistAcctType, pos)
    of 495: parseInt(s, result.riTaxAdvantageType, pos)
    of 517: parseChar(s, result.riOwnershipType, pos)
    of 473: skipValue(s, pos); parseNoRegistDtls(s, result.riNoRegistDtls, pos)
    of 510: skipValue(s, pos); parseNoDistribInsts(s, result.riNoDistribInsts, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseRegistrationInstructionsResponse(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("p", "RegistrationInstructionsResponse"))
  result.msgType = RegistrationInstructionsResponse
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
    of 513: parseStr(s, result.rirRegistID, pos)
    of 514: parseChar(s, result.rirRegistTransType, pos)
    of 508: parseStr(s, result.rirRegistRefID, pos)
    of 11: parseStr(s, result.rirClOrdID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.rirNoPartyIDs, pos)
    of 1: parseStr(s, result.rirAccount, pos)
    of 660: parseInt(s, result.rirAcctIDSource, pos)
    of 506: parseChar(s, result.rirRegistStatus, pos)
    of 507: parseInt(s, result.rirRegistRejReasonCode, pos)
    of 496: parseStr(s, result.rirRegistRejReasonText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseOrderMassCancelRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("q", "OrderMassCancelRequest"))
  result.msgType = OrderMassCancelRequest
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
    of 11: parseStr(s, result.omcrClOrdID, pos)
    of 526: parseStr(s, result.omcrSecondaryClOrdID, pos)
    of 530: parseChar(s, result.omcrMassCancelRequestType, pos)
    of 336: parseStr(s, result.omcrTradingSessionID, pos)
    of 625: parseStr(s, result.omcrTradingSessionSubID, pos)
    of 55: parseStr(s, result.omcrSymbol, pos)
    of 65: parseStr(s, result.omcrSymbolSfx, pos)
    of 48: parseStr(s, result.omcrSecurityID, pos)
    of 22: parseStr(s, result.omcrSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.omcrNoSecurityAltID, pos)
    of 460: parseInt(s, result.omcrProduct, pos)
    of 461: parseStr(s, result.omcrCFICode, pos)
    of 167: parseStr(s, result.omcrSecurityType, pos)
    of 762: parseStr(s, result.omcrSecuritySubType, pos)
    of 200: parseStr(s, result.omcrMaturityMonthYear, pos)
    of 541: parseStr(s, result.omcrMaturityDate, pos)
    of 201: parseInt(s, result.omcrPutOrCall, pos)
    of 224: parseStr(s, result.omcrCouponPaymentDate, pos)
    of 225: parseStr(s, result.omcrIssueDate, pos)
    of 239: parseStr(s, result.omcrRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.omcrRepurchaseTerm, pos)
    of 227: parseFloat(s, result.omcrRepurchaseRate, pos)
    of 228: parseStr(s, result.omcrFactor, pos)
    of 255: parseStr(s, result.omcrCreditRating, pos)
    of 543: parseStr(s, result.omcrInstrRegistry, pos)
    of 470: parseStr(s, result.omcrCountryOfIssue, pos)
    of 471: parseStr(s, result.omcrStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.omcrLocaleOfIssue, pos)
    of 240: parseStr(s, result.omcrRedemptionDate, pos)
    of 202: parseFloat(s, result.omcrStrikePrice, pos)
    of 947: parseStr(s, result.omcrStrikeCurrency, pos)
    of 206: parseChar(s, result.omcrOptAttribute, pos)
    of 231: parseStr(s, result.omcrContractMultiplier, pos)
    of 223: parseFloat(s, result.omcrCouponRate, pos)
    of 207: parseStr(s, result.omcrSecurityExchange, pos)
    of 106: parseStr(s, result.omcrIssuer, pos)
    of 348: parseUInt(s, result.omcrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.omcrEncodedIssuer, pos)
    of 107: parseStr(s, result.omcrSecurityDesc, pos)
    of 350: parseUInt(s, result.omcrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.omcrEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.omcrPool, pos)
    of 667: parseStr(s, result.omcrContractSettlMonth, pos)
    of 875: parseInt(s, result.omcrCPProgram, pos)
    of 876: parseStr(s, result.omcrCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.omcrNoEvents, pos)
    of 873: parseStr(s, result.omcrDatedDate, pos)
    of 874: parseStr(s, result.omcrInterestAccrualDate, pos)
    of 311: parseStr(s, result.omcrUnderlyingSymbol, pos)
    of 312: parseStr(s, result.omcrUnderlyingSymbolSfx, pos)
    of 309: parseStr(s, result.omcrUnderlyingSecurityID, pos)
    of 305: parseStr(s, result.omcrUnderlyingSecurityIDSource, pos)
    of 457: skipValue(s, pos); parseNoUnderlyingSecurityAltID(s, result.omcrNoUnderlyingSecurityAltID, pos)
    of 462: parseInt(s, result.omcrUnderlyingProduct, pos)
    of 463: parseStr(s, result.omcrUnderlyingCFICode, pos)
    of 310: parseStr(s, result.omcrUnderlyingSecurityType, pos)
    of 763: parseStr(s, result.omcrUnderlyingSecuritySubType, pos)
    of 313: parseStr(s, result.omcrUnderlyingMaturityMonthYear, pos)
    of 542: parseStr(s, result.omcrUnderlyingMaturityDate, pos)
    of 315: parseInt(s, result.omcrUnderlyingPutOrCall, pos)
    of 241: parseStr(s, result.omcrUnderlyingCouponPaymentDate, pos)
    of 242: parseStr(s, result.omcrUnderlyingIssueDate, pos)
    of 243: parseStr(s, result.omcrUnderlyingRepoCollateralSecurityType, pos)
    of 244: parseInt(s, result.omcrUnderlyingRepurchaseTerm, pos)
    of 245: parseFloat(s, result.omcrUnderlyingRepurchaseRate, pos)
    of 246: parseStr(s, result.omcrUnderlyingFactor, pos)
    of 256: parseStr(s, result.omcrUnderlyingCreditRating, pos)
    of 595: parseStr(s, result.omcrUnderlyingInstrRegistry, pos)
    of 592: parseStr(s, result.omcrUnderlyingCountryOfIssue, pos)
    of 593: parseStr(s, result.omcrUnderlyingStateOrProvinceOfIssue, pos)
    of 594: parseStr(s, result.omcrUnderlyingLocaleOfIssue, pos)
    of 247: parseStr(s, result.omcrUnderlyingRedemptionDate, pos)
    of 316: parseFloat(s, result.omcrUnderlyingStrikePrice, pos)
    of 941: parseStr(s, result.omcrUnderlyingStrikeCurrency, pos)
    of 317: parseChar(s, result.omcrUnderlyingOptAttribute, pos)
    of 436: parseStr(s, result.omcrUnderlyingContractMultiplier, pos)
    of 435: parseFloat(s, result.omcrUnderlyingCouponRate, pos)
    of 308: parseStr(s, result.omcrUnderlyingSecurityExchange, pos)
    of 306: parseStr(s, result.omcrUnderlyingIssuer, pos)
    of 362: parseUInt(s, result.omcrEncodedUnderlyingIssuerLen, pos)
    of 363: parseStr(s, result.omcrEncodedUnderlyingIssuer, pos)
    of 307: parseStr(s, result.omcrUnderlyingSecurityDesc, pos)
    of 364: parseUInt(s, result.omcrEncodedUnderlyingSecurityDescLen, pos)
    of 365: parseStr(s, result.omcrEncodedUnderlyingSecurityDesc, pos)
    of 877: parseStr(s, result.omcrUnderlyingCPProgram, pos)
    of 878: parseStr(s, result.omcrUnderlyingCPRegType, pos)
    of 318: parseStr(s, result.omcrUnderlyingCurrency, pos)
    of 879: parseInt(s, result.omcrUnderlyingQty, pos)
    of 810: parseFloat(s, result.omcrUnderlyingPx, pos)
    of 882: parseFloat(s, result.omcrUnderlyingDirtyPrice, pos)
    of 883: parseFloat(s, result.omcrUnderlyingEndPrice, pos)
    of 884: parseUInt(s, result.omcrUnderlyingStartValue, pos)
    of 885: parseUInt(s, result.omcrUnderlyingCurrentValue, pos)
    of 886: parseUInt(s, result.omcrUnderlyingEndValue, pos)
    of 887: skipValue(s, pos); parseNoUnderlyingStips(s, result.omcrNoUnderlyingStips, pos)
    of 54: parseChar(s, result.omcrSide, pos)
    of 60: parseStr(s, result.omcrTransactTime, pos)
    of 58: parseStr(s, result.omcrText, pos)
    of 354: parseUInt(s, result.omcrEncodedTextLen, pos)
    of 355: parseStr(s, result.omcrEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseOrderMassCancelReport(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("r", "OrderMassCancelReport"))
  result.msgType = OrderMassCancelReport
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
    of 11: parseStr(s, result.omcrClOrdID, pos)
    of 526: parseStr(s, result.omcrSecondaryClOrdID, pos)
    of 37: parseStr(s, result.omcrOrderID, pos)
    of 198: parseStr(s, result.omcrSecondaryOrderID, pos)
    of 530: parseChar(s, result.omcrMassCancelRequestType, pos)
    of 531: parseChar(s, result.omcrMassCancelResponse, pos)
    of 532: parseChar(s, result.omcrMassCancelRejectReason, pos)
    of 533: parseInt(s, result.omcrTotalAffectedOrders, pos)
    of 534: skipValue(s, pos); parseNoAffectedOrders(s, result.omcrNoAffectedOrders, pos)
    of 336: parseStr(s, result.omcrTradingSessionID, pos)
    of 625: parseStr(s, result.omcrTradingSessionSubID, pos)
    of 55: parseStr(s, result.omcrSymbol, pos)
    of 65: parseStr(s, result.omcrSymbolSfx, pos)
    of 48: parseStr(s, result.omcrSecurityID, pos)
    of 22: parseStr(s, result.omcrSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.omcrNoSecurityAltID, pos)
    of 460: parseInt(s, result.omcrProduct, pos)
    of 461: parseStr(s, result.omcrCFICode, pos)
    of 167: parseStr(s, result.omcrSecurityType, pos)
    of 762: parseStr(s, result.omcrSecuritySubType, pos)
    of 200: parseStr(s, result.omcrMaturityMonthYear, pos)
    of 541: parseStr(s, result.omcrMaturityDate, pos)
    of 201: parseInt(s, result.omcrPutOrCall, pos)
    of 224: parseStr(s, result.omcrCouponPaymentDate, pos)
    of 225: parseStr(s, result.omcrIssueDate, pos)
    of 239: parseStr(s, result.omcrRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.omcrRepurchaseTerm, pos)
    of 227: parseFloat(s, result.omcrRepurchaseRate, pos)
    of 228: parseStr(s, result.omcrFactor, pos)
    of 255: parseStr(s, result.omcrCreditRating, pos)
    of 543: parseStr(s, result.omcrInstrRegistry, pos)
    of 470: parseStr(s, result.omcrCountryOfIssue, pos)
    of 471: parseStr(s, result.omcrStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.omcrLocaleOfIssue, pos)
    of 240: parseStr(s, result.omcrRedemptionDate, pos)
    of 202: parseFloat(s, result.omcrStrikePrice, pos)
    of 947: parseStr(s, result.omcrStrikeCurrency, pos)
    of 206: parseChar(s, result.omcrOptAttribute, pos)
    of 231: parseStr(s, result.omcrContractMultiplier, pos)
    of 223: parseFloat(s, result.omcrCouponRate, pos)
    of 207: parseStr(s, result.omcrSecurityExchange, pos)
    of 106: parseStr(s, result.omcrIssuer, pos)
    of 348: parseUInt(s, result.omcrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.omcrEncodedIssuer, pos)
    of 107: parseStr(s, result.omcrSecurityDesc, pos)
    of 350: parseUInt(s, result.omcrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.omcrEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.omcrPool, pos)
    of 667: parseStr(s, result.omcrContractSettlMonth, pos)
    of 875: parseInt(s, result.omcrCPProgram, pos)
    of 876: parseStr(s, result.omcrCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.omcrNoEvents, pos)
    of 873: parseStr(s, result.omcrDatedDate, pos)
    of 874: parseStr(s, result.omcrInterestAccrualDate, pos)
    of 311: parseStr(s, result.omcrUnderlyingSymbol, pos)
    of 312: parseStr(s, result.omcrUnderlyingSymbolSfx, pos)
    of 309: parseStr(s, result.omcrUnderlyingSecurityID, pos)
    of 305: parseStr(s, result.omcrUnderlyingSecurityIDSource, pos)
    of 457: skipValue(s, pos); parseNoUnderlyingSecurityAltID(s, result.omcrNoUnderlyingSecurityAltID, pos)
    of 462: parseInt(s, result.omcrUnderlyingProduct, pos)
    of 463: parseStr(s, result.omcrUnderlyingCFICode, pos)
    of 310: parseStr(s, result.omcrUnderlyingSecurityType, pos)
    of 763: parseStr(s, result.omcrUnderlyingSecuritySubType, pos)
    of 313: parseStr(s, result.omcrUnderlyingMaturityMonthYear, pos)
    of 542: parseStr(s, result.omcrUnderlyingMaturityDate, pos)
    of 315: parseInt(s, result.omcrUnderlyingPutOrCall, pos)
    of 241: parseStr(s, result.omcrUnderlyingCouponPaymentDate, pos)
    of 242: parseStr(s, result.omcrUnderlyingIssueDate, pos)
    of 243: parseStr(s, result.omcrUnderlyingRepoCollateralSecurityType, pos)
    of 244: parseInt(s, result.omcrUnderlyingRepurchaseTerm, pos)
    of 245: parseFloat(s, result.omcrUnderlyingRepurchaseRate, pos)
    of 246: parseStr(s, result.omcrUnderlyingFactor, pos)
    of 256: parseStr(s, result.omcrUnderlyingCreditRating, pos)
    of 595: parseStr(s, result.omcrUnderlyingInstrRegistry, pos)
    of 592: parseStr(s, result.omcrUnderlyingCountryOfIssue, pos)
    of 593: parseStr(s, result.omcrUnderlyingStateOrProvinceOfIssue, pos)
    of 594: parseStr(s, result.omcrUnderlyingLocaleOfIssue, pos)
    of 247: parseStr(s, result.omcrUnderlyingRedemptionDate, pos)
    of 316: parseFloat(s, result.omcrUnderlyingStrikePrice, pos)
    of 941: parseStr(s, result.omcrUnderlyingStrikeCurrency, pos)
    of 317: parseChar(s, result.omcrUnderlyingOptAttribute, pos)
    of 436: parseStr(s, result.omcrUnderlyingContractMultiplier, pos)
    of 435: parseFloat(s, result.omcrUnderlyingCouponRate, pos)
    of 308: parseStr(s, result.omcrUnderlyingSecurityExchange, pos)
    of 306: parseStr(s, result.omcrUnderlyingIssuer, pos)
    of 362: parseUInt(s, result.omcrEncodedUnderlyingIssuerLen, pos)
    of 363: parseStr(s, result.omcrEncodedUnderlyingIssuer, pos)
    of 307: parseStr(s, result.omcrUnderlyingSecurityDesc, pos)
    of 364: parseUInt(s, result.omcrEncodedUnderlyingSecurityDescLen, pos)
    of 365: parseStr(s, result.omcrEncodedUnderlyingSecurityDesc, pos)
    of 877: parseStr(s, result.omcrUnderlyingCPProgram, pos)
    of 878: parseStr(s, result.omcrUnderlyingCPRegType, pos)
    of 318: parseStr(s, result.omcrUnderlyingCurrency, pos)
    of 879: parseInt(s, result.omcrUnderlyingQty, pos)
    of 810: parseFloat(s, result.omcrUnderlyingPx, pos)
    of 882: parseFloat(s, result.omcrUnderlyingDirtyPrice, pos)
    of 883: parseFloat(s, result.omcrUnderlyingEndPrice, pos)
    of 884: parseUInt(s, result.omcrUnderlyingStartValue, pos)
    of 885: parseUInt(s, result.omcrUnderlyingCurrentValue, pos)
    of 886: parseUInt(s, result.omcrUnderlyingEndValue, pos)
    of 887: skipValue(s, pos); parseNoUnderlyingStips(s, result.omcrNoUnderlyingStips, pos)
    of 54: parseChar(s, result.omcrSide, pos)
    of 60: parseStr(s, result.omcrTransactTime, pos)
    of 58: parseStr(s, result.omcrText, pos)
    of 354: parseUInt(s, result.omcrEncodedTextLen, pos)
    of 355: parseStr(s, result.omcrEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseNewOrderCross(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("s", "NewOrderCross"))
  result.msgType = NewOrderCross
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
    of 548: parseStr(s, result.nocCrossID, pos)
    of 549: parseInt(s, result.nocCrossType, pos)
    of 550: parseInt(s, result.nocCrossPrioritization, pos)
    of 552: skipValue(s, pos); parseNoSides(s, result.nocNoSides, pos)
    of 55: parseStr(s, result.nocSymbol, pos)
    of 65: parseStr(s, result.nocSymbolSfx, pos)
    of 48: parseStr(s, result.nocSecurityID, pos)
    of 22: parseStr(s, result.nocSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.nocNoSecurityAltID, pos)
    of 460: parseInt(s, result.nocProduct, pos)
    of 461: parseStr(s, result.nocCFICode, pos)
    of 167: parseStr(s, result.nocSecurityType, pos)
    of 762: parseStr(s, result.nocSecuritySubType, pos)
    of 200: parseStr(s, result.nocMaturityMonthYear, pos)
    of 541: parseStr(s, result.nocMaturityDate, pos)
    of 201: parseInt(s, result.nocPutOrCall, pos)
    of 224: parseStr(s, result.nocCouponPaymentDate, pos)
    of 225: parseStr(s, result.nocIssueDate, pos)
    of 239: parseStr(s, result.nocRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.nocRepurchaseTerm, pos)
    of 227: parseFloat(s, result.nocRepurchaseRate, pos)
    of 228: parseStr(s, result.nocFactor, pos)
    of 255: parseStr(s, result.nocCreditRating, pos)
    of 543: parseStr(s, result.nocInstrRegistry, pos)
    of 470: parseStr(s, result.nocCountryOfIssue, pos)
    of 471: parseStr(s, result.nocStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.nocLocaleOfIssue, pos)
    of 240: parseStr(s, result.nocRedemptionDate, pos)
    of 202: parseFloat(s, result.nocStrikePrice, pos)
    of 947: parseStr(s, result.nocStrikeCurrency, pos)
    of 206: parseChar(s, result.nocOptAttribute, pos)
    of 231: parseStr(s, result.nocContractMultiplier, pos)
    of 223: parseFloat(s, result.nocCouponRate, pos)
    of 207: parseStr(s, result.nocSecurityExchange, pos)
    of 106: parseStr(s, result.nocIssuer, pos)
    of 348: parseUInt(s, result.nocEncodedIssuerLen, pos)
    of 349: parseStr(s, result.nocEncodedIssuer, pos)
    of 107: parseStr(s, result.nocSecurityDesc, pos)
    of 350: parseUInt(s, result.nocEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.nocEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.nocPool, pos)
    of 667: parseStr(s, result.nocContractSettlMonth, pos)
    of 875: parseInt(s, result.nocCPProgram, pos)
    of 876: parseStr(s, result.nocCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.nocNoEvents, pos)
    of 873: parseStr(s, result.nocDatedDate, pos)
    of 874: parseStr(s, result.nocInterestAccrualDate, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.nocNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.nocNoLegs, pos)
    of 63: parseChar(s, result.nocSettlType, pos)
    of 64: parseStr(s, result.nocSettlDate, pos)
    of 21: parseChar(s, result.nocHandlInst, pos)
    of 18: parseStr(s, result.nocExecInst, pos)
    of 110: parseInt(s, result.nocMinQty, pos)
    of 111: parseInt(s, result.nocMaxFloor, pos)
    of 100: parseStr(s, result.nocExDestination, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.nocNoTradingSessions, pos)
    of 81: parseChar(s, result.nocProcessCode, pos)
    of 140: parseFloat(s, result.nocPrevClosePx, pos)
    of 114: parseBool(s, result.nocLocateReqd, pos)
    of 60: parseStr(s, result.nocTransactTime, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.nocNoStipulations, pos)
    of 40: parseChar(s, result.nocOrdType, pos)
    of 423: parseInt(s, result.nocPriceType, pos)
    of 44: parseFloat(s, result.nocPrice, pos)
    of 99: parseFloat(s, result.nocStopPx, pos)
    of 218: parseFloat(s, result.nocSpread, pos)
    of 220: parseStr(s, result.nocBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.nocBenchmarkCurveName, pos)
    of 222: parseStr(s, result.nocBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.nocBenchmarkPrice, pos)
    of 663: parseInt(s, result.nocBenchmarkPriceType, pos)
    of 699: parseStr(s, result.nocBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.nocBenchmarkSecurityIDSource, pos)
    of 235: parseStr(s, result.nocYieldType, pos)
    of 236: parseFloat(s, result.nocYield, pos)
    of 701: parseStr(s, result.nocYieldCalcDate, pos)
    of 696: parseStr(s, result.nocYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.nocYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.nocYieldRedemptionPriceType, pos)
    of 15: parseStr(s, result.nocCurrency, pos)
    of 376: parseStr(s, result.nocComplianceID, pos)
    of 23: parseStr(s, result.nocIOIID, pos)
    of 117: parseStr(s, result.nocQuoteID, pos)
    of 59: parseChar(s, result.nocTimeInForce, pos)
    of 168: parseStr(s, result.nocEffectiveTime, pos)
    of 432: parseStr(s, result.nocExpireDate, pos)
    of 126: parseStr(s, result.nocExpireTime, pos)
    of 427: parseInt(s, result.nocGTBookingInst, pos)
    of 210: parseInt(s, result.nocMaxShow, pos)
    of 211: parseStr(s, result.nocPegOffsetValue, pos)
    of 835: parseInt(s, result.nocPegMoveType, pos)
    of 836: parseInt(s, result.nocPegOffsetType, pos)
    of 837: parseInt(s, result.nocPegLimitType, pos)
    of 838: parseInt(s, result.nocPegRoundDirection, pos)
    of 840: parseInt(s, result.nocPegScope, pos)
    of 388: parseChar(s, result.nocDiscretionInst, pos)
    of 389: parseStr(s, result.nocDiscretionOffsetValue, pos)
    of 841: parseInt(s, result.nocDiscretionMoveType, pos)
    of 842: parseInt(s, result.nocDiscretionOffsetType, pos)
    of 843: parseInt(s, result.nocDiscretionLimitType, pos)
    of 844: parseInt(s, result.nocDiscretionRoundDirection, pos)
    of 846: parseInt(s, result.nocDiscretionScope, pos)
    of 847: parseInt(s, result.nocTargetStrategy, pos)
    of 848: parseStr(s, result.nocTargetStrategyParameters, pos)
    of 849: parseFloat(s, result.nocParticipationRate, pos)
    of 480: parseChar(s, result.nocCancellationRights, pos)
    of 481: parseChar(s, result.nocMoneyLaunderingStatus, pos)
    of 513: parseStr(s, result.nocRegistID, pos)
    of 494: parseStr(s, result.nocDesignation, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseCrossOrderCancelReplaceRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("t", "CrossOrderCancelReplaceRequest"))
  result.msgType = CrossOrderCancelReplaceRequest
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
    of 37: parseStr(s, result.cocrrOrderID, pos)
    of 548: parseStr(s, result.cocrrCrossID, pos)
    of 551: parseStr(s, result.cocrrOrigCrossID, pos)
    of 549: parseInt(s, result.cocrrCrossType, pos)
    of 550: parseInt(s, result.cocrrCrossPrioritization, pos)
    of 552: skipValue(s, pos); parseNoSides(s, result.cocrrNoSides, pos)
    of 55: parseStr(s, result.cocrrSymbol, pos)
    of 65: parseStr(s, result.cocrrSymbolSfx, pos)
    of 48: parseStr(s, result.cocrrSecurityID, pos)
    of 22: parseStr(s, result.cocrrSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.cocrrNoSecurityAltID, pos)
    of 460: parseInt(s, result.cocrrProduct, pos)
    of 461: parseStr(s, result.cocrrCFICode, pos)
    of 167: parseStr(s, result.cocrrSecurityType, pos)
    of 762: parseStr(s, result.cocrrSecuritySubType, pos)
    of 200: parseStr(s, result.cocrrMaturityMonthYear, pos)
    of 541: parseStr(s, result.cocrrMaturityDate, pos)
    of 201: parseInt(s, result.cocrrPutOrCall, pos)
    of 224: parseStr(s, result.cocrrCouponPaymentDate, pos)
    of 225: parseStr(s, result.cocrrIssueDate, pos)
    of 239: parseStr(s, result.cocrrRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.cocrrRepurchaseTerm, pos)
    of 227: parseFloat(s, result.cocrrRepurchaseRate, pos)
    of 228: parseStr(s, result.cocrrFactor, pos)
    of 255: parseStr(s, result.cocrrCreditRating, pos)
    of 543: parseStr(s, result.cocrrInstrRegistry, pos)
    of 470: parseStr(s, result.cocrrCountryOfIssue, pos)
    of 471: parseStr(s, result.cocrrStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.cocrrLocaleOfIssue, pos)
    of 240: parseStr(s, result.cocrrRedemptionDate, pos)
    of 202: parseFloat(s, result.cocrrStrikePrice, pos)
    of 947: parseStr(s, result.cocrrStrikeCurrency, pos)
    of 206: parseChar(s, result.cocrrOptAttribute, pos)
    of 231: parseStr(s, result.cocrrContractMultiplier, pos)
    of 223: parseFloat(s, result.cocrrCouponRate, pos)
    of 207: parseStr(s, result.cocrrSecurityExchange, pos)
    of 106: parseStr(s, result.cocrrIssuer, pos)
    of 348: parseUInt(s, result.cocrrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.cocrrEncodedIssuer, pos)
    of 107: parseStr(s, result.cocrrSecurityDesc, pos)
    of 350: parseUInt(s, result.cocrrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.cocrrEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.cocrrPool, pos)
    of 667: parseStr(s, result.cocrrContractSettlMonth, pos)
    of 875: parseInt(s, result.cocrrCPProgram, pos)
    of 876: parseStr(s, result.cocrrCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.cocrrNoEvents, pos)
    of 873: parseStr(s, result.cocrrDatedDate, pos)
    of 874: parseStr(s, result.cocrrInterestAccrualDate, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.cocrrNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.cocrrNoLegs, pos)
    of 63: parseChar(s, result.cocrrSettlType, pos)
    of 64: parseStr(s, result.cocrrSettlDate, pos)
    of 21: parseChar(s, result.cocrrHandlInst, pos)
    of 18: parseStr(s, result.cocrrExecInst, pos)
    of 110: parseInt(s, result.cocrrMinQty, pos)
    of 111: parseInt(s, result.cocrrMaxFloor, pos)
    of 100: parseStr(s, result.cocrrExDestination, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.cocrrNoTradingSessions, pos)
    of 81: parseChar(s, result.cocrrProcessCode, pos)
    of 140: parseFloat(s, result.cocrrPrevClosePx, pos)
    of 114: parseBool(s, result.cocrrLocateReqd, pos)
    of 60: parseStr(s, result.cocrrTransactTime, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.cocrrNoStipulations, pos)
    of 40: parseChar(s, result.cocrrOrdType, pos)
    of 423: parseInt(s, result.cocrrPriceType, pos)
    of 44: parseFloat(s, result.cocrrPrice, pos)
    of 99: parseFloat(s, result.cocrrStopPx, pos)
    of 218: parseFloat(s, result.cocrrSpread, pos)
    of 220: parseStr(s, result.cocrrBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.cocrrBenchmarkCurveName, pos)
    of 222: parseStr(s, result.cocrrBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.cocrrBenchmarkPrice, pos)
    of 663: parseInt(s, result.cocrrBenchmarkPriceType, pos)
    of 699: parseStr(s, result.cocrrBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.cocrrBenchmarkSecurityIDSource, pos)
    of 235: parseStr(s, result.cocrrYieldType, pos)
    of 236: parseFloat(s, result.cocrrYield, pos)
    of 701: parseStr(s, result.cocrrYieldCalcDate, pos)
    of 696: parseStr(s, result.cocrrYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.cocrrYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.cocrrYieldRedemptionPriceType, pos)
    of 15: parseStr(s, result.cocrrCurrency, pos)
    of 376: parseStr(s, result.cocrrComplianceID, pos)
    of 23: parseStr(s, result.cocrrIOIID, pos)
    of 117: parseStr(s, result.cocrrQuoteID, pos)
    of 59: parseChar(s, result.cocrrTimeInForce, pos)
    of 168: parseStr(s, result.cocrrEffectiveTime, pos)
    of 432: parseStr(s, result.cocrrExpireDate, pos)
    of 126: parseStr(s, result.cocrrExpireTime, pos)
    of 427: parseInt(s, result.cocrrGTBookingInst, pos)
    of 210: parseInt(s, result.cocrrMaxShow, pos)
    of 211: parseStr(s, result.cocrrPegOffsetValue, pos)
    of 835: parseInt(s, result.cocrrPegMoveType, pos)
    of 836: parseInt(s, result.cocrrPegOffsetType, pos)
    of 837: parseInt(s, result.cocrrPegLimitType, pos)
    of 838: parseInt(s, result.cocrrPegRoundDirection, pos)
    of 840: parseInt(s, result.cocrrPegScope, pos)
    of 388: parseChar(s, result.cocrrDiscretionInst, pos)
    of 389: parseStr(s, result.cocrrDiscretionOffsetValue, pos)
    of 841: parseInt(s, result.cocrrDiscretionMoveType, pos)
    of 842: parseInt(s, result.cocrrDiscretionOffsetType, pos)
    of 843: parseInt(s, result.cocrrDiscretionLimitType, pos)
    of 844: parseInt(s, result.cocrrDiscretionRoundDirection, pos)
    of 846: parseInt(s, result.cocrrDiscretionScope, pos)
    of 847: parseInt(s, result.cocrrTargetStrategy, pos)
    of 848: parseStr(s, result.cocrrTargetStrategyParameters, pos)
    of 849: parseFloat(s, result.cocrrParticipationRate, pos)
    of 480: parseChar(s, result.cocrrCancellationRights, pos)
    of 481: parseChar(s, result.cocrrMoneyLaunderingStatus, pos)
    of 513: parseStr(s, result.cocrrRegistID, pos)
    of 494: parseStr(s, result.cocrrDesignation, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseCrossOrderCancelRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("u", "CrossOrderCancelRequest"))
  result.msgType = CrossOrderCancelRequest
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
    of 37: parseStr(s, result.cocrOrderID, pos)
    of 548: parseStr(s, result.cocrCrossID, pos)
    of 551: parseStr(s, result.cocrOrigCrossID, pos)
    of 549: parseInt(s, result.cocrCrossType, pos)
    of 550: parseInt(s, result.cocrCrossPrioritization, pos)
    of 552: skipValue(s, pos); parseNoSides(s, result.cocrNoSides, pos)
    of 55: parseStr(s, result.cocrSymbol, pos)
    of 65: parseStr(s, result.cocrSymbolSfx, pos)
    of 48: parseStr(s, result.cocrSecurityID, pos)
    of 22: parseStr(s, result.cocrSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.cocrNoSecurityAltID, pos)
    of 460: parseInt(s, result.cocrProduct, pos)
    of 461: parseStr(s, result.cocrCFICode, pos)
    of 167: parseStr(s, result.cocrSecurityType, pos)
    of 762: parseStr(s, result.cocrSecuritySubType, pos)
    of 200: parseStr(s, result.cocrMaturityMonthYear, pos)
    of 541: parseStr(s, result.cocrMaturityDate, pos)
    of 201: parseInt(s, result.cocrPutOrCall, pos)
    of 224: parseStr(s, result.cocrCouponPaymentDate, pos)
    of 225: parseStr(s, result.cocrIssueDate, pos)
    of 239: parseStr(s, result.cocrRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.cocrRepurchaseTerm, pos)
    of 227: parseFloat(s, result.cocrRepurchaseRate, pos)
    of 228: parseStr(s, result.cocrFactor, pos)
    of 255: parseStr(s, result.cocrCreditRating, pos)
    of 543: parseStr(s, result.cocrInstrRegistry, pos)
    of 470: parseStr(s, result.cocrCountryOfIssue, pos)
    of 471: parseStr(s, result.cocrStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.cocrLocaleOfIssue, pos)
    of 240: parseStr(s, result.cocrRedemptionDate, pos)
    of 202: parseFloat(s, result.cocrStrikePrice, pos)
    of 947: parseStr(s, result.cocrStrikeCurrency, pos)
    of 206: parseChar(s, result.cocrOptAttribute, pos)
    of 231: parseStr(s, result.cocrContractMultiplier, pos)
    of 223: parseFloat(s, result.cocrCouponRate, pos)
    of 207: parseStr(s, result.cocrSecurityExchange, pos)
    of 106: parseStr(s, result.cocrIssuer, pos)
    of 348: parseUInt(s, result.cocrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.cocrEncodedIssuer, pos)
    of 107: parseStr(s, result.cocrSecurityDesc, pos)
    of 350: parseUInt(s, result.cocrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.cocrEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.cocrPool, pos)
    of 667: parseStr(s, result.cocrContractSettlMonth, pos)
    of 875: parseInt(s, result.cocrCPProgram, pos)
    of 876: parseStr(s, result.cocrCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.cocrNoEvents, pos)
    of 873: parseStr(s, result.cocrDatedDate, pos)
    of 874: parseStr(s, result.cocrInterestAccrualDate, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.cocrNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.cocrNoLegs, pos)
    of 60: parseStr(s, result.cocrTransactTime, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseSecurityTypeRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("v", "SecurityTypeRequest"))
  result.msgType = SecurityTypeRequest
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
    of 320: parseStr(s, result.strSecurityReqID, pos)
    of 58: parseStr(s, result.strText, pos)
    of 354: parseUInt(s, result.strEncodedTextLen, pos)
    of 355: parseStr(s, result.strEncodedText, pos)
    of 336: parseStr(s, result.strTradingSessionID, pos)
    of 625: parseStr(s, result.strTradingSessionSubID, pos)
    of 460: parseInt(s, result.strProduct, pos)
    of 167: parseStr(s, result.strSecurityType, pos)
    of 762: parseStr(s, result.strSecuritySubType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseSecurityTypes(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("w", "SecurityTypes"))
  result.msgType = SecurityTypes
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
    of 320: parseStr(s, result.stSecurityReqID, pos)
    of 322: parseStr(s, result.stSecurityResponseID, pos)
    of 323: parseInt(s, result.stSecurityResponseType, pos)
    of 557: parseInt(s, result.stTotNoSecurityTypes, pos)
    of 893: parseBool(s, result.stLastFragment, pos)
    of 558: skipValue(s, pos); parseNoSecurityTypes(s, result.stNoSecurityTypes, pos)
    of 58: parseStr(s, result.stText, pos)
    of 354: parseUInt(s, result.stEncodedTextLen, pos)
    of 355: parseStr(s, result.stEncodedText, pos)
    of 336: parseStr(s, result.stTradingSessionID, pos)
    of 625: parseStr(s, result.stTradingSessionSubID, pos)
    of 263: parseChar(s, result.stSubscriptionRequestType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseSecurityListRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("x", "SecurityListRequest"))
  result.msgType = SecurityListRequest
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
    of 320: parseStr(s, result.slrSecurityReqID, pos)
    of 559: parseInt(s, result.slrSecurityListRequestType, pos)
    of 55: parseStr(s, result.slrSymbol, pos)
    of 65: parseStr(s, result.slrSymbolSfx, pos)
    of 48: parseStr(s, result.slrSecurityID, pos)
    of 22: parseStr(s, result.slrSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.slrNoSecurityAltID, pos)
    of 460: parseInt(s, result.slrProduct, pos)
    of 461: parseStr(s, result.slrCFICode, pos)
    of 167: parseStr(s, result.slrSecurityType, pos)
    of 762: parseStr(s, result.slrSecuritySubType, pos)
    of 200: parseStr(s, result.slrMaturityMonthYear, pos)
    of 541: parseStr(s, result.slrMaturityDate, pos)
    of 201: parseInt(s, result.slrPutOrCall, pos)
    of 224: parseStr(s, result.slrCouponPaymentDate, pos)
    of 225: parseStr(s, result.slrIssueDate, pos)
    of 239: parseStr(s, result.slrRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.slrRepurchaseTerm, pos)
    of 227: parseFloat(s, result.slrRepurchaseRate, pos)
    of 228: parseStr(s, result.slrFactor, pos)
    of 255: parseStr(s, result.slrCreditRating, pos)
    of 543: parseStr(s, result.slrInstrRegistry, pos)
    of 470: parseStr(s, result.slrCountryOfIssue, pos)
    of 471: parseStr(s, result.slrStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.slrLocaleOfIssue, pos)
    of 240: parseStr(s, result.slrRedemptionDate, pos)
    of 202: parseFloat(s, result.slrStrikePrice, pos)
    of 947: parseStr(s, result.slrStrikeCurrency, pos)
    of 206: parseChar(s, result.slrOptAttribute, pos)
    of 231: parseStr(s, result.slrContractMultiplier, pos)
    of 223: parseFloat(s, result.slrCouponRate, pos)
    of 207: parseStr(s, result.slrSecurityExchange, pos)
    of 106: parseStr(s, result.slrIssuer, pos)
    of 348: parseUInt(s, result.slrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.slrEncodedIssuer, pos)
    of 107: parseStr(s, result.slrSecurityDesc, pos)
    of 350: parseUInt(s, result.slrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.slrEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.slrPool, pos)
    of 667: parseStr(s, result.slrContractSettlMonth, pos)
    of 875: parseInt(s, result.slrCPProgram, pos)
    of 876: parseStr(s, result.slrCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.slrNoEvents, pos)
    of 873: parseStr(s, result.slrDatedDate, pos)
    of 874: parseStr(s, result.slrInterestAccrualDate, pos)
    of 668: parseInt(s, result.slrDeliveryForm, pos)
    of 869: parseFloat(s, result.slrPctAtRisk, pos)
    of 870: skipValue(s, pos); parseNoInstrAttrib(s, result.slrNoInstrAttrib, pos)
    of 913: parseStr(s, result.slrAgreementDesc, pos)
    of 914: parseStr(s, result.slrAgreementID, pos)
    of 915: parseStr(s, result.slrAgreementDate, pos)
    of 918: parseStr(s, result.slrAgreementCurrency, pos)
    of 788: parseInt(s, result.slrTerminationType, pos)
    of 916: parseStr(s, result.slrStartDate, pos)
    of 917: parseStr(s, result.slrEndDate, pos)
    of 919: parseInt(s, result.slrDeliveryType, pos)
    of 898: parseFloat(s, result.slrMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.slrNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.slrNoLegs, pos)
    of 15: parseStr(s, result.slrCurrency, pos)
    of 58: parseStr(s, result.slrText, pos)
    of 354: parseUInt(s, result.slrEncodedTextLen, pos)
    of 355: parseStr(s, result.slrEncodedText, pos)
    of 336: parseStr(s, result.slrTradingSessionID, pos)
    of 625: parseStr(s, result.slrTradingSessionSubID, pos)
    of 263: parseChar(s, result.slrSubscriptionRequestType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseSecurityList(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("y", "SecurityList"))
  result.msgType = SecurityList
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
    of 320: parseStr(s, result.slSecurityReqID, pos)
    of 322: parseStr(s, result.slSecurityResponseID, pos)
    of 560: parseInt(s, result.slSecurityRequestResult, pos)
    of 393: parseInt(s, result.slTotNoRelatedSym, pos)
    of 893: parseBool(s, result.slLastFragment, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.slNoRelatedSym, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseDerivativeSecurityListRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("z", "DerivativeSecurityListRequest"))
  result.msgType = DerivativeSecurityListRequest
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
    of 320: parseStr(s, result.dslrSecurityReqID, pos)
    of 559: parseInt(s, result.dslrSecurityListRequestType, pos)
    of 311: parseStr(s, result.dslrUnderlyingSymbol, pos)
    of 312: parseStr(s, result.dslrUnderlyingSymbolSfx, pos)
    of 309: parseStr(s, result.dslrUnderlyingSecurityID, pos)
    of 305: parseStr(s, result.dslrUnderlyingSecurityIDSource, pos)
    of 457: skipValue(s, pos); parseNoUnderlyingSecurityAltID(s, result.dslrNoUnderlyingSecurityAltID, pos)
    of 462: parseInt(s, result.dslrUnderlyingProduct, pos)
    of 463: parseStr(s, result.dslrUnderlyingCFICode, pos)
    of 310: parseStr(s, result.dslrUnderlyingSecurityType, pos)
    of 763: parseStr(s, result.dslrUnderlyingSecuritySubType, pos)
    of 313: parseStr(s, result.dslrUnderlyingMaturityMonthYear, pos)
    of 542: parseStr(s, result.dslrUnderlyingMaturityDate, pos)
    of 315: parseInt(s, result.dslrUnderlyingPutOrCall, pos)
    of 241: parseStr(s, result.dslrUnderlyingCouponPaymentDate, pos)
    of 242: parseStr(s, result.dslrUnderlyingIssueDate, pos)
    of 243: parseStr(s, result.dslrUnderlyingRepoCollateralSecurityType, pos)
    of 244: parseInt(s, result.dslrUnderlyingRepurchaseTerm, pos)
    of 245: parseFloat(s, result.dslrUnderlyingRepurchaseRate, pos)
    of 246: parseStr(s, result.dslrUnderlyingFactor, pos)
    of 256: parseStr(s, result.dslrUnderlyingCreditRating, pos)
    of 595: parseStr(s, result.dslrUnderlyingInstrRegistry, pos)
    of 592: parseStr(s, result.dslrUnderlyingCountryOfIssue, pos)
    of 593: parseStr(s, result.dslrUnderlyingStateOrProvinceOfIssue, pos)
    of 594: parseStr(s, result.dslrUnderlyingLocaleOfIssue, pos)
    of 247: parseStr(s, result.dslrUnderlyingRedemptionDate, pos)
    of 316: parseFloat(s, result.dslrUnderlyingStrikePrice, pos)
    of 941: parseStr(s, result.dslrUnderlyingStrikeCurrency, pos)
    of 317: parseChar(s, result.dslrUnderlyingOptAttribute, pos)
    of 436: parseStr(s, result.dslrUnderlyingContractMultiplier, pos)
    of 435: parseFloat(s, result.dslrUnderlyingCouponRate, pos)
    of 308: parseStr(s, result.dslrUnderlyingSecurityExchange, pos)
    of 306: parseStr(s, result.dslrUnderlyingIssuer, pos)
    of 362: parseUInt(s, result.dslrEncodedUnderlyingIssuerLen, pos)
    of 363: parseStr(s, result.dslrEncodedUnderlyingIssuer, pos)
    of 307: parseStr(s, result.dslrUnderlyingSecurityDesc, pos)
    of 364: parseUInt(s, result.dslrEncodedUnderlyingSecurityDescLen, pos)
    of 365: parseStr(s, result.dslrEncodedUnderlyingSecurityDesc, pos)
    of 877: parseStr(s, result.dslrUnderlyingCPProgram, pos)
    of 878: parseStr(s, result.dslrUnderlyingCPRegType, pos)
    of 318: parseStr(s, result.dslrUnderlyingCurrency, pos)
    of 879: parseInt(s, result.dslrUnderlyingQty, pos)
    of 810: parseFloat(s, result.dslrUnderlyingPx, pos)
    of 882: parseFloat(s, result.dslrUnderlyingDirtyPrice, pos)
    of 883: parseFloat(s, result.dslrUnderlyingEndPrice, pos)
    of 884: parseUInt(s, result.dslrUnderlyingStartValue, pos)
    of 885: parseUInt(s, result.dslrUnderlyingCurrentValue, pos)
    of 886: parseUInt(s, result.dslrUnderlyingEndValue, pos)
    of 887: skipValue(s, pos); parseNoUnderlyingStips(s, result.dslrNoUnderlyingStips, pos)
    of 762: parseStr(s, result.dslrSecuritySubType, pos)
    of 15: parseStr(s, result.dslrCurrency, pos)
    of 58: parseStr(s, result.dslrText, pos)
    of 354: parseUInt(s, result.dslrEncodedTextLen, pos)
    of 355: parseStr(s, result.dslrEncodedText, pos)
    of 336: parseStr(s, result.dslrTradingSessionID, pos)
    of 625: parseStr(s, result.dslrTradingSessionSubID, pos)
    of 263: parseChar(s, result.dslrSubscriptionRequestType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseDerivativeSecurityList(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AA", "DerivativeSecurityList"))
  result.msgType = DerivativeSecurityList
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
    of 320: parseStr(s, result.dslSecurityReqID, pos)
    of 322: parseStr(s, result.dslSecurityResponseID, pos)
    of 560: parseInt(s, result.dslSecurityRequestResult, pos)
    of 311: parseStr(s, result.dslUnderlyingSymbol, pos)
    of 312: parseStr(s, result.dslUnderlyingSymbolSfx, pos)
    of 309: parseStr(s, result.dslUnderlyingSecurityID, pos)
    of 305: parseStr(s, result.dslUnderlyingSecurityIDSource, pos)
    of 457: skipValue(s, pos); parseNoUnderlyingSecurityAltID(s, result.dslNoUnderlyingSecurityAltID, pos)
    of 462: parseInt(s, result.dslUnderlyingProduct, pos)
    of 463: parseStr(s, result.dslUnderlyingCFICode, pos)
    of 310: parseStr(s, result.dslUnderlyingSecurityType, pos)
    of 763: parseStr(s, result.dslUnderlyingSecuritySubType, pos)
    of 313: parseStr(s, result.dslUnderlyingMaturityMonthYear, pos)
    of 542: parseStr(s, result.dslUnderlyingMaturityDate, pos)
    of 315: parseInt(s, result.dslUnderlyingPutOrCall, pos)
    of 241: parseStr(s, result.dslUnderlyingCouponPaymentDate, pos)
    of 242: parseStr(s, result.dslUnderlyingIssueDate, pos)
    of 243: parseStr(s, result.dslUnderlyingRepoCollateralSecurityType, pos)
    of 244: parseInt(s, result.dslUnderlyingRepurchaseTerm, pos)
    of 245: parseFloat(s, result.dslUnderlyingRepurchaseRate, pos)
    of 246: parseStr(s, result.dslUnderlyingFactor, pos)
    of 256: parseStr(s, result.dslUnderlyingCreditRating, pos)
    of 595: parseStr(s, result.dslUnderlyingInstrRegistry, pos)
    of 592: parseStr(s, result.dslUnderlyingCountryOfIssue, pos)
    of 593: parseStr(s, result.dslUnderlyingStateOrProvinceOfIssue, pos)
    of 594: parseStr(s, result.dslUnderlyingLocaleOfIssue, pos)
    of 247: parseStr(s, result.dslUnderlyingRedemptionDate, pos)
    of 316: parseFloat(s, result.dslUnderlyingStrikePrice, pos)
    of 941: parseStr(s, result.dslUnderlyingStrikeCurrency, pos)
    of 317: parseChar(s, result.dslUnderlyingOptAttribute, pos)
    of 436: parseStr(s, result.dslUnderlyingContractMultiplier, pos)
    of 435: parseFloat(s, result.dslUnderlyingCouponRate, pos)
    of 308: parseStr(s, result.dslUnderlyingSecurityExchange, pos)
    of 306: parseStr(s, result.dslUnderlyingIssuer, pos)
    of 362: parseUInt(s, result.dslEncodedUnderlyingIssuerLen, pos)
    of 363: parseStr(s, result.dslEncodedUnderlyingIssuer, pos)
    of 307: parseStr(s, result.dslUnderlyingSecurityDesc, pos)
    of 364: parseUInt(s, result.dslEncodedUnderlyingSecurityDescLen, pos)
    of 365: parseStr(s, result.dslEncodedUnderlyingSecurityDesc, pos)
    of 877: parseStr(s, result.dslUnderlyingCPProgram, pos)
    of 878: parseStr(s, result.dslUnderlyingCPRegType, pos)
    of 318: parseStr(s, result.dslUnderlyingCurrency, pos)
    of 879: parseInt(s, result.dslUnderlyingQty, pos)
    of 810: parseFloat(s, result.dslUnderlyingPx, pos)
    of 882: parseFloat(s, result.dslUnderlyingDirtyPrice, pos)
    of 883: parseFloat(s, result.dslUnderlyingEndPrice, pos)
    of 884: parseUInt(s, result.dslUnderlyingStartValue, pos)
    of 885: parseUInt(s, result.dslUnderlyingCurrentValue, pos)
    of 886: parseUInt(s, result.dslUnderlyingEndValue, pos)
    of 887: skipValue(s, pos); parseNoUnderlyingStips(s, result.dslNoUnderlyingStips, pos)
    of 393: parseInt(s, result.dslTotNoRelatedSym, pos)
    of 893: parseBool(s, result.dslLastFragment, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.dslNoRelatedSym, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseNewOrderMultileg(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AB", "NewOrderMultileg"))
  result.msgType = NewOrderMultileg
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
    of 11: parseStr(s, result.nomClOrdID, pos)
    of 526: parseStr(s, result.nomSecondaryClOrdID, pos)
    of 583: parseStr(s, result.nomClOrdLinkID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.nomNoPartyIDs, pos)
    of 229: parseStr(s, result.nomTradeOriginationDate, pos)
    of 75: parseStr(s, result.nomTradeDate, pos)
    of 1: parseStr(s, result.nomAccount, pos)
    of 660: parseInt(s, result.nomAcctIDSource, pos)
    of 581: parseInt(s, result.nomAccountType, pos)
    of 589: parseChar(s, result.nomDayBookingInst, pos)
    of 590: parseChar(s, result.nomBookingUnit, pos)
    of 591: parseChar(s, result.nomPreallocMethod, pos)
    of 70: parseStr(s, result.nomAllocID, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.nomNoAllocs, pos)
    of 63: parseChar(s, result.nomSettlType, pos)
    of 64: parseStr(s, result.nomSettlDate, pos)
    of 544: parseChar(s, result.nomCashMargin, pos)
    of 635: parseStr(s, result.nomClearingFeeIndicator, pos)
    of 21: parseChar(s, result.nomHandlInst, pos)
    of 18: parseStr(s, result.nomExecInst, pos)
    of 110: parseInt(s, result.nomMinQty, pos)
    of 111: parseInt(s, result.nomMaxFloor, pos)
    of 100: parseStr(s, result.nomExDestination, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.nomNoTradingSessions, pos)
    of 81: parseChar(s, result.nomProcessCode, pos)
    of 54: parseChar(s, result.nomSide, pos)
    of 55: parseStr(s, result.nomSymbol, pos)
    of 65: parseStr(s, result.nomSymbolSfx, pos)
    of 48: parseStr(s, result.nomSecurityID, pos)
    of 22: parseStr(s, result.nomSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.nomNoSecurityAltID, pos)
    of 460: parseInt(s, result.nomProduct, pos)
    of 461: parseStr(s, result.nomCFICode, pos)
    of 167: parseStr(s, result.nomSecurityType, pos)
    of 762: parseStr(s, result.nomSecuritySubType, pos)
    of 200: parseStr(s, result.nomMaturityMonthYear, pos)
    of 541: parseStr(s, result.nomMaturityDate, pos)
    of 201: parseInt(s, result.nomPutOrCall, pos)
    of 224: parseStr(s, result.nomCouponPaymentDate, pos)
    of 225: parseStr(s, result.nomIssueDate, pos)
    of 239: parseStr(s, result.nomRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.nomRepurchaseTerm, pos)
    of 227: parseFloat(s, result.nomRepurchaseRate, pos)
    of 228: parseStr(s, result.nomFactor, pos)
    of 255: parseStr(s, result.nomCreditRating, pos)
    of 543: parseStr(s, result.nomInstrRegistry, pos)
    of 470: parseStr(s, result.nomCountryOfIssue, pos)
    of 471: parseStr(s, result.nomStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.nomLocaleOfIssue, pos)
    of 240: parseStr(s, result.nomRedemptionDate, pos)
    of 202: parseFloat(s, result.nomStrikePrice, pos)
    of 947: parseStr(s, result.nomStrikeCurrency, pos)
    of 206: parseChar(s, result.nomOptAttribute, pos)
    of 231: parseStr(s, result.nomContractMultiplier, pos)
    of 223: parseFloat(s, result.nomCouponRate, pos)
    of 207: parseStr(s, result.nomSecurityExchange, pos)
    of 106: parseStr(s, result.nomIssuer, pos)
    of 348: parseUInt(s, result.nomEncodedIssuerLen, pos)
    of 349: parseStr(s, result.nomEncodedIssuer, pos)
    of 107: parseStr(s, result.nomSecurityDesc, pos)
    of 350: parseUInt(s, result.nomEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.nomEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.nomPool, pos)
    of 667: parseStr(s, result.nomContractSettlMonth, pos)
    of 875: parseInt(s, result.nomCPProgram, pos)
    of 876: parseStr(s, result.nomCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.nomNoEvents, pos)
    of 873: parseStr(s, result.nomDatedDate, pos)
    of 874: parseStr(s, result.nomInterestAccrualDate, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.nomNoUnderlyings, pos)
    of 140: parseFloat(s, result.nomPrevClosePx, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.nomNoLegs, pos)
    of 114: parseBool(s, result.nomLocateReqd, pos)
    of 60: parseStr(s, result.nomTransactTime, pos)
    of 854: parseInt(s, result.nomQtyType, pos)
    of 38: parseInt(s, result.nomOrderQty, pos)
    of 152: parseInt(s, result.nomCashOrderQty, pos)
    of 516: parseFloat(s, result.nomOrderPercent, pos)
    of 468: parseChar(s, result.nomRoundingDirection, pos)
    of 469: parseStr(s, result.nomRoundingModulus, pos)
    of 40: parseChar(s, result.nomOrdType, pos)
    of 423: parseInt(s, result.nomPriceType, pos)
    of 44: parseFloat(s, result.nomPrice, pos)
    of 99: parseFloat(s, result.nomStopPx, pos)
    of 15: parseStr(s, result.nomCurrency, pos)
    of 376: parseStr(s, result.nomComplianceID, pos)
    of 377: parseBool(s, result.nomSolicitedFlag, pos)
    of 23: parseStr(s, result.nomIOIID, pos)
    of 117: parseStr(s, result.nomQuoteID, pos)
    of 59: parseChar(s, result.nomTimeInForce, pos)
    of 168: parseStr(s, result.nomEffectiveTime, pos)
    of 432: parseStr(s, result.nomExpireDate, pos)
    of 126: parseStr(s, result.nomExpireTime, pos)
    of 427: parseInt(s, result.nomGTBookingInst, pos)
    of 12: parseUInt(s, result.nomCommission, pos)
    of 13: parseChar(s, result.nomCommType, pos)
    of 479: parseStr(s, result.nomCommCurrency, pos)
    of 497: parseChar(s, result.nomFundRenewWaiv, pos)
    of 528: parseChar(s, result.nomOrderCapacity, pos)
    of 529: parseStr(s, result.nomOrderRestrictions, pos)
    of 582: parseInt(s, result.nomCustOrderCapacity, pos)
    of 121: parseBool(s, result.nomForexReq, pos)
    of 120: parseStr(s, result.nomSettlCurrency, pos)
    of 775: parseInt(s, result.nomBookingType, pos)
    of 58: parseStr(s, result.nomText, pos)
    of 354: parseUInt(s, result.nomEncodedTextLen, pos)
    of 355: parseStr(s, result.nomEncodedText, pos)
    of 77: parseChar(s, result.nomPositionEffect, pos)
    of 203: parseInt(s, result.nomCoveredOrUncovered, pos)
    of 210: parseInt(s, result.nomMaxShow, pos)
    of 211: parseStr(s, result.nomPegOffsetValue, pos)
    of 835: parseInt(s, result.nomPegMoveType, pos)
    of 836: parseInt(s, result.nomPegOffsetType, pos)
    of 837: parseInt(s, result.nomPegLimitType, pos)
    of 838: parseInt(s, result.nomPegRoundDirection, pos)
    of 840: parseInt(s, result.nomPegScope, pos)
    of 388: parseChar(s, result.nomDiscretionInst, pos)
    of 389: parseStr(s, result.nomDiscretionOffsetValue, pos)
    of 841: parseInt(s, result.nomDiscretionMoveType, pos)
    of 842: parseInt(s, result.nomDiscretionOffsetType, pos)
    of 843: parseInt(s, result.nomDiscretionLimitType, pos)
    of 844: parseInt(s, result.nomDiscretionRoundDirection, pos)
    of 846: parseInt(s, result.nomDiscretionScope, pos)
    of 847: parseInt(s, result.nomTargetStrategy, pos)
    of 848: parseStr(s, result.nomTargetStrategyParameters, pos)
    of 849: parseFloat(s, result.nomParticipationRate, pos)
    of 480: parseChar(s, result.nomCancellationRights, pos)
    of 481: parseChar(s, result.nomMoneyLaunderingStatus, pos)
    of 513: parseStr(s, result.nomRegistID, pos)
    of 494: parseStr(s, result.nomDesignation, pos)
    of 563: parseInt(s, result.nomMultiLegRptTypeReq, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseMultilegOrderCancelReplace(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AC", "MultilegOrderCancelReplace"))
  result.msgType = MultilegOrderCancelReplace
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
    of 37: parseStr(s, result.mocrOrderID, pos)
    of 41: parseStr(s, result.mocrOrigClOrdID, pos)
    of 11: parseStr(s, result.mocrClOrdID, pos)
    of 526: parseStr(s, result.mocrSecondaryClOrdID, pos)
    of 583: parseStr(s, result.mocrClOrdLinkID, pos)
    of 586: parseStr(s, result.mocrOrigOrdModTime, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.mocrNoPartyIDs, pos)
    of 229: parseStr(s, result.mocrTradeOriginationDate, pos)
    of 75: parseStr(s, result.mocrTradeDate, pos)
    of 1: parseStr(s, result.mocrAccount, pos)
    of 660: parseInt(s, result.mocrAcctIDSource, pos)
    of 581: parseInt(s, result.mocrAccountType, pos)
    of 589: parseChar(s, result.mocrDayBookingInst, pos)
    of 590: parseChar(s, result.mocrBookingUnit, pos)
    of 591: parseChar(s, result.mocrPreallocMethod, pos)
    of 70: parseStr(s, result.mocrAllocID, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.mocrNoAllocs, pos)
    of 63: parseChar(s, result.mocrSettlType, pos)
    of 64: parseStr(s, result.mocrSettlDate, pos)
    of 544: parseChar(s, result.mocrCashMargin, pos)
    of 635: parseStr(s, result.mocrClearingFeeIndicator, pos)
    of 21: parseChar(s, result.mocrHandlInst, pos)
    of 18: parseStr(s, result.mocrExecInst, pos)
    of 110: parseInt(s, result.mocrMinQty, pos)
    of 111: parseInt(s, result.mocrMaxFloor, pos)
    of 100: parseStr(s, result.mocrExDestination, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.mocrNoTradingSessions, pos)
    of 81: parseChar(s, result.mocrProcessCode, pos)
    of 54: parseChar(s, result.mocrSide, pos)
    of 55: parseStr(s, result.mocrSymbol, pos)
    of 65: parseStr(s, result.mocrSymbolSfx, pos)
    of 48: parseStr(s, result.mocrSecurityID, pos)
    of 22: parseStr(s, result.mocrSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.mocrNoSecurityAltID, pos)
    of 460: parseInt(s, result.mocrProduct, pos)
    of 461: parseStr(s, result.mocrCFICode, pos)
    of 167: parseStr(s, result.mocrSecurityType, pos)
    of 762: parseStr(s, result.mocrSecuritySubType, pos)
    of 200: parseStr(s, result.mocrMaturityMonthYear, pos)
    of 541: parseStr(s, result.mocrMaturityDate, pos)
    of 201: parseInt(s, result.mocrPutOrCall, pos)
    of 224: parseStr(s, result.mocrCouponPaymentDate, pos)
    of 225: parseStr(s, result.mocrIssueDate, pos)
    of 239: parseStr(s, result.mocrRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.mocrRepurchaseTerm, pos)
    of 227: parseFloat(s, result.mocrRepurchaseRate, pos)
    of 228: parseStr(s, result.mocrFactor, pos)
    of 255: parseStr(s, result.mocrCreditRating, pos)
    of 543: parseStr(s, result.mocrInstrRegistry, pos)
    of 470: parseStr(s, result.mocrCountryOfIssue, pos)
    of 471: parseStr(s, result.mocrStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.mocrLocaleOfIssue, pos)
    of 240: parseStr(s, result.mocrRedemptionDate, pos)
    of 202: parseFloat(s, result.mocrStrikePrice, pos)
    of 947: parseStr(s, result.mocrStrikeCurrency, pos)
    of 206: parseChar(s, result.mocrOptAttribute, pos)
    of 231: parseStr(s, result.mocrContractMultiplier, pos)
    of 223: parseFloat(s, result.mocrCouponRate, pos)
    of 207: parseStr(s, result.mocrSecurityExchange, pos)
    of 106: parseStr(s, result.mocrIssuer, pos)
    of 348: parseUInt(s, result.mocrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.mocrEncodedIssuer, pos)
    of 107: parseStr(s, result.mocrSecurityDesc, pos)
    of 350: parseUInt(s, result.mocrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.mocrEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.mocrPool, pos)
    of 667: parseStr(s, result.mocrContractSettlMonth, pos)
    of 875: parseInt(s, result.mocrCPProgram, pos)
    of 876: parseStr(s, result.mocrCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.mocrNoEvents, pos)
    of 873: parseStr(s, result.mocrDatedDate, pos)
    of 874: parseStr(s, result.mocrInterestAccrualDate, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.mocrNoUnderlyings, pos)
    of 140: parseFloat(s, result.mocrPrevClosePx, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.mocrNoLegs, pos)
    of 114: parseBool(s, result.mocrLocateReqd, pos)
    of 60: parseStr(s, result.mocrTransactTime, pos)
    of 854: parseInt(s, result.mocrQtyType, pos)
    of 38: parseInt(s, result.mocrOrderQty, pos)
    of 152: parseInt(s, result.mocrCashOrderQty, pos)
    of 516: parseFloat(s, result.mocrOrderPercent, pos)
    of 468: parseChar(s, result.mocrRoundingDirection, pos)
    of 469: parseStr(s, result.mocrRoundingModulus, pos)
    of 40: parseChar(s, result.mocrOrdType, pos)
    of 423: parseInt(s, result.mocrPriceType, pos)
    of 44: parseFloat(s, result.mocrPrice, pos)
    of 99: parseFloat(s, result.mocrStopPx, pos)
    of 15: parseStr(s, result.mocrCurrency, pos)
    of 376: parseStr(s, result.mocrComplianceID, pos)
    of 377: parseBool(s, result.mocrSolicitedFlag, pos)
    of 23: parseStr(s, result.mocrIOIID, pos)
    of 117: parseStr(s, result.mocrQuoteID, pos)
    of 59: parseChar(s, result.mocrTimeInForce, pos)
    of 168: parseStr(s, result.mocrEffectiveTime, pos)
    of 432: parseStr(s, result.mocrExpireDate, pos)
    of 126: parseStr(s, result.mocrExpireTime, pos)
    of 427: parseInt(s, result.mocrGTBookingInst, pos)
    of 12: parseUInt(s, result.mocrCommission, pos)
    of 13: parseChar(s, result.mocrCommType, pos)
    of 479: parseStr(s, result.mocrCommCurrency, pos)
    of 497: parseChar(s, result.mocrFundRenewWaiv, pos)
    of 528: parseChar(s, result.mocrOrderCapacity, pos)
    of 529: parseStr(s, result.mocrOrderRestrictions, pos)
    of 582: parseInt(s, result.mocrCustOrderCapacity, pos)
    of 121: parseBool(s, result.mocrForexReq, pos)
    of 120: parseStr(s, result.mocrSettlCurrency, pos)
    of 775: parseInt(s, result.mocrBookingType, pos)
    of 58: parseStr(s, result.mocrText, pos)
    of 354: parseUInt(s, result.mocrEncodedTextLen, pos)
    of 355: parseStr(s, result.mocrEncodedText, pos)
    of 77: parseChar(s, result.mocrPositionEffect, pos)
    of 203: parseInt(s, result.mocrCoveredOrUncovered, pos)
    of 210: parseInt(s, result.mocrMaxShow, pos)
    of 211: parseStr(s, result.mocrPegOffsetValue, pos)
    of 835: parseInt(s, result.mocrPegMoveType, pos)
    of 836: parseInt(s, result.mocrPegOffsetType, pos)
    of 837: parseInt(s, result.mocrPegLimitType, pos)
    of 838: parseInt(s, result.mocrPegRoundDirection, pos)
    of 840: parseInt(s, result.mocrPegScope, pos)
    of 388: parseChar(s, result.mocrDiscretionInst, pos)
    of 389: parseStr(s, result.mocrDiscretionOffsetValue, pos)
    of 841: parseInt(s, result.mocrDiscretionMoveType, pos)
    of 842: parseInt(s, result.mocrDiscretionOffsetType, pos)
    of 843: parseInt(s, result.mocrDiscretionLimitType, pos)
    of 844: parseInt(s, result.mocrDiscretionRoundDirection, pos)
    of 846: parseInt(s, result.mocrDiscretionScope, pos)
    of 847: parseInt(s, result.mocrTargetStrategy, pos)
    of 848: parseStr(s, result.mocrTargetStrategyParameters, pos)
    of 849: parseFloat(s, result.mocrParticipationRate, pos)
    of 480: parseChar(s, result.mocrCancellationRights, pos)
    of 481: parseChar(s, result.mocrMoneyLaunderingStatus, pos)
    of 513: parseStr(s, result.mocrRegistID, pos)
    of 494: parseStr(s, result.mocrDesignation, pos)
    of 563: parseInt(s, result.mocrMultiLegRptTypeReq, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseTradeCaptureReportRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AD", "TradeCaptureReportRequest"))
  result.msgType = TradeCaptureReportRequest
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
    of 568: parseStr(s, result.tcrrTradeRequestID, pos)
    of 569: parseInt(s, result.tcrrTradeRequestType, pos)
    of 263: parseChar(s, result.tcrrSubscriptionRequestType, pos)
    of 571: parseStr(s, result.tcrrTradeReportID, pos)
    of 818: parseStr(s, result.tcrrSecondaryTradeReportID, pos)
    of 17: parseStr(s, result.tcrrExecID, pos)
    of 150: parseChar(s, result.tcrrExecType, pos)
    of 37: parseStr(s, result.tcrrOrderID, pos)
    of 11: parseStr(s, result.tcrrClOrdID, pos)
    of 573: parseChar(s, result.tcrrMatchStatus, pos)
    of 828: parseInt(s, result.tcrrTrdType, pos)
    of 829: parseInt(s, result.tcrrTrdSubType, pos)
    of 830: parseStr(s, result.tcrrTransferReason, pos)
    of 855: parseInt(s, result.tcrrSecondaryTrdType, pos)
    of 820: parseStr(s, result.tcrrTradeLinkID, pos)
    of 880: parseStr(s, result.tcrrTrdMatchID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.tcrrNoPartyIDs, pos)
    of 55: parseStr(s, result.tcrrSymbol, pos)
    of 65: parseStr(s, result.tcrrSymbolSfx, pos)
    of 48: parseStr(s, result.tcrrSecurityID, pos)
    of 22: parseStr(s, result.tcrrSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.tcrrNoSecurityAltID, pos)
    of 460: parseInt(s, result.tcrrProduct, pos)
    of 461: parseStr(s, result.tcrrCFICode, pos)
    of 167: parseStr(s, result.tcrrSecurityType, pos)
    of 762: parseStr(s, result.tcrrSecuritySubType, pos)
    of 200: parseStr(s, result.tcrrMaturityMonthYear, pos)
    of 541: parseStr(s, result.tcrrMaturityDate, pos)
    of 201: parseInt(s, result.tcrrPutOrCall, pos)
    of 224: parseStr(s, result.tcrrCouponPaymentDate, pos)
    of 225: parseStr(s, result.tcrrIssueDate, pos)
    of 239: parseStr(s, result.tcrrRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.tcrrRepurchaseTerm, pos)
    of 227: parseFloat(s, result.tcrrRepurchaseRate, pos)
    of 228: parseStr(s, result.tcrrFactor, pos)
    of 255: parseStr(s, result.tcrrCreditRating, pos)
    of 543: parseStr(s, result.tcrrInstrRegistry, pos)
    of 470: parseStr(s, result.tcrrCountryOfIssue, pos)
    of 471: parseStr(s, result.tcrrStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.tcrrLocaleOfIssue, pos)
    of 240: parseStr(s, result.tcrrRedemptionDate, pos)
    of 202: parseFloat(s, result.tcrrStrikePrice, pos)
    of 947: parseStr(s, result.tcrrStrikeCurrency, pos)
    of 206: parseChar(s, result.tcrrOptAttribute, pos)
    of 231: parseStr(s, result.tcrrContractMultiplier, pos)
    of 223: parseFloat(s, result.tcrrCouponRate, pos)
    of 207: parseStr(s, result.tcrrSecurityExchange, pos)
    of 106: parseStr(s, result.tcrrIssuer, pos)
    of 348: parseUInt(s, result.tcrrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.tcrrEncodedIssuer, pos)
    of 107: parseStr(s, result.tcrrSecurityDesc, pos)
    of 350: parseUInt(s, result.tcrrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.tcrrEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.tcrrPool, pos)
    of 667: parseStr(s, result.tcrrContractSettlMonth, pos)
    of 875: parseInt(s, result.tcrrCPProgram, pos)
    of 876: parseStr(s, result.tcrrCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.tcrrNoEvents, pos)
    of 873: parseStr(s, result.tcrrDatedDate, pos)
    of 874: parseStr(s, result.tcrrInterestAccrualDate, pos)
    of 668: parseInt(s, result.tcrrDeliveryForm, pos)
    of 869: parseFloat(s, result.tcrrPctAtRisk, pos)
    of 870: skipValue(s, pos); parseNoInstrAttrib(s, result.tcrrNoInstrAttrib, pos)
    of 913: parseStr(s, result.tcrrAgreementDesc, pos)
    of 914: parseStr(s, result.tcrrAgreementID, pos)
    of 915: parseStr(s, result.tcrrAgreementDate, pos)
    of 918: parseStr(s, result.tcrrAgreementCurrency, pos)
    of 788: parseInt(s, result.tcrrTerminationType, pos)
    of 916: parseStr(s, result.tcrrStartDate, pos)
    of 917: parseStr(s, result.tcrrEndDate, pos)
    of 919: parseInt(s, result.tcrrDeliveryType, pos)
    of 898: parseFloat(s, result.tcrrMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.tcrrNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.tcrrNoLegs, pos)
    of 580: skipValue(s, pos); parseNoDates(s, result.tcrrNoDates, pos)
    of 715: parseStr(s, result.tcrrClearingBusinessDate, pos)
    of 336: parseStr(s, result.tcrrTradingSessionID, pos)
    of 625: parseStr(s, result.tcrrTradingSessionSubID, pos)
    of 943: parseStr(s, result.tcrrTimeBracket, pos)
    of 54: parseChar(s, result.tcrrSide, pos)
    of 442: parseChar(s, result.tcrrMultiLegReportingType, pos)
    of 578: parseStr(s, result.tcrrTradeInputSource, pos)
    of 579: parseStr(s, result.tcrrTradeInputDevice, pos)
    of 725: parseInt(s, result.tcrrResponseTransportType, pos)
    of 726: parseStr(s, result.tcrrResponseDestination, pos)
    of 58: parseStr(s, result.tcrrText, pos)
    of 354: parseUInt(s, result.tcrrEncodedTextLen, pos)
    of 355: parseStr(s, result.tcrrEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseTradeCaptureReport(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AE", "TradeCaptureReport"))
  result.msgType = TradeCaptureReport
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
    of 571: parseStr(s, result.tcrTradeReportID, pos)
    of 487: parseInt(s, result.tcrTradeReportTransType, pos)
    of 856: parseInt(s, result.tcrTradeReportType, pos)
    of 568: parseStr(s, result.tcrTradeRequestID, pos)
    of 828: parseInt(s, result.tcrTrdType, pos)
    of 829: parseInt(s, result.tcrTrdSubType, pos)
    of 855: parseInt(s, result.tcrSecondaryTrdType, pos)
    of 830: parseStr(s, result.tcrTransferReason, pos)
    of 150: parseChar(s, result.tcrExecType, pos)
    of 748: parseInt(s, result.tcrTotNumTradeReports, pos)
    of 912: parseBool(s, result.tcrLastRptRequested, pos)
    of 325: parseBool(s, result.tcrUnsolicitedIndicator, pos)
    of 263: parseChar(s, result.tcrSubscriptionRequestType, pos)
    of 572: parseStr(s, result.tcrTradeReportRefID, pos)
    of 881: parseStr(s, result.tcrSecondaryTradeReportRefID, pos)
    of 818: parseStr(s, result.tcrSecondaryTradeReportID, pos)
    of 820: parseStr(s, result.tcrTradeLinkID, pos)
    of 880: parseStr(s, result.tcrTrdMatchID, pos)
    of 17: parseStr(s, result.tcrExecID, pos)
    of 39: parseChar(s, result.tcrOrdStatus, pos)
    of 527: parseStr(s, result.tcrSecondaryExecID, pos)
    of 378: parseInt(s, result.tcrExecRestatementReason, pos)
    of 570: parseBool(s, result.tcrPreviouslyReported, pos)
    of 423: parseInt(s, result.tcrPriceType, pos)
    of 55: parseStr(s, result.tcrSymbol, pos)
    of 65: parseStr(s, result.tcrSymbolSfx, pos)
    of 48: parseStr(s, result.tcrSecurityID, pos)
    of 22: parseStr(s, result.tcrSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.tcrNoSecurityAltID, pos)
    of 460: parseInt(s, result.tcrProduct, pos)
    of 461: parseStr(s, result.tcrCFICode, pos)
    of 167: parseStr(s, result.tcrSecurityType, pos)
    of 762: parseStr(s, result.tcrSecuritySubType, pos)
    of 200: parseStr(s, result.tcrMaturityMonthYear, pos)
    of 541: parseStr(s, result.tcrMaturityDate, pos)
    of 201: parseInt(s, result.tcrPutOrCall, pos)
    of 224: parseStr(s, result.tcrCouponPaymentDate, pos)
    of 225: parseStr(s, result.tcrIssueDate, pos)
    of 239: parseStr(s, result.tcrRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.tcrRepurchaseTerm, pos)
    of 227: parseFloat(s, result.tcrRepurchaseRate, pos)
    of 228: parseStr(s, result.tcrFactor, pos)
    of 255: parseStr(s, result.tcrCreditRating, pos)
    of 543: parseStr(s, result.tcrInstrRegistry, pos)
    of 470: parseStr(s, result.tcrCountryOfIssue, pos)
    of 471: parseStr(s, result.tcrStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.tcrLocaleOfIssue, pos)
    of 240: parseStr(s, result.tcrRedemptionDate, pos)
    of 202: parseFloat(s, result.tcrStrikePrice, pos)
    of 947: parseStr(s, result.tcrStrikeCurrency, pos)
    of 206: parseChar(s, result.tcrOptAttribute, pos)
    of 231: parseStr(s, result.tcrContractMultiplier, pos)
    of 223: parseFloat(s, result.tcrCouponRate, pos)
    of 207: parseStr(s, result.tcrSecurityExchange, pos)
    of 106: parseStr(s, result.tcrIssuer, pos)
    of 348: parseUInt(s, result.tcrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.tcrEncodedIssuer, pos)
    of 107: parseStr(s, result.tcrSecurityDesc, pos)
    of 350: parseUInt(s, result.tcrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.tcrEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.tcrPool, pos)
    of 667: parseStr(s, result.tcrContractSettlMonth, pos)
    of 875: parseInt(s, result.tcrCPProgram, pos)
    of 876: parseStr(s, result.tcrCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.tcrNoEvents, pos)
    of 873: parseStr(s, result.tcrDatedDate, pos)
    of 874: parseStr(s, result.tcrInterestAccrualDate, pos)
    of 913: parseStr(s, result.tcrAgreementDesc, pos)
    of 914: parseStr(s, result.tcrAgreementID, pos)
    of 915: parseStr(s, result.tcrAgreementDate, pos)
    of 918: parseStr(s, result.tcrAgreementCurrency, pos)
    of 788: parseInt(s, result.tcrTerminationType, pos)
    of 916: parseStr(s, result.tcrStartDate, pos)
    of 917: parseStr(s, result.tcrEndDate, pos)
    of 919: parseInt(s, result.tcrDeliveryType, pos)
    of 898: parseFloat(s, result.tcrMarginRatio, pos)
    of 38: parseInt(s, result.tcrOrderQty, pos)
    of 152: parseInt(s, result.tcrCashOrderQty, pos)
    of 516: parseFloat(s, result.tcrOrderPercent, pos)
    of 468: parseChar(s, result.tcrRoundingDirection, pos)
    of 469: parseStr(s, result.tcrRoundingModulus, pos)
    of 854: parseInt(s, result.tcrQtyType, pos)
    of 235: parseStr(s, result.tcrYieldType, pos)
    of 236: parseFloat(s, result.tcrYield, pos)
    of 701: parseStr(s, result.tcrYieldCalcDate, pos)
    of 696: parseStr(s, result.tcrYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.tcrYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.tcrYieldRedemptionPriceType, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.tcrNoUnderlyings, pos)
    of 822: parseStr(s, result.tcrUnderlyingTradingSessionID, pos)
    of 823: parseStr(s, result.tcrUnderlyingTradingSessionSubID, pos)
    of 32: parseInt(s, result.tcrLastQty, pos)
    of 31: parseFloat(s, result.tcrLastPx, pos)
    of 669: parseFloat(s, result.tcrLastParPx, pos)
    of 194: parseFloat(s, result.tcrLastSpotRate, pos)
    of 195: parseFloat(s, result.tcrLastForwardPoints, pos)
    of 30: parseStr(s, result.tcrLastMkt, pos)
    of 75: parseStr(s, result.tcrTradeDate, pos)
    of 715: parseStr(s, result.tcrClearingBusinessDate, pos)
    of 6: parseFloat(s, result.tcrAvgPx, pos)
    of 218: parseFloat(s, result.tcrSpread, pos)
    of 220: parseStr(s, result.tcrBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.tcrBenchmarkCurveName, pos)
    of 222: parseStr(s, result.tcrBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.tcrBenchmarkPrice, pos)
    of 663: parseInt(s, result.tcrBenchmarkPriceType, pos)
    of 699: parseStr(s, result.tcrBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.tcrBenchmarkSecurityIDSource, pos)
    of 819: parseInt(s, result.tcrAvgPxIndicator, pos)
    of 753: skipValue(s, pos); parseNoPosAmt(s, result.tcrNoPosAmt, pos)
    of 442: parseChar(s, result.tcrMultiLegReportingType, pos)
    of 824: parseStr(s, result.tcrTradeLegRefID, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.tcrNoLegs, pos)
    of 60: parseStr(s, result.tcrTransactTime, pos)
    of 768: skipValue(s, pos); parseNoTrdRegTimestamps(s, result.tcrNoTrdRegTimestamps, pos)
    of 63: parseChar(s, result.tcrSettlType, pos)
    of 64: parseStr(s, result.tcrSettlDate, pos)
    of 573: parseChar(s, result.tcrMatchStatus, pos)
    of 574: parseStr(s, result.tcrMatchType, pos)
    of 552: skipValue(s, pos); parseNoSides(s, result.tcrNoSides, pos)
    of 797: parseBool(s, result.tcrCopyMsgIndicator, pos)
    of 852: parseBool(s, result.tcrPublishTrdIndicator, pos)
    of 853: parseInt(s, result.tcrShortSaleReason, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseOrderMassStatusRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AF", "OrderMassStatusRequest"))
  result.msgType = OrderMassStatusRequest
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
    of 584: parseStr(s, result.omsrMassStatusReqID, pos)
    of 585: parseInt(s, result.omsrMassStatusReqType, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.omsrNoPartyIDs, pos)
    of 1: parseStr(s, result.omsrAccount, pos)
    of 660: parseInt(s, result.omsrAcctIDSource, pos)
    of 336: parseStr(s, result.omsrTradingSessionID, pos)
    of 625: parseStr(s, result.omsrTradingSessionSubID, pos)
    of 55: parseStr(s, result.omsrSymbol, pos)
    of 65: parseStr(s, result.omsrSymbolSfx, pos)
    of 48: parseStr(s, result.omsrSecurityID, pos)
    of 22: parseStr(s, result.omsrSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.omsrNoSecurityAltID, pos)
    of 460: parseInt(s, result.omsrProduct, pos)
    of 461: parseStr(s, result.omsrCFICode, pos)
    of 167: parseStr(s, result.omsrSecurityType, pos)
    of 762: parseStr(s, result.omsrSecuritySubType, pos)
    of 200: parseStr(s, result.omsrMaturityMonthYear, pos)
    of 541: parseStr(s, result.omsrMaturityDate, pos)
    of 201: parseInt(s, result.omsrPutOrCall, pos)
    of 224: parseStr(s, result.omsrCouponPaymentDate, pos)
    of 225: parseStr(s, result.omsrIssueDate, pos)
    of 239: parseStr(s, result.omsrRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.omsrRepurchaseTerm, pos)
    of 227: parseFloat(s, result.omsrRepurchaseRate, pos)
    of 228: parseStr(s, result.omsrFactor, pos)
    of 255: parseStr(s, result.omsrCreditRating, pos)
    of 543: parseStr(s, result.omsrInstrRegistry, pos)
    of 470: parseStr(s, result.omsrCountryOfIssue, pos)
    of 471: parseStr(s, result.omsrStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.omsrLocaleOfIssue, pos)
    of 240: parseStr(s, result.omsrRedemptionDate, pos)
    of 202: parseFloat(s, result.omsrStrikePrice, pos)
    of 947: parseStr(s, result.omsrStrikeCurrency, pos)
    of 206: parseChar(s, result.omsrOptAttribute, pos)
    of 231: parseStr(s, result.omsrContractMultiplier, pos)
    of 223: parseFloat(s, result.omsrCouponRate, pos)
    of 207: parseStr(s, result.omsrSecurityExchange, pos)
    of 106: parseStr(s, result.omsrIssuer, pos)
    of 348: parseUInt(s, result.omsrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.omsrEncodedIssuer, pos)
    of 107: parseStr(s, result.omsrSecurityDesc, pos)
    of 350: parseUInt(s, result.omsrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.omsrEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.omsrPool, pos)
    of 667: parseStr(s, result.omsrContractSettlMonth, pos)
    of 875: parseInt(s, result.omsrCPProgram, pos)
    of 876: parseStr(s, result.omsrCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.omsrNoEvents, pos)
    of 873: parseStr(s, result.omsrDatedDate, pos)
    of 874: parseStr(s, result.omsrInterestAccrualDate, pos)
    of 311: parseStr(s, result.omsrUnderlyingSymbol, pos)
    of 312: parseStr(s, result.omsrUnderlyingSymbolSfx, pos)
    of 309: parseStr(s, result.omsrUnderlyingSecurityID, pos)
    of 305: parseStr(s, result.omsrUnderlyingSecurityIDSource, pos)
    of 457: skipValue(s, pos); parseNoUnderlyingSecurityAltID(s, result.omsrNoUnderlyingSecurityAltID, pos)
    of 462: parseInt(s, result.omsrUnderlyingProduct, pos)
    of 463: parseStr(s, result.omsrUnderlyingCFICode, pos)
    of 310: parseStr(s, result.omsrUnderlyingSecurityType, pos)
    of 763: parseStr(s, result.omsrUnderlyingSecuritySubType, pos)
    of 313: parseStr(s, result.omsrUnderlyingMaturityMonthYear, pos)
    of 542: parseStr(s, result.omsrUnderlyingMaturityDate, pos)
    of 315: parseInt(s, result.omsrUnderlyingPutOrCall, pos)
    of 241: parseStr(s, result.omsrUnderlyingCouponPaymentDate, pos)
    of 242: parseStr(s, result.omsrUnderlyingIssueDate, pos)
    of 243: parseStr(s, result.omsrUnderlyingRepoCollateralSecurityType, pos)
    of 244: parseInt(s, result.omsrUnderlyingRepurchaseTerm, pos)
    of 245: parseFloat(s, result.omsrUnderlyingRepurchaseRate, pos)
    of 246: parseStr(s, result.omsrUnderlyingFactor, pos)
    of 256: parseStr(s, result.omsrUnderlyingCreditRating, pos)
    of 595: parseStr(s, result.omsrUnderlyingInstrRegistry, pos)
    of 592: parseStr(s, result.omsrUnderlyingCountryOfIssue, pos)
    of 593: parseStr(s, result.omsrUnderlyingStateOrProvinceOfIssue, pos)
    of 594: parseStr(s, result.omsrUnderlyingLocaleOfIssue, pos)
    of 247: parseStr(s, result.omsrUnderlyingRedemptionDate, pos)
    of 316: parseFloat(s, result.omsrUnderlyingStrikePrice, pos)
    of 941: parseStr(s, result.omsrUnderlyingStrikeCurrency, pos)
    of 317: parseChar(s, result.omsrUnderlyingOptAttribute, pos)
    of 436: parseStr(s, result.omsrUnderlyingContractMultiplier, pos)
    of 435: parseFloat(s, result.omsrUnderlyingCouponRate, pos)
    of 308: parseStr(s, result.omsrUnderlyingSecurityExchange, pos)
    of 306: parseStr(s, result.omsrUnderlyingIssuer, pos)
    of 362: parseUInt(s, result.omsrEncodedUnderlyingIssuerLen, pos)
    of 363: parseStr(s, result.omsrEncodedUnderlyingIssuer, pos)
    of 307: parseStr(s, result.omsrUnderlyingSecurityDesc, pos)
    of 364: parseUInt(s, result.omsrEncodedUnderlyingSecurityDescLen, pos)
    of 365: parseStr(s, result.omsrEncodedUnderlyingSecurityDesc, pos)
    of 877: parseStr(s, result.omsrUnderlyingCPProgram, pos)
    of 878: parseStr(s, result.omsrUnderlyingCPRegType, pos)
    of 318: parseStr(s, result.omsrUnderlyingCurrency, pos)
    of 879: parseInt(s, result.omsrUnderlyingQty, pos)
    of 810: parseFloat(s, result.omsrUnderlyingPx, pos)
    of 882: parseFloat(s, result.omsrUnderlyingDirtyPrice, pos)
    of 883: parseFloat(s, result.omsrUnderlyingEndPrice, pos)
    of 884: parseUInt(s, result.omsrUnderlyingStartValue, pos)
    of 885: parseUInt(s, result.omsrUnderlyingCurrentValue, pos)
    of 886: parseUInt(s, result.omsrUnderlyingEndValue, pos)
    of 887: skipValue(s, pos); parseNoUnderlyingStips(s, result.omsrNoUnderlyingStips, pos)
    of 54: parseChar(s, result.omsrSide, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseQuoteRequestReject(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AG", "QuoteRequestReject"))
  result.msgType = QuoteRequestReject
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
    of 131: parseStr(s, result.qrrQuoteReqID, pos)
    of 644: parseStr(s, result.qrrRFQReqID, pos)
    of 658: parseInt(s, result.qrrQuoteRequestRejectReason, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.qrrNoRelatedSym, pos)
    of 58: parseStr(s, result.qrrText, pos)
    of 354: parseUInt(s, result.qrrEncodedTextLen, pos)
    of 355: parseStr(s, result.qrrEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseRFQRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AH", "RFQRequest"))
  result.msgType = RFQRequest
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
    of 644: parseStr(s, result.rfqrRFQReqID, pos)
    of 146: skipValue(s, pos); parseNoRelatedSym(s, result.rfqrNoRelatedSym, pos)
    of 263: parseChar(s, result.rfqrSubscriptionRequestType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseQuoteStatusReport(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AI", "QuoteStatusReport"))
  result.msgType = QuoteStatusReport
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
    of 649: parseStr(s, result.qsrQuoteStatusReqID, pos)
    of 131: parseStr(s, result.qsrQuoteReqID, pos)
    of 117: parseStr(s, result.qsrQuoteID, pos)
    of 693: parseStr(s, result.qsrQuoteRespID, pos)
    of 537: parseInt(s, result.qsrQuoteType, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.qsrNoPartyIDs, pos)
    of 336: parseStr(s, result.qsrTradingSessionID, pos)
    of 625: parseStr(s, result.qsrTradingSessionSubID, pos)
    of 55: parseStr(s, result.qsrSymbol, pos)
    of 65: parseStr(s, result.qsrSymbolSfx, pos)
    of 48: parseStr(s, result.qsrSecurityID, pos)
    of 22: parseStr(s, result.qsrSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.qsrNoSecurityAltID, pos)
    of 460: parseInt(s, result.qsrProduct, pos)
    of 461: parseStr(s, result.qsrCFICode, pos)
    of 167: parseStr(s, result.qsrSecurityType, pos)
    of 762: parseStr(s, result.qsrSecuritySubType, pos)
    of 200: parseStr(s, result.qsrMaturityMonthYear, pos)
    of 541: parseStr(s, result.qsrMaturityDate, pos)
    of 201: parseInt(s, result.qsrPutOrCall, pos)
    of 224: parseStr(s, result.qsrCouponPaymentDate, pos)
    of 225: parseStr(s, result.qsrIssueDate, pos)
    of 239: parseStr(s, result.qsrRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.qsrRepurchaseTerm, pos)
    of 227: parseFloat(s, result.qsrRepurchaseRate, pos)
    of 228: parseStr(s, result.qsrFactor, pos)
    of 255: parseStr(s, result.qsrCreditRating, pos)
    of 543: parseStr(s, result.qsrInstrRegistry, pos)
    of 470: parseStr(s, result.qsrCountryOfIssue, pos)
    of 471: parseStr(s, result.qsrStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.qsrLocaleOfIssue, pos)
    of 240: parseStr(s, result.qsrRedemptionDate, pos)
    of 202: parseFloat(s, result.qsrStrikePrice, pos)
    of 947: parseStr(s, result.qsrStrikeCurrency, pos)
    of 206: parseChar(s, result.qsrOptAttribute, pos)
    of 231: parseStr(s, result.qsrContractMultiplier, pos)
    of 223: parseFloat(s, result.qsrCouponRate, pos)
    of 207: parseStr(s, result.qsrSecurityExchange, pos)
    of 106: parseStr(s, result.qsrIssuer, pos)
    of 348: parseUInt(s, result.qsrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.qsrEncodedIssuer, pos)
    of 107: parseStr(s, result.qsrSecurityDesc, pos)
    of 350: parseUInt(s, result.qsrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.qsrEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.qsrPool, pos)
    of 667: parseStr(s, result.qsrContractSettlMonth, pos)
    of 875: parseInt(s, result.qsrCPProgram, pos)
    of 876: parseStr(s, result.qsrCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.qsrNoEvents, pos)
    of 873: parseStr(s, result.qsrDatedDate, pos)
    of 874: parseStr(s, result.qsrInterestAccrualDate, pos)
    of 913: parseStr(s, result.qsrAgreementDesc, pos)
    of 914: parseStr(s, result.qsrAgreementID, pos)
    of 915: parseStr(s, result.qsrAgreementDate, pos)
    of 918: parseStr(s, result.qsrAgreementCurrency, pos)
    of 788: parseInt(s, result.qsrTerminationType, pos)
    of 916: parseStr(s, result.qsrStartDate, pos)
    of 917: parseStr(s, result.qsrEndDate, pos)
    of 919: parseInt(s, result.qsrDeliveryType, pos)
    of 898: parseFloat(s, result.qsrMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.qsrNoUnderlyings, pos)
    of 54: parseChar(s, result.qsrSide, pos)
    of 38: parseInt(s, result.qsrOrderQty, pos)
    of 152: parseInt(s, result.qsrCashOrderQty, pos)
    of 516: parseFloat(s, result.qsrOrderPercent, pos)
    of 468: parseChar(s, result.qsrRoundingDirection, pos)
    of 469: parseStr(s, result.qsrRoundingModulus, pos)
    of 63: parseChar(s, result.qsrSettlType, pos)
    of 64: parseStr(s, result.qsrSettlDate, pos)
    of 193: parseStr(s, result.qsrSettlDate2, pos)
    of 192: parseInt(s, result.qsrOrderQty2, pos)
    of 15: parseStr(s, result.qsrCurrency, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.qsrNoStipulations, pos)
    of 1: parseStr(s, result.qsrAccount, pos)
    of 660: parseInt(s, result.qsrAcctIDSource, pos)
    of 581: parseInt(s, result.qsrAccountType, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.qsrNoLegs, pos)
    of 735: skipValue(s, pos); parseNoQuoteQualifiers(s, result.qsrNoQuoteQualifiers, pos)
    of 126: parseStr(s, result.qsrExpireTime, pos)
    of 44: parseFloat(s, result.qsrPrice, pos)
    of 423: parseInt(s, result.qsrPriceType, pos)
    of 218: parseFloat(s, result.qsrSpread, pos)
    of 220: parseStr(s, result.qsrBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.qsrBenchmarkCurveName, pos)
    of 222: parseStr(s, result.qsrBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.qsrBenchmarkPrice, pos)
    of 663: parseInt(s, result.qsrBenchmarkPriceType, pos)
    of 699: parseStr(s, result.qsrBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.qsrBenchmarkSecurityIDSource, pos)
    of 235: parseStr(s, result.qsrYieldType, pos)
    of 236: parseFloat(s, result.qsrYield, pos)
    of 701: parseStr(s, result.qsrYieldCalcDate, pos)
    of 696: parseStr(s, result.qsrYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.qsrYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.qsrYieldRedemptionPriceType, pos)
    of 132: parseFloat(s, result.qsrBidPx, pos)
    of 133: parseFloat(s, result.qsrOfferPx, pos)
    of 645: parseFloat(s, result.qsrMktBidPx, pos)
    of 646: parseFloat(s, result.qsrMktOfferPx, pos)
    of 647: parseInt(s, result.qsrMinBidSize, pos)
    of 134: parseInt(s, result.qsrBidSize, pos)
    of 648: parseInt(s, result.qsrMinOfferSize, pos)
    of 135: parseInt(s, result.qsrOfferSize, pos)
    of 62: parseStr(s, result.qsrValidUntilTime, pos)
    of 188: parseFloat(s, result.qsrBidSpotRate, pos)
    of 190: parseFloat(s, result.qsrOfferSpotRate, pos)
    of 189: parseFloat(s, result.qsrBidForwardPoints, pos)
    of 191: parseFloat(s, result.qsrOfferForwardPoints, pos)
    of 631: parseFloat(s, result.qsrMidPx, pos)
    of 632: parseFloat(s, result.qsrBidYield, pos)
    of 633: parseFloat(s, result.qsrMidYield, pos)
    of 634: parseFloat(s, result.qsrOfferYield, pos)
    of 60: parseStr(s, result.qsrTransactTime, pos)
    of 40: parseChar(s, result.qsrOrdType, pos)
    of 642: parseFloat(s, result.qsrBidForwardPoints2, pos)
    of 643: parseFloat(s, result.qsrOfferForwardPoints2, pos)
    of 656: parseStr(s, result.qsrSettlCurrBidFxRate, pos)
    of 657: parseStr(s, result.qsrSettlCurrOfferFxRate, pos)
    of 156: parseChar(s, result.qsrSettlCurrFxRateCalc, pos)
    of 13: parseChar(s, result.qsrCommType, pos)
    of 12: parseUInt(s, result.qsrCommission, pos)
    of 582: parseInt(s, result.qsrCustOrderCapacity, pos)
    of 100: parseStr(s, result.qsrExDestination, pos)
    of 297: parseInt(s, result.qsrQuoteStatus, pos)
    of 58: parseStr(s, result.qsrText, pos)
    of 354: parseUInt(s, result.qsrEncodedTextLen, pos)
    of 355: parseStr(s, result.qsrEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseQuoteResponse(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AJ", "QuoteResponse"))
  result.msgType = QuoteResponse
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
    of 693: parseStr(s, result.qrQuoteRespID, pos)
    of 117: parseStr(s, result.qrQuoteID, pos)
    of 694: parseInt(s, result.qrQuoteRespType, pos)
    of 11: parseStr(s, result.qrClOrdID, pos)
    of 528: parseChar(s, result.qrOrderCapacity, pos)
    of 23: parseStr(s, result.qrIOIID, pos)
    of 537: parseInt(s, result.qrQuoteType, pos)
    of 735: skipValue(s, pos); parseNoQuoteQualifiers(s, result.qrNoQuoteQualifiers, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.qrNoPartyIDs, pos)
    of 336: parseStr(s, result.qrTradingSessionID, pos)
    of 625: parseStr(s, result.qrTradingSessionSubID, pos)
    of 55: parseStr(s, result.qrSymbol, pos)
    of 65: parseStr(s, result.qrSymbolSfx, pos)
    of 48: parseStr(s, result.qrSecurityID, pos)
    of 22: parseStr(s, result.qrSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.qrNoSecurityAltID, pos)
    of 460: parseInt(s, result.qrProduct, pos)
    of 461: parseStr(s, result.qrCFICode, pos)
    of 167: parseStr(s, result.qrSecurityType, pos)
    of 762: parseStr(s, result.qrSecuritySubType, pos)
    of 200: parseStr(s, result.qrMaturityMonthYear, pos)
    of 541: parseStr(s, result.qrMaturityDate, pos)
    of 201: parseInt(s, result.qrPutOrCall, pos)
    of 224: parseStr(s, result.qrCouponPaymentDate, pos)
    of 225: parseStr(s, result.qrIssueDate, pos)
    of 239: parseStr(s, result.qrRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.qrRepurchaseTerm, pos)
    of 227: parseFloat(s, result.qrRepurchaseRate, pos)
    of 228: parseStr(s, result.qrFactor, pos)
    of 255: parseStr(s, result.qrCreditRating, pos)
    of 543: parseStr(s, result.qrInstrRegistry, pos)
    of 470: parseStr(s, result.qrCountryOfIssue, pos)
    of 471: parseStr(s, result.qrStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.qrLocaleOfIssue, pos)
    of 240: parseStr(s, result.qrRedemptionDate, pos)
    of 202: parseFloat(s, result.qrStrikePrice, pos)
    of 947: parseStr(s, result.qrStrikeCurrency, pos)
    of 206: parseChar(s, result.qrOptAttribute, pos)
    of 231: parseStr(s, result.qrContractMultiplier, pos)
    of 223: parseFloat(s, result.qrCouponRate, pos)
    of 207: parseStr(s, result.qrSecurityExchange, pos)
    of 106: parseStr(s, result.qrIssuer, pos)
    of 348: parseUInt(s, result.qrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.qrEncodedIssuer, pos)
    of 107: parseStr(s, result.qrSecurityDesc, pos)
    of 350: parseUInt(s, result.qrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.qrEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.qrPool, pos)
    of 667: parseStr(s, result.qrContractSettlMonth, pos)
    of 875: parseInt(s, result.qrCPProgram, pos)
    of 876: parseStr(s, result.qrCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.qrNoEvents, pos)
    of 873: parseStr(s, result.qrDatedDate, pos)
    of 874: parseStr(s, result.qrInterestAccrualDate, pos)
    of 913: parseStr(s, result.qrAgreementDesc, pos)
    of 914: parseStr(s, result.qrAgreementID, pos)
    of 915: parseStr(s, result.qrAgreementDate, pos)
    of 918: parseStr(s, result.qrAgreementCurrency, pos)
    of 788: parseInt(s, result.qrTerminationType, pos)
    of 916: parseStr(s, result.qrStartDate, pos)
    of 917: parseStr(s, result.qrEndDate, pos)
    of 919: parseInt(s, result.qrDeliveryType, pos)
    of 898: parseFloat(s, result.qrMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.qrNoUnderlyings, pos)
    of 54: parseChar(s, result.qrSide, pos)
    of 38: parseInt(s, result.qrOrderQty, pos)
    of 152: parseInt(s, result.qrCashOrderQty, pos)
    of 516: parseFloat(s, result.qrOrderPercent, pos)
    of 468: parseChar(s, result.qrRoundingDirection, pos)
    of 469: parseStr(s, result.qrRoundingModulus, pos)
    of 63: parseChar(s, result.qrSettlType, pos)
    of 64: parseStr(s, result.qrSettlDate, pos)
    of 193: parseStr(s, result.qrSettlDate2, pos)
    of 192: parseInt(s, result.qrOrderQty2, pos)
    of 15: parseStr(s, result.qrCurrency, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.qrNoStipulations, pos)
    of 1: parseStr(s, result.qrAccount, pos)
    of 660: parseInt(s, result.qrAcctIDSource, pos)
    of 581: parseInt(s, result.qrAccountType, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.qrNoLegs, pos)
    of 132: parseFloat(s, result.qrBidPx, pos)
    of 133: parseFloat(s, result.qrOfferPx, pos)
    of 645: parseFloat(s, result.qrMktBidPx, pos)
    of 646: parseFloat(s, result.qrMktOfferPx, pos)
    of 647: parseInt(s, result.qrMinBidSize, pos)
    of 134: parseInt(s, result.qrBidSize, pos)
    of 648: parseInt(s, result.qrMinOfferSize, pos)
    of 135: parseInt(s, result.qrOfferSize, pos)
    of 62: parseStr(s, result.qrValidUntilTime, pos)
    of 188: parseFloat(s, result.qrBidSpotRate, pos)
    of 190: parseFloat(s, result.qrOfferSpotRate, pos)
    of 189: parseFloat(s, result.qrBidForwardPoints, pos)
    of 191: parseFloat(s, result.qrOfferForwardPoints, pos)
    of 631: parseFloat(s, result.qrMidPx, pos)
    of 632: parseFloat(s, result.qrBidYield, pos)
    of 633: parseFloat(s, result.qrMidYield, pos)
    of 634: parseFloat(s, result.qrOfferYield, pos)
    of 60: parseStr(s, result.qrTransactTime, pos)
    of 40: parseChar(s, result.qrOrdType, pos)
    of 642: parseFloat(s, result.qrBidForwardPoints2, pos)
    of 643: parseFloat(s, result.qrOfferForwardPoints2, pos)
    of 656: parseStr(s, result.qrSettlCurrBidFxRate, pos)
    of 657: parseStr(s, result.qrSettlCurrOfferFxRate, pos)
    of 156: parseChar(s, result.qrSettlCurrFxRateCalc, pos)
    of 12: parseUInt(s, result.qrCommission, pos)
    of 13: parseChar(s, result.qrCommType, pos)
    of 582: parseInt(s, result.qrCustOrderCapacity, pos)
    of 100: parseStr(s, result.qrExDestination, pos)
    of 58: parseStr(s, result.qrText, pos)
    of 354: parseUInt(s, result.qrEncodedTextLen, pos)
    of 355: parseStr(s, result.qrEncodedText, pos)
    of 44: parseFloat(s, result.qrPrice, pos)
    of 423: parseInt(s, result.qrPriceType, pos)
    of 218: parseFloat(s, result.qrSpread, pos)
    of 220: parseStr(s, result.qrBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.qrBenchmarkCurveName, pos)
    of 222: parseStr(s, result.qrBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.qrBenchmarkPrice, pos)
    of 663: parseInt(s, result.qrBenchmarkPriceType, pos)
    of 699: parseStr(s, result.qrBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.qrBenchmarkSecurityIDSource, pos)
    of 235: parseStr(s, result.qrYieldType, pos)
    of 236: parseFloat(s, result.qrYield, pos)
    of 701: parseStr(s, result.qrYieldCalcDate, pos)
    of 696: parseStr(s, result.qrYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.qrYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.qrYieldRedemptionPriceType, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseConfirmation(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AK", "Confirmation"))
  result.msgType = Confirmation
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
    of 664: parseStr(s, result.cConfirmID, pos)
    of 772: parseStr(s, result.cConfirmRefID, pos)
    of 859: parseStr(s, result.cConfirmReqID, pos)
    of 666: parseInt(s, result.cConfirmTransType, pos)
    of 773: parseInt(s, result.cConfirmType, pos)
    of 797: parseBool(s, result.cCopyMsgIndicator, pos)
    of 650: parseBool(s, result.cLegalConfirm, pos)
    of 665: parseInt(s, result.cConfirmStatus, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.cNoPartyIDs, pos)
    of 73: skipValue(s, pos); parseNoOrders(s, result.cNoOrders, pos)
    of 70: parseStr(s, result.cAllocID, pos)
    of 793: parseStr(s, result.cSecondaryAllocID, pos)
    of 467: parseStr(s, result.cIndividualAllocID, pos)
    of 60: parseStr(s, result.cTransactTime, pos)
    of 75: parseStr(s, result.cTradeDate, pos)
    of 768: skipValue(s, pos); parseNoTrdRegTimestamps(s, result.cNoTrdRegTimestamps, pos)
    of 55: parseStr(s, result.cSymbol, pos)
    of 65: parseStr(s, result.cSymbolSfx, pos)
    of 48: parseStr(s, result.cSecurityID, pos)
    of 22: parseStr(s, result.cSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.cNoSecurityAltID, pos)
    of 460: parseInt(s, result.cProduct, pos)
    of 461: parseStr(s, result.cCFICode, pos)
    of 167: parseStr(s, result.cSecurityType, pos)
    of 762: parseStr(s, result.cSecuritySubType, pos)
    of 200: parseStr(s, result.cMaturityMonthYear, pos)
    of 541: parseStr(s, result.cMaturityDate, pos)
    of 201: parseInt(s, result.cPutOrCall, pos)
    of 224: parseStr(s, result.cCouponPaymentDate, pos)
    of 225: parseStr(s, result.cIssueDate, pos)
    of 239: parseStr(s, result.cRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.cRepurchaseTerm, pos)
    of 227: parseFloat(s, result.cRepurchaseRate, pos)
    of 228: parseStr(s, result.cFactor, pos)
    of 255: parseStr(s, result.cCreditRating, pos)
    of 543: parseStr(s, result.cInstrRegistry, pos)
    of 470: parseStr(s, result.cCountryOfIssue, pos)
    of 471: parseStr(s, result.cStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.cLocaleOfIssue, pos)
    of 240: parseStr(s, result.cRedemptionDate, pos)
    of 202: parseFloat(s, result.cStrikePrice, pos)
    of 947: parseStr(s, result.cStrikeCurrency, pos)
    of 206: parseChar(s, result.cOptAttribute, pos)
    of 231: parseStr(s, result.cContractMultiplier, pos)
    of 223: parseFloat(s, result.cCouponRate, pos)
    of 207: parseStr(s, result.cSecurityExchange, pos)
    of 106: parseStr(s, result.cIssuer, pos)
    of 348: parseUInt(s, result.cEncodedIssuerLen, pos)
    of 349: parseStr(s, result.cEncodedIssuer, pos)
    of 107: parseStr(s, result.cSecurityDesc, pos)
    of 350: parseUInt(s, result.cEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.cEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.cPool, pos)
    of 667: parseStr(s, result.cContractSettlMonth, pos)
    of 875: parseInt(s, result.cCPProgram, pos)
    of 876: parseStr(s, result.cCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.cNoEvents, pos)
    of 873: parseStr(s, result.cDatedDate, pos)
    of 874: parseStr(s, result.cInterestAccrualDate, pos)
    of 668: parseInt(s, result.cDeliveryForm, pos)
    of 869: parseFloat(s, result.cPctAtRisk, pos)
    of 870: skipValue(s, pos); parseNoInstrAttrib(s, result.cNoInstrAttrib, pos)
    of 913: parseStr(s, result.cAgreementDesc, pos)
    of 914: parseStr(s, result.cAgreementID, pos)
    of 915: parseStr(s, result.cAgreementDate, pos)
    of 918: parseStr(s, result.cAgreementCurrency, pos)
    of 788: parseInt(s, result.cTerminationType, pos)
    of 916: parseStr(s, result.cStartDate, pos)
    of 917: parseStr(s, result.cEndDate, pos)
    of 919: parseInt(s, result.cDeliveryType, pos)
    of 898: parseFloat(s, result.cMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.cNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.cNoLegs, pos)
    of 235: parseStr(s, result.cYieldType, pos)
    of 236: parseFloat(s, result.cYield, pos)
    of 701: parseStr(s, result.cYieldCalcDate, pos)
    of 696: parseStr(s, result.cYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.cYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.cYieldRedemptionPriceType, pos)
    of 80: parseInt(s, result.cAllocQty, pos)
    of 854: parseInt(s, result.cQtyType, pos)
    of 54: parseChar(s, result.cSide, pos)
    of 15: parseStr(s, result.cCurrency, pos)
    of 30: parseStr(s, result.cLastMkt, pos)
    of 862: skipValue(s, pos); parseNoCapacities(s, result.cNoCapacities, pos)
    of 79: parseStr(s, result.cAllocAccount, pos)
    of 661: parseInt(s, result.cAllocAcctIDSource, pos)
    of 798: parseInt(s, result.cAllocAccountType, pos)
    of 6: parseFloat(s, result.cAvgPx, pos)
    of 74: parseInt(s, result.cAvgPxPrecision, pos)
    of 423: parseInt(s, result.cPriceType, pos)
    of 860: parseFloat(s, result.cAvgParPx, pos)
    of 218: parseFloat(s, result.cSpread, pos)
    of 220: parseStr(s, result.cBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.cBenchmarkCurveName, pos)
    of 222: parseStr(s, result.cBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.cBenchmarkPrice, pos)
    of 663: parseInt(s, result.cBenchmarkPriceType, pos)
    of 699: parseStr(s, result.cBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.cBenchmarkSecurityIDSource, pos)
    of 861: parseFloat(s, result.cReportedPx, pos)
    of 58: parseStr(s, result.cText, pos)
    of 354: parseUInt(s, result.cEncodedTextLen, pos)
    of 355: parseStr(s, result.cEncodedText, pos)
    of 81: parseChar(s, result.cProcessCode, pos)
    of 381: parseUInt(s, result.cGrossTradeAmt, pos)
    of 157: parseInt(s, result.cNumDaysInterest, pos)
    of 230: parseStr(s, result.cExDate, pos)
    of 158: parseFloat(s, result.cAccruedInterestRate, pos)
    of 159: parseUInt(s, result.cAccruedInterestAmt, pos)
    of 738: parseUInt(s, result.cInterestAtMaturity, pos)
    of 920: parseUInt(s, result.cEndAccruedInterestAmt, pos)
    of 921: parseUInt(s, result.cStartCash, pos)
    of 922: parseUInt(s, result.cEndCash, pos)
    of 238: parseUInt(s, result.cConcession, pos)
    of 237: parseUInt(s, result.cTotalTakedown, pos)
    of 118: parseUInt(s, result.cNetMoney, pos)
    of 890: parseUInt(s, result.cMaturityNetMoney, pos)
    of 119: parseUInt(s, result.cSettlCurrAmt, pos)
    of 120: parseStr(s, result.cSettlCurrency, pos)
    of 155: parseStr(s, result.cSettlCurrFxRate, pos)
    of 156: parseChar(s, result.cSettlCurrFxRateCalc, pos)
    of 63: parseChar(s, result.cSettlType, pos)
    of 64: parseStr(s, result.cSettlDate, pos)
    of 172: parseInt(s, result.cSettlDeliveryType, pos)
    of 169: parseInt(s, result.cStandInstDbType, pos)
    of 170: parseStr(s, result.cStandInstDbName, pos)
    of 171: parseStr(s, result.cStandInstDbID, pos)
    of 85: skipValue(s, pos); parseNoDlvyInst(s, result.cNoDlvyInst, pos)
    of 12: parseUInt(s, result.cCommission, pos)
    of 13: parseChar(s, result.cCommType, pos)
    of 479: parseStr(s, result.cCommCurrency, pos)
    of 497: parseChar(s, result.cFundRenewWaiv, pos)
    of 858: parseUInt(s, result.cSharedCommission, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.cNoStipulations, pos)
    of 136: skipValue(s, pos); parseNoMiscFees(s, result.cNoMiscFees, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsePositionMaintenanceRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AL", "PositionMaintenanceRequest"))
  result.msgType = PositionMaintenanceRequest
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
    of 710: parseStr(s, result.pmrPosReqID, pos)
    of 709: parseInt(s, result.pmrPosTransType, pos)
    of 712: parseInt(s, result.pmrPosMaintAction, pos)
    of 713: parseStr(s, result.pmrOrigPosReqRefID, pos)
    of 714: parseStr(s, result.pmrPosMaintRptRefID, pos)
    of 715: parseStr(s, result.pmrClearingBusinessDate, pos)
    of 716: parseStr(s, result.pmrSettlSessID, pos)
    of 717: parseStr(s, result.pmrSettlSessSubID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.pmrNoPartyIDs, pos)
    of 1: parseStr(s, result.pmrAccount, pos)
    of 660: parseInt(s, result.pmrAcctIDSource, pos)
    of 581: parseInt(s, result.pmrAccountType, pos)
    of 55: parseStr(s, result.pmrSymbol, pos)
    of 65: parseStr(s, result.pmrSymbolSfx, pos)
    of 48: parseStr(s, result.pmrSecurityID, pos)
    of 22: parseStr(s, result.pmrSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.pmrNoSecurityAltID, pos)
    of 460: parseInt(s, result.pmrProduct, pos)
    of 461: parseStr(s, result.pmrCFICode, pos)
    of 167: parseStr(s, result.pmrSecurityType, pos)
    of 762: parseStr(s, result.pmrSecuritySubType, pos)
    of 200: parseStr(s, result.pmrMaturityMonthYear, pos)
    of 541: parseStr(s, result.pmrMaturityDate, pos)
    of 201: parseInt(s, result.pmrPutOrCall, pos)
    of 224: parseStr(s, result.pmrCouponPaymentDate, pos)
    of 225: parseStr(s, result.pmrIssueDate, pos)
    of 239: parseStr(s, result.pmrRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.pmrRepurchaseTerm, pos)
    of 227: parseFloat(s, result.pmrRepurchaseRate, pos)
    of 228: parseStr(s, result.pmrFactor, pos)
    of 255: parseStr(s, result.pmrCreditRating, pos)
    of 543: parseStr(s, result.pmrInstrRegistry, pos)
    of 470: parseStr(s, result.pmrCountryOfIssue, pos)
    of 471: parseStr(s, result.pmrStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.pmrLocaleOfIssue, pos)
    of 240: parseStr(s, result.pmrRedemptionDate, pos)
    of 202: parseFloat(s, result.pmrStrikePrice, pos)
    of 947: parseStr(s, result.pmrStrikeCurrency, pos)
    of 206: parseChar(s, result.pmrOptAttribute, pos)
    of 231: parseStr(s, result.pmrContractMultiplier, pos)
    of 223: parseFloat(s, result.pmrCouponRate, pos)
    of 207: parseStr(s, result.pmrSecurityExchange, pos)
    of 106: parseStr(s, result.pmrIssuer, pos)
    of 348: parseUInt(s, result.pmrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.pmrEncodedIssuer, pos)
    of 107: parseStr(s, result.pmrSecurityDesc, pos)
    of 350: parseUInt(s, result.pmrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.pmrEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.pmrPool, pos)
    of 667: parseStr(s, result.pmrContractSettlMonth, pos)
    of 875: parseInt(s, result.pmrCPProgram, pos)
    of 876: parseStr(s, result.pmrCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.pmrNoEvents, pos)
    of 873: parseStr(s, result.pmrDatedDate, pos)
    of 874: parseStr(s, result.pmrInterestAccrualDate, pos)
    of 15: parseStr(s, result.pmrCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.pmrNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.pmrNoUnderlyings, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.pmrNoTradingSessions, pos)
    of 60: parseStr(s, result.pmrTransactTime, pos)
    of 702: skipValue(s, pos); parseNoPositions(s, result.pmrNoPositions, pos)
    of 718: parseInt(s, result.pmrAdjustmentType, pos)
    of 719: parseBool(s, result.pmrContraryInstructionIndicator, pos)
    of 720: parseBool(s, result.pmrPriorSpreadIndicator, pos)
    of 834: parseFloat(s, result.pmrThresholdAmount, pos)
    of 58: parseStr(s, result.pmrText, pos)
    of 354: parseUInt(s, result.pmrEncodedTextLen, pos)
    of 355: parseStr(s, result.pmrEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsePositionMaintenanceReport(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AM", "PositionMaintenanceReport"))
  result.msgType = PositionMaintenanceReport
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
    of 721: parseStr(s, result.pmrPosMaintRptID, pos)
    of 709: parseInt(s, result.pmrPosTransType, pos)
    of 710: parseStr(s, result.pmrPosReqID, pos)
    of 712: parseInt(s, result.pmrPosMaintAction, pos)
    of 713: parseStr(s, result.pmrOrigPosReqRefID, pos)
    of 722: parseInt(s, result.pmrPosMaintStatus, pos)
    of 723: parseInt(s, result.pmrPosMaintResult, pos)
    of 715: parseStr(s, result.pmrClearingBusinessDate, pos)
    of 716: parseStr(s, result.pmrSettlSessID, pos)
    of 717: parseStr(s, result.pmrSettlSessSubID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.pmrNoPartyIDs, pos)
    of 1: parseStr(s, result.pmrAccount, pos)
    of 660: parseInt(s, result.pmrAcctIDSource, pos)
    of 581: parseInt(s, result.pmrAccountType, pos)
    of 55: parseStr(s, result.pmrSymbol, pos)
    of 65: parseStr(s, result.pmrSymbolSfx, pos)
    of 48: parseStr(s, result.pmrSecurityID, pos)
    of 22: parseStr(s, result.pmrSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.pmrNoSecurityAltID, pos)
    of 460: parseInt(s, result.pmrProduct, pos)
    of 461: parseStr(s, result.pmrCFICode, pos)
    of 167: parseStr(s, result.pmrSecurityType, pos)
    of 762: parseStr(s, result.pmrSecuritySubType, pos)
    of 200: parseStr(s, result.pmrMaturityMonthYear, pos)
    of 541: parseStr(s, result.pmrMaturityDate, pos)
    of 201: parseInt(s, result.pmrPutOrCall, pos)
    of 224: parseStr(s, result.pmrCouponPaymentDate, pos)
    of 225: parseStr(s, result.pmrIssueDate, pos)
    of 239: parseStr(s, result.pmrRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.pmrRepurchaseTerm, pos)
    of 227: parseFloat(s, result.pmrRepurchaseRate, pos)
    of 228: parseStr(s, result.pmrFactor, pos)
    of 255: parseStr(s, result.pmrCreditRating, pos)
    of 543: parseStr(s, result.pmrInstrRegistry, pos)
    of 470: parseStr(s, result.pmrCountryOfIssue, pos)
    of 471: parseStr(s, result.pmrStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.pmrLocaleOfIssue, pos)
    of 240: parseStr(s, result.pmrRedemptionDate, pos)
    of 202: parseFloat(s, result.pmrStrikePrice, pos)
    of 947: parseStr(s, result.pmrStrikeCurrency, pos)
    of 206: parseChar(s, result.pmrOptAttribute, pos)
    of 231: parseStr(s, result.pmrContractMultiplier, pos)
    of 223: parseFloat(s, result.pmrCouponRate, pos)
    of 207: parseStr(s, result.pmrSecurityExchange, pos)
    of 106: parseStr(s, result.pmrIssuer, pos)
    of 348: parseUInt(s, result.pmrEncodedIssuerLen, pos)
    of 349: parseStr(s, result.pmrEncodedIssuer, pos)
    of 107: parseStr(s, result.pmrSecurityDesc, pos)
    of 350: parseUInt(s, result.pmrEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.pmrEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.pmrPool, pos)
    of 667: parseStr(s, result.pmrContractSettlMonth, pos)
    of 875: parseInt(s, result.pmrCPProgram, pos)
    of 876: parseStr(s, result.pmrCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.pmrNoEvents, pos)
    of 873: parseStr(s, result.pmrDatedDate, pos)
    of 874: parseStr(s, result.pmrInterestAccrualDate, pos)
    of 15: parseStr(s, result.pmrCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.pmrNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.pmrNoUnderlyings, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.pmrNoTradingSessions, pos)
    of 60: parseStr(s, result.pmrTransactTime, pos)
    of 702: skipValue(s, pos); parseNoPositions(s, result.pmrNoPositions, pos)
    of 753: skipValue(s, pos); parseNoPosAmt(s, result.pmrNoPosAmt, pos)
    of 718: parseInt(s, result.pmrAdjustmentType, pos)
    of 834: parseFloat(s, result.pmrThresholdAmount, pos)
    of 58: parseStr(s, result.pmrText, pos)
    of 354: parseUInt(s, result.pmrEncodedTextLen, pos)
    of 355: parseStr(s, result.pmrEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseRequestForPositions(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AN", "RequestForPositions"))
  result.msgType = RequestForPositions
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
    of 710: parseStr(s, result.rfpPosReqID, pos)
    of 724: parseInt(s, result.rfpPosReqType, pos)
    of 573: parseChar(s, result.rfpMatchStatus, pos)
    of 263: parseChar(s, result.rfpSubscriptionRequestType, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.rfpNoPartyIDs, pos)
    of 1: parseStr(s, result.rfpAccount, pos)
    of 660: parseInt(s, result.rfpAcctIDSource, pos)
    of 581: parseInt(s, result.rfpAccountType, pos)
    of 55: parseStr(s, result.rfpSymbol, pos)
    of 65: parseStr(s, result.rfpSymbolSfx, pos)
    of 48: parseStr(s, result.rfpSecurityID, pos)
    of 22: parseStr(s, result.rfpSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.rfpNoSecurityAltID, pos)
    of 460: parseInt(s, result.rfpProduct, pos)
    of 461: parseStr(s, result.rfpCFICode, pos)
    of 167: parseStr(s, result.rfpSecurityType, pos)
    of 762: parseStr(s, result.rfpSecuritySubType, pos)
    of 200: parseStr(s, result.rfpMaturityMonthYear, pos)
    of 541: parseStr(s, result.rfpMaturityDate, pos)
    of 201: parseInt(s, result.rfpPutOrCall, pos)
    of 224: parseStr(s, result.rfpCouponPaymentDate, pos)
    of 225: parseStr(s, result.rfpIssueDate, pos)
    of 239: parseStr(s, result.rfpRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.rfpRepurchaseTerm, pos)
    of 227: parseFloat(s, result.rfpRepurchaseRate, pos)
    of 228: parseStr(s, result.rfpFactor, pos)
    of 255: parseStr(s, result.rfpCreditRating, pos)
    of 543: parseStr(s, result.rfpInstrRegistry, pos)
    of 470: parseStr(s, result.rfpCountryOfIssue, pos)
    of 471: parseStr(s, result.rfpStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.rfpLocaleOfIssue, pos)
    of 240: parseStr(s, result.rfpRedemptionDate, pos)
    of 202: parseFloat(s, result.rfpStrikePrice, pos)
    of 947: parseStr(s, result.rfpStrikeCurrency, pos)
    of 206: parseChar(s, result.rfpOptAttribute, pos)
    of 231: parseStr(s, result.rfpContractMultiplier, pos)
    of 223: parseFloat(s, result.rfpCouponRate, pos)
    of 207: parseStr(s, result.rfpSecurityExchange, pos)
    of 106: parseStr(s, result.rfpIssuer, pos)
    of 348: parseUInt(s, result.rfpEncodedIssuerLen, pos)
    of 349: parseStr(s, result.rfpEncodedIssuer, pos)
    of 107: parseStr(s, result.rfpSecurityDesc, pos)
    of 350: parseUInt(s, result.rfpEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.rfpEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.rfpPool, pos)
    of 667: parseStr(s, result.rfpContractSettlMonth, pos)
    of 875: parseInt(s, result.rfpCPProgram, pos)
    of 876: parseStr(s, result.rfpCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.rfpNoEvents, pos)
    of 873: parseStr(s, result.rfpDatedDate, pos)
    of 874: parseStr(s, result.rfpInterestAccrualDate, pos)
    of 15: parseStr(s, result.rfpCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.rfpNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.rfpNoUnderlyings, pos)
    of 715: parseStr(s, result.rfpClearingBusinessDate, pos)
    of 716: parseStr(s, result.rfpSettlSessID, pos)
    of 717: parseStr(s, result.rfpSettlSessSubID, pos)
    of 386: skipValue(s, pos); parseNoTradingSessions(s, result.rfpNoTradingSessions, pos)
    of 60: parseStr(s, result.rfpTransactTime, pos)
    of 725: parseInt(s, result.rfpResponseTransportType, pos)
    of 726: parseStr(s, result.rfpResponseDestination, pos)
    of 58: parseStr(s, result.rfpText, pos)
    of 354: parseUInt(s, result.rfpEncodedTextLen, pos)
    of 355: parseStr(s, result.rfpEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseRequestForPositionsAck(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AO", "RequestForPositionsAck"))
  result.msgType = RequestForPositionsAck
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
    of 721: parseStr(s, result.rfpaPosMaintRptID, pos)
    of 710: parseStr(s, result.rfpaPosReqID, pos)
    of 727: parseInt(s, result.rfpaTotalNumPosReports, pos)
    of 325: parseBool(s, result.rfpaUnsolicitedIndicator, pos)
    of 728: parseInt(s, result.rfpaPosReqResult, pos)
    of 729: parseInt(s, result.rfpaPosReqStatus, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.rfpaNoPartyIDs, pos)
    of 1: parseStr(s, result.rfpaAccount, pos)
    of 660: parseInt(s, result.rfpaAcctIDSource, pos)
    of 581: parseInt(s, result.rfpaAccountType, pos)
    of 55: parseStr(s, result.rfpaSymbol, pos)
    of 65: parseStr(s, result.rfpaSymbolSfx, pos)
    of 48: parseStr(s, result.rfpaSecurityID, pos)
    of 22: parseStr(s, result.rfpaSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.rfpaNoSecurityAltID, pos)
    of 460: parseInt(s, result.rfpaProduct, pos)
    of 461: parseStr(s, result.rfpaCFICode, pos)
    of 167: parseStr(s, result.rfpaSecurityType, pos)
    of 762: parseStr(s, result.rfpaSecuritySubType, pos)
    of 200: parseStr(s, result.rfpaMaturityMonthYear, pos)
    of 541: parseStr(s, result.rfpaMaturityDate, pos)
    of 201: parseInt(s, result.rfpaPutOrCall, pos)
    of 224: parseStr(s, result.rfpaCouponPaymentDate, pos)
    of 225: parseStr(s, result.rfpaIssueDate, pos)
    of 239: parseStr(s, result.rfpaRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.rfpaRepurchaseTerm, pos)
    of 227: parseFloat(s, result.rfpaRepurchaseRate, pos)
    of 228: parseStr(s, result.rfpaFactor, pos)
    of 255: parseStr(s, result.rfpaCreditRating, pos)
    of 543: parseStr(s, result.rfpaInstrRegistry, pos)
    of 470: parseStr(s, result.rfpaCountryOfIssue, pos)
    of 471: parseStr(s, result.rfpaStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.rfpaLocaleOfIssue, pos)
    of 240: parseStr(s, result.rfpaRedemptionDate, pos)
    of 202: parseFloat(s, result.rfpaStrikePrice, pos)
    of 947: parseStr(s, result.rfpaStrikeCurrency, pos)
    of 206: parseChar(s, result.rfpaOptAttribute, pos)
    of 231: parseStr(s, result.rfpaContractMultiplier, pos)
    of 223: parseFloat(s, result.rfpaCouponRate, pos)
    of 207: parseStr(s, result.rfpaSecurityExchange, pos)
    of 106: parseStr(s, result.rfpaIssuer, pos)
    of 348: parseUInt(s, result.rfpaEncodedIssuerLen, pos)
    of 349: parseStr(s, result.rfpaEncodedIssuer, pos)
    of 107: parseStr(s, result.rfpaSecurityDesc, pos)
    of 350: parseUInt(s, result.rfpaEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.rfpaEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.rfpaPool, pos)
    of 667: parseStr(s, result.rfpaContractSettlMonth, pos)
    of 875: parseInt(s, result.rfpaCPProgram, pos)
    of 876: parseStr(s, result.rfpaCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.rfpaNoEvents, pos)
    of 873: parseStr(s, result.rfpaDatedDate, pos)
    of 874: parseStr(s, result.rfpaInterestAccrualDate, pos)
    of 15: parseStr(s, result.rfpaCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.rfpaNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.rfpaNoUnderlyings, pos)
    of 725: parseInt(s, result.rfpaResponseTransportType, pos)
    of 726: parseStr(s, result.rfpaResponseDestination, pos)
    of 58: parseStr(s, result.rfpaText, pos)
    of 354: parseUInt(s, result.rfpaEncodedTextLen, pos)
    of 355: parseStr(s, result.rfpaEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parsePositionReport(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AP", "PositionReport"))
  result.msgType = PositionReport
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
    of 721: parseStr(s, result.prPosMaintRptID, pos)
    of 710: parseStr(s, result.prPosReqID, pos)
    of 724: parseInt(s, result.prPosReqType, pos)
    of 263: parseChar(s, result.prSubscriptionRequestType, pos)
    of 727: parseInt(s, result.prTotalNumPosReports, pos)
    of 325: parseBool(s, result.prUnsolicitedIndicator, pos)
    of 728: parseInt(s, result.prPosReqResult, pos)
    of 715: parseStr(s, result.prClearingBusinessDate, pos)
    of 716: parseStr(s, result.prSettlSessID, pos)
    of 717: parseStr(s, result.prSettlSessSubID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.prNoPartyIDs, pos)
    of 1: parseStr(s, result.prAccount, pos)
    of 660: parseInt(s, result.prAcctIDSource, pos)
    of 581: parseInt(s, result.prAccountType, pos)
    of 55: parseStr(s, result.prSymbol, pos)
    of 65: parseStr(s, result.prSymbolSfx, pos)
    of 48: parseStr(s, result.prSecurityID, pos)
    of 22: parseStr(s, result.prSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.prNoSecurityAltID, pos)
    of 460: parseInt(s, result.prProduct, pos)
    of 461: parseStr(s, result.prCFICode, pos)
    of 167: parseStr(s, result.prSecurityType, pos)
    of 762: parseStr(s, result.prSecuritySubType, pos)
    of 200: parseStr(s, result.prMaturityMonthYear, pos)
    of 541: parseStr(s, result.prMaturityDate, pos)
    of 201: parseInt(s, result.prPutOrCall, pos)
    of 224: parseStr(s, result.prCouponPaymentDate, pos)
    of 225: parseStr(s, result.prIssueDate, pos)
    of 239: parseStr(s, result.prRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.prRepurchaseTerm, pos)
    of 227: parseFloat(s, result.prRepurchaseRate, pos)
    of 228: parseStr(s, result.prFactor, pos)
    of 255: parseStr(s, result.prCreditRating, pos)
    of 543: parseStr(s, result.prInstrRegistry, pos)
    of 470: parseStr(s, result.prCountryOfIssue, pos)
    of 471: parseStr(s, result.prStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.prLocaleOfIssue, pos)
    of 240: parseStr(s, result.prRedemptionDate, pos)
    of 202: parseFloat(s, result.prStrikePrice, pos)
    of 947: parseStr(s, result.prStrikeCurrency, pos)
    of 206: parseChar(s, result.prOptAttribute, pos)
    of 231: parseStr(s, result.prContractMultiplier, pos)
    of 223: parseFloat(s, result.prCouponRate, pos)
    of 207: parseStr(s, result.prSecurityExchange, pos)
    of 106: parseStr(s, result.prIssuer, pos)
    of 348: parseUInt(s, result.prEncodedIssuerLen, pos)
    of 349: parseStr(s, result.prEncodedIssuer, pos)
    of 107: parseStr(s, result.prSecurityDesc, pos)
    of 350: parseUInt(s, result.prEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.prEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.prPool, pos)
    of 667: parseStr(s, result.prContractSettlMonth, pos)
    of 875: parseInt(s, result.prCPProgram, pos)
    of 876: parseStr(s, result.prCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.prNoEvents, pos)
    of 873: parseStr(s, result.prDatedDate, pos)
    of 874: parseStr(s, result.prInterestAccrualDate, pos)
    of 15: parseStr(s, result.prCurrency, pos)
    of 730: parseFloat(s, result.prSettlPrice, pos)
    of 731: parseInt(s, result.prSettlPriceType, pos)
    of 734: parseFloat(s, result.prPriorSettlPrice, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.prNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.prNoUnderlyings, pos)
    of 702: skipValue(s, pos); parseNoPositions(s, result.prNoPositions, pos)
    of 753: skipValue(s, pos); parseNoPosAmt(s, result.prNoPosAmt, pos)
    of 506: parseChar(s, result.prRegistStatus, pos)
    of 743: parseStr(s, result.prDeliveryDate, pos)
    of 58: parseStr(s, result.prText, pos)
    of 354: parseUInt(s, result.prEncodedTextLen, pos)
    of 355: parseStr(s, result.prEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseTradeCaptureReportRequestAck(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AQ", "TradeCaptureReportRequestAck"))
  result.msgType = TradeCaptureReportRequestAck
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
    of 568: parseStr(s, result.tcrraTradeRequestID, pos)
    of 569: parseInt(s, result.tcrraTradeRequestType, pos)
    of 263: parseChar(s, result.tcrraSubscriptionRequestType, pos)
    of 748: parseInt(s, result.tcrraTotNumTradeReports, pos)
    of 749: parseInt(s, result.tcrraTradeRequestResult, pos)
    of 750: parseInt(s, result.tcrraTradeRequestStatus, pos)
    of 55: parseStr(s, result.tcrraSymbol, pos)
    of 65: parseStr(s, result.tcrraSymbolSfx, pos)
    of 48: parseStr(s, result.tcrraSecurityID, pos)
    of 22: parseStr(s, result.tcrraSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.tcrraNoSecurityAltID, pos)
    of 460: parseInt(s, result.tcrraProduct, pos)
    of 461: parseStr(s, result.tcrraCFICode, pos)
    of 167: parseStr(s, result.tcrraSecurityType, pos)
    of 762: parseStr(s, result.tcrraSecuritySubType, pos)
    of 200: parseStr(s, result.tcrraMaturityMonthYear, pos)
    of 541: parseStr(s, result.tcrraMaturityDate, pos)
    of 201: parseInt(s, result.tcrraPutOrCall, pos)
    of 224: parseStr(s, result.tcrraCouponPaymentDate, pos)
    of 225: parseStr(s, result.tcrraIssueDate, pos)
    of 239: parseStr(s, result.tcrraRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.tcrraRepurchaseTerm, pos)
    of 227: parseFloat(s, result.tcrraRepurchaseRate, pos)
    of 228: parseStr(s, result.tcrraFactor, pos)
    of 255: parseStr(s, result.tcrraCreditRating, pos)
    of 543: parseStr(s, result.tcrraInstrRegistry, pos)
    of 470: parseStr(s, result.tcrraCountryOfIssue, pos)
    of 471: parseStr(s, result.tcrraStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.tcrraLocaleOfIssue, pos)
    of 240: parseStr(s, result.tcrraRedemptionDate, pos)
    of 202: parseFloat(s, result.tcrraStrikePrice, pos)
    of 947: parseStr(s, result.tcrraStrikeCurrency, pos)
    of 206: parseChar(s, result.tcrraOptAttribute, pos)
    of 231: parseStr(s, result.tcrraContractMultiplier, pos)
    of 223: parseFloat(s, result.tcrraCouponRate, pos)
    of 207: parseStr(s, result.tcrraSecurityExchange, pos)
    of 106: parseStr(s, result.tcrraIssuer, pos)
    of 348: parseUInt(s, result.tcrraEncodedIssuerLen, pos)
    of 349: parseStr(s, result.tcrraEncodedIssuer, pos)
    of 107: parseStr(s, result.tcrraSecurityDesc, pos)
    of 350: parseUInt(s, result.tcrraEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.tcrraEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.tcrraPool, pos)
    of 667: parseStr(s, result.tcrraContractSettlMonth, pos)
    of 875: parseInt(s, result.tcrraCPProgram, pos)
    of 876: parseStr(s, result.tcrraCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.tcrraNoEvents, pos)
    of 873: parseStr(s, result.tcrraDatedDate, pos)
    of 874: parseStr(s, result.tcrraInterestAccrualDate, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.tcrraNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.tcrraNoLegs, pos)
    of 442: parseChar(s, result.tcrraMultiLegReportingType, pos)
    of 725: parseInt(s, result.tcrraResponseTransportType, pos)
    of 726: parseStr(s, result.tcrraResponseDestination, pos)
    of 58: parseStr(s, result.tcrraText, pos)
    of 354: parseUInt(s, result.tcrraEncodedTextLen, pos)
    of 355: parseStr(s, result.tcrraEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseTradeCaptureReportAck(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AR", "TradeCaptureReportAck"))
  result.msgType = TradeCaptureReportAck
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
    of 571: parseStr(s, result.tcraTradeReportID, pos)
    of 487: parseInt(s, result.tcraTradeReportTransType, pos)
    of 856: parseInt(s, result.tcraTradeReportType, pos)
    of 828: parseInt(s, result.tcraTrdType, pos)
    of 829: parseInt(s, result.tcraTrdSubType, pos)
    of 855: parseInt(s, result.tcraSecondaryTrdType, pos)
    of 830: parseStr(s, result.tcraTransferReason, pos)
    of 150: parseChar(s, result.tcraExecType, pos)
    of 572: parseStr(s, result.tcraTradeReportRefID, pos)
    of 881: parseStr(s, result.tcraSecondaryTradeReportRefID, pos)
    of 939: parseInt(s, result.tcraTrdRptStatus, pos)
    of 751: parseInt(s, result.tcraTradeReportRejectReason, pos)
    of 818: parseStr(s, result.tcraSecondaryTradeReportID, pos)
    of 263: parseChar(s, result.tcraSubscriptionRequestType, pos)
    of 820: parseStr(s, result.tcraTradeLinkID, pos)
    of 880: parseStr(s, result.tcraTrdMatchID, pos)
    of 17: parseStr(s, result.tcraExecID, pos)
    of 527: parseStr(s, result.tcraSecondaryExecID, pos)
    of 55: parseStr(s, result.tcraSymbol, pos)
    of 65: parseStr(s, result.tcraSymbolSfx, pos)
    of 48: parseStr(s, result.tcraSecurityID, pos)
    of 22: parseStr(s, result.tcraSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.tcraNoSecurityAltID, pos)
    of 460: parseInt(s, result.tcraProduct, pos)
    of 461: parseStr(s, result.tcraCFICode, pos)
    of 167: parseStr(s, result.tcraSecurityType, pos)
    of 762: parseStr(s, result.tcraSecuritySubType, pos)
    of 200: parseStr(s, result.tcraMaturityMonthYear, pos)
    of 541: parseStr(s, result.tcraMaturityDate, pos)
    of 201: parseInt(s, result.tcraPutOrCall, pos)
    of 224: parseStr(s, result.tcraCouponPaymentDate, pos)
    of 225: parseStr(s, result.tcraIssueDate, pos)
    of 239: parseStr(s, result.tcraRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.tcraRepurchaseTerm, pos)
    of 227: parseFloat(s, result.tcraRepurchaseRate, pos)
    of 228: parseStr(s, result.tcraFactor, pos)
    of 255: parseStr(s, result.tcraCreditRating, pos)
    of 543: parseStr(s, result.tcraInstrRegistry, pos)
    of 470: parseStr(s, result.tcraCountryOfIssue, pos)
    of 471: parseStr(s, result.tcraStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.tcraLocaleOfIssue, pos)
    of 240: parseStr(s, result.tcraRedemptionDate, pos)
    of 202: parseFloat(s, result.tcraStrikePrice, pos)
    of 947: parseStr(s, result.tcraStrikeCurrency, pos)
    of 206: parseChar(s, result.tcraOptAttribute, pos)
    of 231: parseStr(s, result.tcraContractMultiplier, pos)
    of 223: parseFloat(s, result.tcraCouponRate, pos)
    of 207: parseStr(s, result.tcraSecurityExchange, pos)
    of 106: parseStr(s, result.tcraIssuer, pos)
    of 348: parseUInt(s, result.tcraEncodedIssuerLen, pos)
    of 349: parseStr(s, result.tcraEncodedIssuer, pos)
    of 107: parseStr(s, result.tcraSecurityDesc, pos)
    of 350: parseUInt(s, result.tcraEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.tcraEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.tcraPool, pos)
    of 667: parseStr(s, result.tcraContractSettlMonth, pos)
    of 875: parseInt(s, result.tcraCPProgram, pos)
    of 876: parseStr(s, result.tcraCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.tcraNoEvents, pos)
    of 873: parseStr(s, result.tcraDatedDate, pos)
    of 874: parseStr(s, result.tcraInterestAccrualDate, pos)
    of 60: parseStr(s, result.tcraTransactTime, pos)
    of 768: skipValue(s, pos); parseNoTrdRegTimestamps(s, result.tcraNoTrdRegTimestamps, pos)
    of 725: parseInt(s, result.tcraResponseTransportType, pos)
    of 726: parseStr(s, result.tcraResponseDestination, pos)
    of 58: parseStr(s, result.tcraText, pos)
    of 354: parseUInt(s, result.tcraEncodedTextLen, pos)
    of 355: parseStr(s, result.tcraEncodedText, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.tcraNoLegs, pos)
    of 635: parseStr(s, result.tcraClearingFeeIndicator, pos)
    of 528: parseChar(s, result.tcraOrderCapacity, pos)
    of 529: parseStr(s, result.tcraOrderRestrictions, pos)
    of 582: parseInt(s, result.tcraCustOrderCapacity, pos)
    of 1: parseStr(s, result.tcraAccount, pos)
    of 660: parseInt(s, result.tcraAcctIDSource, pos)
    of 581: parseInt(s, result.tcraAccountType, pos)
    of 77: parseChar(s, result.tcraPositionEffect, pos)
    of 591: parseChar(s, result.tcraPreallocMethod, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.tcraNoAllocs, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseAllocationReport(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AS", "AllocationReport"))
  result.msgType = AllocationReport
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
    of 755: parseStr(s, result.arAllocReportID, pos)
    of 70: parseStr(s, result.arAllocID, pos)
    of 71: parseChar(s, result.arAllocTransType, pos)
    of 795: parseStr(s, result.arAllocReportRefID, pos)
    of 796: parseInt(s, result.arAllocCancReplaceReason, pos)
    of 793: parseStr(s, result.arSecondaryAllocID, pos)
    of 794: parseInt(s, result.arAllocReportType, pos)
    of 87: parseInt(s, result.arAllocStatus, pos)
    of 88: parseInt(s, result.arAllocRejCode, pos)
    of 72: parseStr(s, result.arRefAllocID, pos)
    of 808: parseInt(s, result.arAllocIntermedReqType, pos)
    of 196: parseStr(s, result.arAllocLinkID, pos)
    of 197: parseInt(s, result.arAllocLinkType, pos)
    of 466: parseStr(s, result.arBookingRefID, pos)
    of 857: parseInt(s, result.arAllocNoOrdersType, pos)
    of 73: skipValue(s, pos); parseNoOrders(s, result.arNoOrders, pos)
    of 124: skipValue(s, pos); parseNoExecs(s, result.arNoExecs, pos)
    of 570: parseBool(s, result.arPreviouslyReported, pos)
    of 700: parseBool(s, result.arReversalIndicator, pos)
    of 574: parseStr(s, result.arMatchType, pos)
    of 54: parseChar(s, result.arSide, pos)
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
    of 668: parseInt(s, result.arDeliveryForm, pos)
    of 869: parseFloat(s, result.arPctAtRisk, pos)
    of 870: skipValue(s, pos); parseNoInstrAttrib(s, result.arNoInstrAttrib, pos)
    of 913: parseStr(s, result.arAgreementDesc, pos)
    of 914: parseStr(s, result.arAgreementID, pos)
    of 915: parseStr(s, result.arAgreementDate, pos)
    of 918: parseStr(s, result.arAgreementCurrency, pos)
    of 788: parseInt(s, result.arTerminationType, pos)
    of 916: parseStr(s, result.arStartDate, pos)
    of 917: parseStr(s, result.arEndDate, pos)
    of 919: parseInt(s, result.arDeliveryType, pos)
    of 898: parseFloat(s, result.arMarginRatio, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.arNoUnderlyings, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.arNoLegs, pos)
    of 53: parseInt(s, result.arQuantity, pos)
    of 854: parseInt(s, result.arQtyType, pos)
    of 30: parseStr(s, result.arLastMkt, pos)
    of 229: parseStr(s, result.arTradeOriginationDate, pos)
    of 336: parseStr(s, result.arTradingSessionID, pos)
    of 625: parseStr(s, result.arTradingSessionSubID, pos)
    of 423: parseInt(s, result.arPriceType, pos)
    of 6: parseFloat(s, result.arAvgPx, pos)
    of 860: parseFloat(s, result.arAvgParPx, pos)
    of 218: parseFloat(s, result.arSpread, pos)
    of 220: parseStr(s, result.arBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.arBenchmarkCurveName, pos)
    of 222: parseStr(s, result.arBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.arBenchmarkPrice, pos)
    of 663: parseInt(s, result.arBenchmarkPriceType, pos)
    of 699: parseStr(s, result.arBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.arBenchmarkSecurityIDSource, pos)
    of 15: parseStr(s, result.arCurrency, pos)
    of 74: parseInt(s, result.arAvgPxPrecision, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.arNoPartyIDs, pos)
    of 75: parseStr(s, result.arTradeDate, pos)
    of 60: parseStr(s, result.arTransactTime, pos)
    of 63: parseChar(s, result.arSettlType, pos)
    of 64: parseStr(s, result.arSettlDate, pos)
    of 775: parseInt(s, result.arBookingType, pos)
    of 381: parseUInt(s, result.arGrossTradeAmt, pos)
    of 238: parseUInt(s, result.arConcession, pos)
    of 237: parseUInt(s, result.arTotalTakedown, pos)
    of 118: parseUInt(s, result.arNetMoney, pos)
    of 77: parseChar(s, result.arPositionEffect, pos)
    of 754: parseBool(s, result.arAutoAcceptIndicator, pos)
    of 58: parseStr(s, result.arText, pos)
    of 354: parseUInt(s, result.arEncodedTextLen, pos)
    of 355: parseStr(s, result.arEncodedText, pos)
    of 157: parseInt(s, result.arNumDaysInterest, pos)
    of 158: parseFloat(s, result.arAccruedInterestRate, pos)
    of 159: parseUInt(s, result.arAccruedInterestAmt, pos)
    of 540: parseUInt(s, result.arTotalAccruedInterestAmt, pos)
    of 738: parseUInt(s, result.arInterestAtMaturity, pos)
    of 920: parseUInt(s, result.arEndAccruedInterestAmt, pos)
    of 921: parseUInt(s, result.arStartCash, pos)
    of 922: parseUInt(s, result.arEndCash, pos)
    of 650: parseBool(s, result.arLegalConfirm, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.arNoStipulations, pos)
    of 235: parseStr(s, result.arYieldType, pos)
    of 236: parseFloat(s, result.arYield, pos)
    of 701: parseStr(s, result.arYieldCalcDate, pos)
    of 696: parseStr(s, result.arYieldRedemptionDate, pos)
    of 697: parseFloat(s, result.arYieldRedemptionPrice, pos)
    of 698: parseInt(s, result.arYieldRedemptionPriceType, pos)
    of 892: parseInt(s, result.arTotNoAllocs, pos)
    of 893: parseBool(s, result.arLastFragment, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.arNoAllocs, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseAllocationReportAck(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AT", "AllocationReportAck"))
  result.msgType = AllocationReportAck
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
    of 755: parseStr(s, result.araAllocReportID, pos)
    of 70: parseStr(s, result.araAllocID, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.araNoPartyIDs, pos)
    of 793: parseStr(s, result.araSecondaryAllocID, pos)
    of 75: parseStr(s, result.araTradeDate, pos)
    of 60: parseStr(s, result.araTransactTime, pos)
    of 87: parseInt(s, result.araAllocStatus, pos)
    of 88: parseInt(s, result.araAllocRejCode, pos)
    of 794: parseInt(s, result.araAllocReportType, pos)
    of 808: parseInt(s, result.araAllocIntermedReqType, pos)
    of 573: parseChar(s, result.araMatchStatus, pos)
    of 460: parseInt(s, result.araProduct, pos)
    of 167: parseStr(s, result.araSecurityType, pos)
    of 58: parseStr(s, result.araText, pos)
    of 354: parseUInt(s, result.araEncodedTextLen, pos)
    of 355: parseStr(s, result.araEncodedText, pos)
    of 78: skipValue(s, pos); parseNoAllocs(s, result.araNoAllocs, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseConfirmationAck(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AU", "ConfirmationAck"))
  result.msgType = ConfirmationAck
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
    of 664: parseStr(s, result.caConfirmID, pos)
    of 75: parseStr(s, result.caTradeDate, pos)
    of 60: parseStr(s, result.caTransactTime, pos)
    of 940: parseInt(s, result.caAffirmStatus, pos)
    of 774: parseInt(s, result.caConfirmRejReason, pos)
    of 573: parseChar(s, result.caMatchStatus, pos)
    of 58: parseStr(s, result.caText, pos)
    of 354: parseUInt(s, result.caEncodedTextLen, pos)
    of 355: parseStr(s, result.caEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseSettlementInstructionRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AV", "SettlementInstructionRequest"))
  result.msgType = SettlementInstructionRequest
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
    of 791: parseStr(s, result.sirSettlInstReqID, pos)
    of 60: parseStr(s, result.sirTransactTime, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.sirNoPartyIDs, pos)
    of 79: parseStr(s, result.sirAllocAccount, pos)
    of 661: parseInt(s, result.sirAllocAcctIDSource, pos)
    of 54: parseChar(s, result.sirSide, pos)
    of 460: parseInt(s, result.sirProduct, pos)
    of 167: parseStr(s, result.sirSecurityType, pos)
    of 461: parseStr(s, result.sirCFICode, pos)
    of 168: parseStr(s, result.sirEffectiveTime, pos)
    of 126: parseStr(s, result.sirExpireTime, pos)
    of 779: parseStr(s, result.sirLastUpdateTime, pos)
    of 169: parseInt(s, result.sirStandInstDbType, pos)
    of 170: parseStr(s, result.sirStandInstDbName, pos)
    of 171: parseStr(s, result.sirStandInstDbID, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseAssignmentReport(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AW", "AssignmentReport"))
  result.msgType = AssignmentReport
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
    of 833: parseStr(s, result.arAsgnRptID, pos)
    of 832: parseInt(s, result.arTotNumAssignmentReports, pos)
    of 912: parseBool(s, result.arLastRptRequested, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.arNoPartyIDs, pos)
    of 1: parseStr(s, result.arAccount, pos)
    of 581: parseInt(s, result.arAccountType, pos)
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
    of 15: parseStr(s, result.arCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.arNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.arNoUnderlyings, pos)
    of 702: skipValue(s, pos); parseNoPositions(s, result.arNoPositions, pos)
    of 753: skipValue(s, pos); parseNoPosAmt(s, result.arNoPosAmt, pos)
    of 834: parseFloat(s, result.arThresholdAmount, pos)
    of 730: parseFloat(s, result.arSettlPrice, pos)
    of 731: parseInt(s, result.arSettlPriceType, pos)
    of 732: parseFloat(s, result.arUnderlyingSettlPrice, pos)
    of 432: parseStr(s, result.arExpireDate, pos)
    of 744: parseChar(s, result.arAssignmentMethod, pos)
    of 745: parseInt(s, result.arAssignmentUnit, pos)
    of 746: parseUInt(s, result.arOpenInterest, pos)
    of 747: parseChar(s, result.arExerciseMethod, pos)
    of 716: parseStr(s, result.arSettlSessID, pos)
    of 717: parseStr(s, result.arSettlSessSubID, pos)
    of 715: parseStr(s, result.arClearingBusinessDate, pos)
    of 58: parseStr(s, result.arText, pos)
    of 354: parseUInt(s, result.arEncodedTextLen, pos)
    of 355: parseStr(s, result.arEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseCollateralRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AX", "CollateralRequest"))
  result.msgType = CollateralRequest
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
    of 894: parseStr(s, result.crCollReqID, pos)
    of 895: parseInt(s, result.crCollAsgnReason, pos)
    of 60: parseStr(s, result.crTransactTime, pos)
    of 126: parseStr(s, result.crExpireTime, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.crNoPartyIDs, pos)
    of 1: parseStr(s, result.crAccount, pos)
    of 581: parseInt(s, result.crAccountType, pos)
    of 11: parseStr(s, result.crClOrdID, pos)
    of 37: parseStr(s, result.crOrderID, pos)
    of 198: parseStr(s, result.crSecondaryOrderID, pos)
    of 526: parseStr(s, result.crSecondaryClOrdID, pos)
    of 124: skipValue(s, pos); parseNoExecs(s, result.crNoExecs, pos)
    of 897: skipValue(s, pos); parseNoTrades(s, result.crNoTrades, pos)
    of 55: parseStr(s, result.crSymbol, pos)
    of 65: parseStr(s, result.crSymbolSfx, pos)
    of 48: parseStr(s, result.crSecurityID, pos)
    of 22: parseStr(s, result.crSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.crNoSecurityAltID, pos)
    of 460: parseInt(s, result.crProduct, pos)
    of 461: parseStr(s, result.crCFICode, pos)
    of 167: parseStr(s, result.crSecurityType, pos)
    of 762: parseStr(s, result.crSecuritySubType, pos)
    of 200: parseStr(s, result.crMaturityMonthYear, pos)
    of 541: parseStr(s, result.crMaturityDate, pos)
    of 201: parseInt(s, result.crPutOrCall, pos)
    of 224: parseStr(s, result.crCouponPaymentDate, pos)
    of 225: parseStr(s, result.crIssueDate, pos)
    of 239: parseStr(s, result.crRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.crRepurchaseTerm, pos)
    of 227: parseFloat(s, result.crRepurchaseRate, pos)
    of 228: parseStr(s, result.crFactor, pos)
    of 255: parseStr(s, result.crCreditRating, pos)
    of 543: parseStr(s, result.crInstrRegistry, pos)
    of 470: parseStr(s, result.crCountryOfIssue, pos)
    of 471: parseStr(s, result.crStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.crLocaleOfIssue, pos)
    of 240: parseStr(s, result.crRedemptionDate, pos)
    of 202: parseFloat(s, result.crStrikePrice, pos)
    of 947: parseStr(s, result.crStrikeCurrency, pos)
    of 206: parseChar(s, result.crOptAttribute, pos)
    of 231: parseStr(s, result.crContractMultiplier, pos)
    of 223: parseFloat(s, result.crCouponRate, pos)
    of 207: parseStr(s, result.crSecurityExchange, pos)
    of 106: parseStr(s, result.crIssuer, pos)
    of 348: parseUInt(s, result.crEncodedIssuerLen, pos)
    of 349: parseStr(s, result.crEncodedIssuer, pos)
    of 107: parseStr(s, result.crSecurityDesc, pos)
    of 350: parseUInt(s, result.crEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.crEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.crPool, pos)
    of 667: parseStr(s, result.crContractSettlMonth, pos)
    of 875: parseInt(s, result.crCPProgram, pos)
    of 876: parseStr(s, result.crCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.crNoEvents, pos)
    of 873: parseStr(s, result.crDatedDate, pos)
    of 874: parseStr(s, result.crInterestAccrualDate, pos)
    of 913: parseStr(s, result.crAgreementDesc, pos)
    of 914: parseStr(s, result.crAgreementID, pos)
    of 915: parseStr(s, result.crAgreementDate, pos)
    of 918: parseStr(s, result.crAgreementCurrency, pos)
    of 788: parseInt(s, result.crTerminationType, pos)
    of 916: parseStr(s, result.crStartDate, pos)
    of 917: parseStr(s, result.crEndDate, pos)
    of 919: parseInt(s, result.crDeliveryType, pos)
    of 898: parseFloat(s, result.crMarginRatio, pos)
    of 64: parseStr(s, result.crSettlDate, pos)
    of 53: parseInt(s, result.crQuantity, pos)
    of 854: parseInt(s, result.crQtyType, pos)
    of 15: parseStr(s, result.crCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.crNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.crNoUnderlyings, pos)
    of 899: parseUInt(s, result.crMarginExcess, pos)
    of 900: parseUInt(s, result.crTotalNetValue, pos)
    of 901: parseUInt(s, result.crCashOutstanding, pos)
    of 768: skipValue(s, pos); parseNoTrdRegTimestamps(s, result.crNoTrdRegTimestamps, pos)
    of 54: parseChar(s, result.crSide, pos)
    of 136: skipValue(s, pos); parseNoMiscFees(s, result.crNoMiscFees, pos)
    of 44: parseFloat(s, result.crPrice, pos)
    of 423: parseInt(s, result.crPriceType, pos)
    of 159: parseUInt(s, result.crAccruedInterestAmt, pos)
    of 920: parseUInt(s, result.crEndAccruedInterestAmt, pos)
    of 921: parseUInt(s, result.crStartCash, pos)
    of 922: parseUInt(s, result.crEndCash, pos)
    of 218: parseFloat(s, result.crSpread, pos)
    of 220: parseStr(s, result.crBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.crBenchmarkCurveName, pos)
    of 222: parseStr(s, result.crBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.crBenchmarkPrice, pos)
    of 663: parseInt(s, result.crBenchmarkPriceType, pos)
    of 699: parseStr(s, result.crBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.crBenchmarkSecurityIDSource, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.crNoStipulations, pos)
    of 336: parseStr(s, result.crTradingSessionID, pos)
    of 625: parseStr(s, result.crTradingSessionSubID, pos)
    of 716: parseStr(s, result.crSettlSessID, pos)
    of 717: parseStr(s, result.crSettlSessSubID, pos)
    of 715: parseStr(s, result.crClearingBusinessDate, pos)
    of 58: parseStr(s, result.crText, pos)
    of 354: parseUInt(s, result.crEncodedTextLen, pos)
    of 355: parseStr(s, result.crEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseCollateralAssignment(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AY", "CollateralAssignment"))
  result.msgType = CollateralAssignment
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
    of 902: parseStr(s, result.caCollAsgnID, pos)
    of 894: parseStr(s, result.caCollReqID, pos)
    of 895: parseInt(s, result.caCollAsgnReason, pos)
    of 903: parseInt(s, result.caCollAsgnTransType, pos)
    of 907: parseStr(s, result.caCollAsgnRefID, pos)
    of 60: parseStr(s, result.caTransactTime, pos)
    of 126: parseStr(s, result.caExpireTime, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.caNoPartyIDs, pos)
    of 1: parseStr(s, result.caAccount, pos)
    of 581: parseInt(s, result.caAccountType, pos)
    of 11: parseStr(s, result.caClOrdID, pos)
    of 37: parseStr(s, result.caOrderID, pos)
    of 198: parseStr(s, result.caSecondaryOrderID, pos)
    of 526: parseStr(s, result.caSecondaryClOrdID, pos)
    of 124: skipValue(s, pos); parseNoExecs(s, result.caNoExecs, pos)
    of 897: skipValue(s, pos); parseNoTrades(s, result.caNoTrades, pos)
    of 55: parseStr(s, result.caSymbol, pos)
    of 65: parseStr(s, result.caSymbolSfx, pos)
    of 48: parseStr(s, result.caSecurityID, pos)
    of 22: parseStr(s, result.caSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.caNoSecurityAltID, pos)
    of 460: parseInt(s, result.caProduct, pos)
    of 461: parseStr(s, result.caCFICode, pos)
    of 167: parseStr(s, result.caSecurityType, pos)
    of 762: parseStr(s, result.caSecuritySubType, pos)
    of 200: parseStr(s, result.caMaturityMonthYear, pos)
    of 541: parseStr(s, result.caMaturityDate, pos)
    of 201: parseInt(s, result.caPutOrCall, pos)
    of 224: parseStr(s, result.caCouponPaymentDate, pos)
    of 225: parseStr(s, result.caIssueDate, pos)
    of 239: parseStr(s, result.caRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.caRepurchaseTerm, pos)
    of 227: parseFloat(s, result.caRepurchaseRate, pos)
    of 228: parseStr(s, result.caFactor, pos)
    of 255: parseStr(s, result.caCreditRating, pos)
    of 543: parseStr(s, result.caInstrRegistry, pos)
    of 470: parseStr(s, result.caCountryOfIssue, pos)
    of 471: parseStr(s, result.caStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.caLocaleOfIssue, pos)
    of 240: parseStr(s, result.caRedemptionDate, pos)
    of 202: parseFloat(s, result.caStrikePrice, pos)
    of 947: parseStr(s, result.caStrikeCurrency, pos)
    of 206: parseChar(s, result.caOptAttribute, pos)
    of 231: parseStr(s, result.caContractMultiplier, pos)
    of 223: parseFloat(s, result.caCouponRate, pos)
    of 207: parseStr(s, result.caSecurityExchange, pos)
    of 106: parseStr(s, result.caIssuer, pos)
    of 348: parseUInt(s, result.caEncodedIssuerLen, pos)
    of 349: parseStr(s, result.caEncodedIssuer, pos)
    of 107: parseStr(s, result.caSecurityDesc, pos)
    of 350: parseUInt(s, result.caEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.caEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.caPool, pos)
    of 667: parseStr(s, result.caContractSettlMonth, pos)
    of 875: parseInt(s, result.caCPProgram, pos)
    of 876: parseStr(s, result.caCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.caNoEvents, pos)
    of 873: parseStr(s, result.caDatedDate, pos)
    of 874: parseStr(s, result.caInterestAccrualDate, pos)
    of 913: parseStr(s, result.caAgreementDesc, pos)
    of 914: parseStr(s, result.caAgreementID, pos)
    of 915: parseStr(s, result.caAgreementDate, pos)
    of 918: parseStr(s, result.caAgreementCurrency, pos)
    of 788: parseInt(s, result.caTerminationType, pos)
    of 916: parseStr(s, result.caStartDate, pos)
    of 917: parseStr(s, result.caEndDate, pos)
    of 919: parseInt(s, result.caDeliveryType, pos)
    of 898: parseFloat(s, result.caMarginRatio, pos)
    of 64: parseStr(s, result.caSettlDate, pos)
    of 53: parseInt(s, result.caQuantity, pos)
    of 854: parseInt(s, result.caQtyType, pos)
    of 15: parseStr(s, result.caCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.caNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.caNoUnderlyings, pos)
    of 899: parseUInt(s, result.caMarginExcess, pos)
    of 900: parseUInt(s, result.caTotalNetValue, pos)
    of 901: parseUInt(s, result.caCashOutstanding, pos)
    of 768: skipValue(s, pos); parseNoTrdRegTimestamps(s, result.caNoTrdRegTimestamps, pos)
    of 54: parseChar(s, result.caSide, pos)
    of 136: skipValue(s, pos); parseNoMiscFees(s, result.caNoMiscFees, pos)
    of 44: parseFloat(s, result.caPrice, pos)
    of 423: parseInt(s, result.caPriceType, pos)
    of 159: parseUInt(s, result.caAccruedInterestAmt, pos)
    of 920: parseUInt(s, result.caEndAccruedInterestAmt, pos)
    of 921: parseUInt(s, result.caStartCash, pos)
    of 922: parseUInt(s, result.caEndCash, pos)
    of 218: parseFloat(s, result.caSpread, pos)
    of 220: parseStr(s, result.caBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.caBenchmarkCurveName, pos)
    of 222: parseStr(s, result.caBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.caBenchmarkPrice, pos)
    of 663: parseInt(s, result.caBenchmarkPriceType, pos)
    of 699: parseStr(s, result.caBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.caBenchmarkSecurityIDSource, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.caNoStipulations, pos)
    of 172: parseInt(s, result.caSettlDeliveryType, pos)
    of 169: parseInt(s, result.caStandInstDbType, pos)
    of 170: parseStr(s, result.caStandInstDbName, pos)
    of 171: parseStr(s, result.caStandInstDbID, pos)
    of 85: skipValue(s, pos); parseNoDlvyInst(s, result.caNoDlvyInst, pos)
    of 336: parseStr(s, result.caTradingSessionID, pos)
    of 625: parseStr(s, result.caTradingSessionSubID, pos)
    of 716: parseStr(s, result.caSettlSessID, pos)
    of 717: parseStr(s, result.caSettlSessSubID, pos)
    of 715: parseStr(s, result.caClearingBusinessDate, pos)
    of 58: parseStr(s, result.caText, pos)
    of 354: parseUInt(s, result.caEncodedTextLen, pos)
    of 355: parseStr(s, result.caEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseCollateralResponse(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("AZ", "CollateralResponse"))
  result.msgType = CollateralResponse
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
    of 904: parseStr(s, result.crCollRespID, pos)
    of 902: parseStr(s, result.crCollAsgnID, pos)
    of 894: parseStr(s, result.crCollReqID, pos)
    of 895: parseInt(s, result.crCollAsgnReason, pos)
    of 903: parseInt(s, result.crCollAsgnTransType, pos)
    of 905: parseInt(s, result.crCollAsgnRespType, pos)
    of 906: parseInt(s, result.crCollAsgnRejectReason, pos)
    of 60: parseStr(s, result.crTransactTime, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.crNoPartyIDs, pos)
    of 1: parseStr(s, result.crAccount, pos)
    of 581: parseInt(s, result.crAccountType, pos)
    of 11: parseStr(s, result.crClOrdID, pos)
    of 37: parseStr(s, result.crOrderID, pos)
    of 198: parseStr(s, result.crSecondaryOrderID, pos)
    of 526: parseStr(s, result.crSecondaryClOrdID, pos)
    of 124: skipValue(s, pos); parseNoExecs(s, result.crNoExecs, pos)
    of 897: skipValue(s, pos); parseNoTrades(s, result.crNoTrades, pos)
    of 55: parseStr(s, result.crSymbol, pos)
    of 65: parseStr(s, result.crSymbolSfx, pos)
    of 48: parseStr(s, result.crSecurityID, pos)
    of 22: parseStr(s, result.crSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.crNoSecurityAltID, pos)
    of 460: parseInt(s, result.crProduct, pos)
    of 461: parseStr(s, result.crCFICode, pos)
    of 167: parseStr(s, result.crSecurityType, pos)
    of 762: parseStr(s, result.crSecuritySubType, pos)
    of 200: parseStr(s, result.crMaturityMonthYear, pos)
    of 541: parseStr(s, result.crMaturityDate, pos)
    of 201: parseInt(s, result.crPutOrCall, pos)
    of 224: parseStr(s, result.crCouponPaymentDate, pos)
    of 225: parseStr(s, result.crIssueDate, pos)
    of 239: parseStr(s, result.crRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.crRepurchaseTerm, pos)
    of 227: parseFloat(s, result.crRepurchaseRate, pos)
    of 228: parseStr(s, result.crFactor, pos)
    of 255: parseStr(s, result.crCreditRating, pos)
    of 543: parseStr(s, result.crInstrRegistry, pos)
    of 470: parseStr(s, result.crCountryOfIssue, pos)
    of 471: parseStr(s, result.crStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.crLocaleOfIssue, pos)
    of 240: parseStr(s, result.crRedemptionDate, pos)
    of 202: parseFloat(s, result.crStrikePrice, pos)
    of 947: parseStr(s, result.crStrikeCurrency, pos)
    of 206: parseChar(s, result.crOptAttribute, pos)
    of 231: parseStr(s, result.crContractMultiplier, pos)
    of 223: parseFloat(s, result.crCouponRate, pos)
    of 207: parseStr(s, result.crSecurityExchange, pos)
    of 106: parseStr(s, result.crIssuer, pos)
    of 348: parseUInt(s, result.crEncodedIssuerLen, pos)
    of 349: parseStr(s, result.crEncodedIssuer, pos)
    of 107: parseStr(s, result.crSecurityDesc, pos)
    of 350: parseUInt(s, result.crEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.crEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.crPool, pos)
    of 667: parseStr(s, result.crContractSettlMonth, pos)
    of 875: parseInt(s, result.crCPProgram, pos)
    of 876: parseStr(s, result.crCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.crNoEvents, pos)
    of 873: parseStr(s, result.crDatedDate, pos)
    of 874: parseStr(s, result.crInterestAccrualDate, pos)
    of 913: parseStr(s, result.crAgreementDesc, pos)
    of 914: parseStr(s, result.crAgreementID, pos)
    of 915: parseStr(s, result.crAgreementDate, pos)
    of 918: parseStr(s, result.crAgreementCurrency, pos)
    of 788: parseInt(s, result.crTerminationType, pos)
    of 916: parseStr(s, result.crStartDate, pos)
    of 917: parseStr(s, result.crEndDate, pos)
    of 919: parseInt(s, result.crDeliveryType, pos)
    of 898: parseFloat(s, result.crMarginRatio, pos)
    of 64: parseStr(s, result.crSettlDate, pos)
    of 53: parseInt(s, result.crQuantity, pos)
    of 854: parseInt(s, result.crQtyType, pos)
    of 15: parseStr(s, result.crCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.crNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.crNoUnderlyings, pos)
    of 899: parseUInt(s, result.crMarginExcess, pos)
    of 900: parseUInt(s, result.crTotalNetValue, pos)
    of 901: parseUInt(s, result.crCashOutstanding, pos)
    of 768: skipValue(s, pos); parseNoTrdRegTimestamps(s, result.crNoTrdRegTimestamps, pos)
    of 54: parseChar(s, result.crSide, pos)
    of 136: skipValue(s, pos); parseNoMiscFees(s, result.crNoMiscFees, pos)
    of 44: parseFloat(s, result.crPrice, pos)
    of 423: parseInt(s, result.crPriceType, pos)
    of 159: parseUInt(s, result.crAccruedInterestAmt, pos)
    of 920: parseUInt(s, result.crEndAccruedInterestAmt, pos)
    of 921: parseUInt(s, result.crStartCash, pos)
    of 922: parseUInt(s, result.crEndCash, pos)
    of 218: parseFloat(s, result.crSpread, pos)
    of 220: parseStr(s, result.crBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.crBenchmarkCurveName, pos)
    of 222: parseStr(s, result.crBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.crBenchmarkPrice, pos)
    of 663: parseInt(s, result.crBenchmarkPriceType, pos)
    of 699: parseStr(s, result.crBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.crBenchmarkSecurityIDSource, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.crNoStipulations, pos)
    of 58: parseStr(s, result.crText, pos)
    of 354: parseUInt(s, result.crEncodedTextLen, pos)
    of 355: parseStr(s, result.crEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseCollateralReport(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("BA", "CollateralReport"))
  result.msgType = CollateralReport
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
    of 908: parseStr(s, result.crCollRptID, pos)
    of 909: parseStr(s, result.crCollInquiryID, pos)
    of 910: parseInt(s, result.crCollStatus, pos)
    of 911: parseInt(s, result.crTotNumReports, pos)
    of 912: parseBool(s, result.crLastRptRequested, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.crNoPartyIDs, pos)
    of 1: parseStr(s, result.crAccount, pos)
    of 581: parseInt(s, result.crAccountType, pos)
    of 11: parseStr(s, result.crClOrdID, pos)
    of 37: parseStr(s, result.crOrderID, pos)
    of 198: parseStr(s, result.crSecondaryOrderID, pos)
    of 526: parseStr(s, result.crSecondaryClOrdID, pos)
    of 124: skipValue(s, pos); parseNoExecs(s, result.crNoExecs, pos)
    of 897: skipValue(s, pos); parseNoTrades(s, result.crNoTrades, pos)
    of 55: parseStr(s, result.crSymbol, pos)
    of 65: parseStr(s, result.crSymbolSfx, pos)
    of 48: parseStr(s, result.crSecurityID, pos)
    of 22: parseStr(s, result.crSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.crNoSecurityAltID, pos)
    of 460: parseInt(s, result.crProduct, pos)
    of 461: parseStr(s, result.crCFICode, pos)
    of 167: parseStr(s, result.crSecurityType, pos)
    of 762: parseStr(s, result.crSecuritySubType, pos)
    of 200: parseStr(s, result.crMaturityMonthYear, pos)
    of 541: parseStr(s, result.crMaturityDate, pos)
    of 201: parseInt(s, result.crPutOrCall, pos)
    of 224: parseStr(s, result.crCouponPaymentDate, pos)
    of 225: parseStr(s, result.crIssueDate, pos)
    of 239: parseStr(s, result.crRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.crRepurchaseTerm, pos)
    of 227: parseFloat(s, result.crRepurchaseRate, pos)
    of 228: parseStr(s, result.crFactor, pos)
    of 255: parseStr(s, result.crCreditRating, pos)
    of 543: parseStr(s, result.crInstrRegistry, pos)
    of 470: parseStr(s, result.crCountryOfIssue, pos)
    of 471: parseStr(s, result.crStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.crLocaleOfIssue, pos)
    of 240: parseStr(s, result.crRedemptionDate, pos)
    of 202: parseFloat(s, result.crStrikePrice, pos)
    of 947: parseStr(s, result.crStrikeCurrency, pos)
    of 206: parseChar(s, result.crOptAttribute, pos)
    of 231: parseStr(s, result.crContractMultiplier, pos)
    of 223: parseFloat(s, result.crCouponRate, pos)
    of 207: parseStr(s, result.crSecurityExchange, pos)
    of 106: parseStr(s, result.crIssuer, pos)
    of 348: parseUInt(s, result.crEncodedIssuerLen, pos)
    of 349: parseStr(s, result.crEncodedIssuer, pos)
    of 107: parseStr(s, result.crSecurityDesc, pos)
    of 350: parseUInt(s, result.crEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.crEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.crPool, pos)
    of 667: parseStr(s, result.crContractSettlMonth, pos)
    of 875: parseInt(s, result.crCPProgram, pos)
    of 876: parseStr(s, result.crCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.crNoEvents, pos)
    of 873: parseStr(s, result.crDatedDate, pos)
    of 874: parseStr(s, result.crInterestAccrualDate, pos)
    of 913: parseStr(s, result.crAgreementDesc, pos)
    of 914: parseStr(s, result.crAgreementID, pos)
    of 915: parseStr(s, result.crAgreementDate, pos)
    of 918: parseStr(s, result.crAgreementCurrency, pos)
    of 788: parseInt(s, result.crTerminationType, pos)
    of 916: parseStr(s, result.crStartDate, pos)
    of 917: parseStr(s, result.crEndDate, pos)
    of 919: parseInt(s, result.crDeliveryType, pos)
    of 898: parseFloat(s, result.crMarginRatio, pos)
    of 64: parseStr(s, result.crSettlDate, pos)
    of 53: parseInt(s, result.crQuantity, pos)
    of 854: parseInt(s, result.crQtyType, pos)
    of 15: parseStr(s, result.crCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.crNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.crNoUnderlyings, pos)
    of 899: parseUInt(s, result.crMarginExcess, pos)
    of 900: parseUInt(s, result.crTotalNetValue, pos)
    of 901: parseUInt(s, result.crCashOutstanding, pos)
    of 768: skipValue(s, pos); parseNoTrdRegTimestamps(s, result.crNoTrdRegTimestamps, pos)
    of 54: parseChar(s, result.crSide, pos)
    of 136: skipValue(s, pos); parseNoMiscFees(s, result.crNoMiscFees, pos)
    of 44: parseFloat(s, result.crPrice, pos)
    of 423: parseInt(s, result.crPriceType, pos)
    of 159: parseUInt(s, result.crAccruedInterestAmt, pos)
    of 920: parseUInt(s, result.crEndAccruedInterestAmt, pos)
    of 921: parseUInt(s, result.crStartCash, pos)
    of 922: parseUInt(s, result.crEndCash, pos)
    of 218: parseFloat(s, result.crSpread, pos)
    of 220: parseStr(s, result.crBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.crBenchmarkCurveName, pos)
    of 222: parseStr(s, result.crBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.crBenchmarkPrice, pos)
    of 663: parseInt(s, result.crBenchmarkPriceType, pos)
    of 699: parseStr(s, result.crBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.crBenchmarkSecurityIDSource, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.crNoStipulations, pos)
    of 172: parseInt(s, result.crSettlDeliveryType, pos)
    of 169: parseInt(s, result.crStandInstDbType, pos)
    of 170: parseStr(s, result.crStandInstDbName, pos)
    of 171: parseStr(s, result.crStandInstDbID, pos)
    of 85: skipValue(s, pos); parseNoDlvyInst(s, result.crNoDlvyInst, pos)
    of 336: parseStr(s, result.crTradingSessionID, pos)
    of 625: parseStr(s, result.crTradingSessionSubID, pos)
    of 716: parseStr(s, result.crSettlSessID, pos)
    of 717: parseStr(s, result.crSettlSessSubID, pos)
    of 715: parseStr(s, result.crClearingBusinessDate, pos)
    of 58: parseStr(s, result.crText, pos)
    of 354: parseUInt(s, result.crEncodedTextLen, pos)
    of 355: parseStr(s, result.crEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseCollateralInquiry(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("BB", "CollateralInquiry"))
  result.msgType = CollateralInquiry
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
    of 909: parseStr(s, result.ciCollInquiryID, pos)
    of 938: skipValue(s, pos); parseNoCollInquiryQualifier(s, result.ciNoCollInquiryQualifier, pos)
    of 263: parseChar(s, result.ciSubscriptionRequestType, pos)
    of 725: parseInt(s, result.ciResponseTransportType, pos)
    of 726: parseStr(s, result.ciResponseDestination, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.ciNoPartyIDs, pos)
    of 1: parseStr(s, result.ciAccount, pos)
    of 581: parseInt(s, result.ciAccountType, pos)
    of 11: parseStr(s, result.ciClOrdID, pos)
    of 37: parseStr(s, result.ciOrderID, pos)
    of 198: parseStr(s, result.ciSecondaryOrderID, pos)
    of 526: parseStr(s, result.ciSecondaryClOrdID, pos)
    of 124: skipValue(s, pos); parseNoExecs(s, result.ciNoExecs, pos)
    of 897: skipValue(s, pos); parseNoTrades(s, result.ciNoTrades, pos)
    of 55: parseStr(s, result.ciSymbol, pos)
    of 65: parseStr(s, result.ciSymbolSfx, pos)
    of 48: parseStr(s, result.ciSecurityID, pos)
    of 22: parseStr(s, result.ciSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.ciNoSecurityAltID, pos)
    of 460: parseInt(s, result.ciProduct, pos)
    of 461: parseStr(s, result.ciCFICode, pos)
    of 167: parseStr(s, result.ciSecurityType, pos)
    of 762: parseStr(s, result.ciSecuritySubType, pos)
    of 200: parseStr(s, result.ciMaturityMonthYear, pos)
    of 541: parseStr(s, result.ciMaturityDate, pos)
    of 201: parseInt(s, result.ciPutOrCall, pos)
    of 224: parseStr(s, result.ciCouponPaymentDate, pos)
    of 225: parseStr(s, result.ciIssueDate, pos)
    of 239: parseStr(s, result.ciRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.ciRepurchaseTerm, pos)
    of 227: parseFloat(s, result.ciRepurchaseRate, pos)
    of 228: parseStr(s, result.ciFactor, pos)
    of 255: parseStr(s, result.ciCreditRating, pos)
    of 543: parseStr(s, result.ciInstrRegistry, pos)
    of 470: parseStr(s, result.ciCountryOfIssue, pos)
    of 471: parseStr(s, result.ciStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.ciLocaleOfIssue, pos)
    of 240: parseStr(s, result.ciRedemptionDate, pos)
    of 202: parseFloat(s, result.ciStrikePrice, pos)
    of 947: parseStr(s, result.ciStrikeCurrency, pos)
    of 206: parseChar(s, result.ciOptAttribute, pos)
    of 231: parseStr(s, result.ciContractMultiplier, pos)
    of 223: parseFloat(s, result.ciCouponRate, pos)
    of 207: parseStr(s, result.ciSecurityExchange, pos)
    of 106: parseStr(s, result.ciIssuer, pos)
    of 348: parseUInt(s, result.ciEncodedIssuerLen, pos)
    of 349: parseStr(s, result.ciEncodedIssuer, pos)
    of 107: parseStr(s, result.ciSecurityDesc, pos)
    of 350: parseUInt(s, result.ciEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.ciEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.ciPool, pos)
    of 667: parseStr(s, result.ciContractSettlMonth, pos)
    of 875: parseInt(s, result.ciCPProgram, pos)
    of 876: parseStr(s, result.ciCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.ciNoEvents, pos)
    of 873: parseStr(s, result.ciDatedDate, pos)
    of 874: parseStr(s, result.ciInterestAccrualDate, pos)
    of 913: parseStr(s, result.ciAgreementDesc, pos)
    of 914: parseStr(s, result.ciAgreementID, pos)
    of 915: parseStr(s, result.ciAgreementDate, pos)
    of 918: parseStr(s, result.ciAgreementCurrency, pos)
    of 788: parseInt(s, result.ciTerminationType, pos)
    of 916: parseStr(s, result.ciStartDate, pos)
    of 917: parseStr(s, result.ciEndDate, pos)
    of 919: parseInt(s, result.ciDeliveryType, pos)
    of 898: parseFloat(s, result.ciMarginRatio, pos)
    of 64: parseStr(s, result.ciSettlDate, pos)
    of 53: parseInt(s, result.ciQuantity, pos)
    of 854: parseInt(s, result.ciQtyType, pos)
    of 15: parseStr(s, result.ciCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.ciNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.ciNoUnderlyings, pos)
    of 899: parseUInt(s, result.ciMarginExcess, pos)
    of 900: parseUInt(s, result.ciTotalNetValue, pos)
    of 901: parseUInt(s, result.ciCashOutstanding, pos)
    of 768: skipValue(s, pos); parseNoTrdRegTimestamps(s, result.ciNoTrdRegTimestamps, pos)
    of 54: parseChar(s, result.ciSide, pos)
    of 44: parseFloat(s, result.ciPrice, pos)
    of 423: parseInt(s, result.ciPriceType, pos)
    of 159: parseUInt(s, result.ciAccruedInterestAmt, pos)
    of 920: parseUInt(s, result.ciEndAccruedInterestAmt, pos)
    of 921: parseUInt(s, result.ciStartCash, pos)
    of 922: parseUInt(s, result.ciEndCash, pos)
    of 218: parseFloat(s, result.ciSpread, pos)
    of 220: parseStr(s, result.ciBenchmarkCurveCurrency, pos)
    of 221: parseStr(s, result.ciBenchmarkCurveName, pos)
    of 222: parseStr(s, result.ciBenchmarkCurvePoint, pos)
    of 662: parseFloat(s, result.ciBenchmarkPrice, pos)
    of 663: parseInt(s, result.ciBenchmarkPriceType, pos)
    of 699: parseStr(s, result.ciBenchmarkSecurityID, pos)
    of 761: parseStr(s, result.ciBenchmarkSecurityIDSource, pos)
    of 232: skipValue(s, pos); parseNoStipulations(s, result.ciNoStipulations, pos)
    of 172: parseInt(s, result.ciSettlDeliveryType, pos)
    of 169: parseInt(s, result.ciStandInstDbType, pos)
    of 170: parseStr(s, result.ciStandInstDbName, pos)
    of 171: parseStr(s, result.ciStandInstDbID, pos)
    of 85: skipValue(s, pos); parseNoDlvyInst(s, result.ciNoDlvyInst, pos)
    of 336: parseStr(s, result.ciTradingSessionID, pos)
    of 625: parseStr(s, result.ciTradingSessionSubID, pos)
    of 716: parseStr(s, result.ciSettlSessID, pos)
    of 717: parseStr(s, result.ciSettlSessSubID, pos)
    of 715: parseStr(s, result.ciClearingBusinessDate, pos)
    of 58: parseStr(s, result.ciText, pos)
    of 354: parseUInt(s, result.ciEncodedTextLen, pos)
    of 355: parseStr(s, result.ciEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseNetworkCounterpartySystemStatusRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("BC", "NetworkCounterpartySystemStatusRequest"))
  result.msgType = NetworkCounterpartySystemStatusRequest
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
    of 935: parseInt(s, result.ncssrNetworkRequestType, pos)
    of 933: parseStr(s, result.ncssrNetworkRequestID, pos)
    of 936: skipValue(s, pos); parseNoCompIDs(s, result.ncssrNoCompIDs, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseNetworkCounterpartySystemStatusResponse(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("BD", "NetworkCounterpartySystemStatusResponse"))
  result.msgType = NetworkCounterpartySystemStatusResponse
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
    of 937: parseInt(s, result.ncssrNetworkStatusResponseType, pos)
    of 933: parseStr(s, result.ncssrNetworkRequestID, pos)
    of 932: parseStr(s, result.ncssrNetworkResponseID, pos)
    of 934: parseStr(s, result.ncssrLastNetworkResponseID, pos)
    of 936: skipValue(s, pos); parseNoCompIDs(s, result.ncssrNoCompIDs, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseUserRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("BE", "UserRequest"))
  result.msgType = UserRequest
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
    of 923: parseStr(s, result.urUserRequestID, pos)
    of 924: parseInt(s, result.urUserRequestType, pos)
    of 553: parseStr(s, result.urUsername, pos)
    of 554: parseStr(s, result.urPassword, pos)
    of 925: parseStr(s, result.urNewPassword, pos)
    of 95: parseUInt(s, result.urRawDataLength, pos)
    of 96: parseStr(s, result.urRawData, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseUserResponse(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("BF", "UserResponse"))
  result.msgType = UserResponse
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
    of 923: parseStr(s, result.urUserRequestID, pos)
    of 553: parseStr(s, result.urUsername, pos)
    of 926: parseInt(s, result.urUserStatus, pos)
    of 927: parseStr(s, result.urUserStatusText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseCollateralInquiryAck(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("BG", "CollateralInquiryAck"))
  result.msgType = CollateralInquiryAck
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
    of 909: parseStr(s, result.ciaCollInquiryID, pos)
    of 945: parseInt(s, result.ciaCollInquiryStatus, pos)
    of 946: parseInt(s, result.ciaCollInquiryResult, pos)
    of 938: skipValue(s, pos); parseNoCollInquiryQualifier(s, result.ciaNoCollInquiryQualifier, pos)
    of 911: parseInt(s, result.ciaTotNumReports, pos)
    of 453: skipValue(s, pos); parseNoPartyIDs(s, result.ciaNoPartyIDs, pos)
    of 1: parseStr(s, result.ciaAccount, pos)
    of 581: parseInt(s, result.ciaAccountType, pos)
    of 11: parseStr(s, result.ciaClOrdID, pos)
    of 37: parseStr(s, result.ciaOrderID, pos)
    of 198: parseStr(s, result.ciaSecondaryOrderID, pos)
    of 526: parseStr(s, result.ciaSecondaryClOrdID, pos)
    of 124: skipValue(s, pos); parseNoExecs(s, result.ciaNoExecs, pos)
    of 897: skipValue(s, pos); parseNoTrades(s, result.ciaNoTrades, pos)
    of 55: parseStr(s, result.ciaSymbol, pos)
    of 65: parseStr(s, result.ciaSymbolSfx, pos)
    of 48: parseStr(s, result.ciaSecurityID, pos)
    of 22: parseStr(s, result.ciaSecurityIDSource, pos)
    of 454: skipValue(s, pos); parseNoSecurityAltID(s, result.ciaNoSecurityAltID, pos)
    of 460: parseInt(s, result.ciaProduct, pos)
    of 461: parseStr(s, result.ciaCFICode, pos)
    of 167: parseStr(s, result.ciaSecurityType, pos)
    of 762: parseStr(s, result.ciaSecuritySubType, pos)
    of 200: parseStr(s, result.ciaMaturityMonthYear, pos)
    of 541: parseStr(s, result.ciaMaturityDate, pos)
    of 201: parseInt(s, result.ciaPutOrCall, pos)
    of 224: parseStr(s, result.ciaCouponPaymentDate, pos)
    of 225: parseStr(s, result.ciaIssueDate, pos)
    of 239: parseStr(s, result.ciaRepoCollateralSecurityType, pos)
    of 226: parseInt(s, result.ciaRepurchaseTerm, pos)
    of 227: parseFloat(s, result.ciaRepurchaseRate, pos)
    of 228: parseStr(s, result.ciaFactor, pos)
    of 255: parseStr(s, result.ciaCreditRating, pos)
    of 543: parseStr(s, result.ciaInstrRegistry, pos)
    of 470: parseStr(s, result.ciaCountryOfIssue, pos)
    of 471: parseStr(s, result.ciaStateOrProvinceOfIssue, pos)
    of 472: parseStr(s, result.ciaLocaleOfIssue, pos)
    of 240: parseStr(s, result.ciaRedemptionDate, pos)
    of 202: parseFloat(s, result.ciaStrikePrice, pos)
    of 947: parseStr(s, result.ciaStrikeCurrency, pos)
    of 206: parseChar(s, result.ciaOptAttribute, pos)
    of 231: parseStr(s, result.ciaContractMultiplier, pos)
    of 223: parseFloat(s, result.ciaCouponRate, pos)
    of 207: parseStr(s, result.ciaSecurityExchange, pos)
    of 106: parseStr(s, result.ciaIssuer, pos)
    of 348: parseUInt(s, result.ciaEncodedIssuerLen, pos)
    of 349: parseStr(s, result.ciaEncodedIssuer, pos)
    of 107: parseStr(s, result.ciaSecurityDesc, pos)
    of 350: parseUInt(s, result.ciaEncodedSecurityDescLen, pos)
    of 351: parseStr(s, result.ciaEncodedSecurityDesc, pos)
    of 691: parseStr(s, result.ciaPool, pos)
    of 667: parseStr(s, result.ciaContractSettlMonth, pos)
    of 875: parseInt(s, result.ciaCPProgram, pos)
    of 876: parseStr(s, result.ciaCPRegType, pos)
    of 864: skipValue(s, pos); parseNoEvents(s, result.ciaNoEvents, pos)
    of 873: parseStr(s, result.ciaDatedDate, pos)
    of 874: parseStr(s, result.ciaInterestAccrualDate, pos)
    of 913: parseStr(s, result.ciaAgreementDesc, pos)
    of 914: parseStr(s, result.ciaAgreementID, pos)
    of 915: parseStr(s, result.ciaAgreementDate, pos)
    of 918: parseStr(s, result.ciaAgreementCurrency, pos)
    of 788: parseInt(s, result.ciaTerminationType, pos)
    of 916: parseStr(s, result.ciaStartDate, pos)
    of 917: parseStr(s, result.ciaEndDate, pos)
    of 919: parseInt(s, result.ciaDeliveryType, pos)
    of 898: parseFloat(s, result.ciaMarginRatio, pos)
    of 64: parseStr(s, result.ciaSettlDate, pos)
    of 53: parseInt(s, result.ciaQuantity, pos)
    of 854: parseInt(s, result.ciaQtyType, pos)
    of 15: parseStr(s, result.ciaCurrency, pos)
    of 555: skipValue(s, pos); parseNoLegs(s, result.ciaNoLegs, pos)
    of 711: skipValue(s, pos); parseNoUnderlyings(s, result.ciaNoUnderlyings, pos)
    of 336: parseStr(s, result.ciaTradingSessionID, pos)
    of 625: parseStr(s, result.ciaTradingSessionSubID, pos)
    of 716: parseStr(s, result.ciaSettlSessID, pos)
    of 717: parseStr(s, result.ciaSettlSessSubID, pos)
    of 715: parseStr(s, result.ciaClearingBusinessDate, pos)
    of 725: parseInt(s, result.ciaResponseTransportType, pos)
    of 726: parseStr(s, result.ciaResponseDestination, pos)
    of 58: parseStr(s, result.ciaText, pos)
    of 354: parseUInt(s, result.ciaEncodedTextLen, pos)
    of 355: parseStr(s, result.ciaEncodedText, pos)
    of 93: parseUInt(s, result.signatureLength, pos)
    of 89: parseStr(s, result.signature, pos)
    of 10: parseStr(s, result.checkSum, pos)
    else: skipValue(s, pos)

proc parseConfirmationRequest(s: string, result: var Fix44, pos: var int) =
  var
    t: uint16
  # result = Fix44(msgType: ("BH", "ConfirmationRequest"))
  result.msgType = ConfirmationRequest
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
    of 859: parseStr(s, result.crConfirmReqID, pos)
    of 773: parseInt(s, result.crConfirmType, pos)
    of 73: skipValue(s, pos); parseNoOrders(s, result.crNoOrders, pos)
    of 70: parseStr(s, result.crAllocID, pos)
    of 793: parseStr(s, result.crSecondaryAllocID, pos)
    of 467: parseStr(s, result.crIndividualAllocID, pos)
    of 60: parseStr(s, result.crTransactTime, pos)
    of 79: parseStr(s, result.crAllocAccount, pos)
    of 661: parseInt(s, result.crAllocAcctIDSource, pos)
    of 798: parseInt(s, result.crAllocAccountType, pos)
    of 58: parseStr(s, result.crText, pos)
    of 354: parseUInt(s, result.crEncodedTextLen, pos)
    of 355: parseStr(s, result.crEncodedText, pos)
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
      of "J": parseAllocationInstruction(s, result, pos)
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
      of "b": parseMassQuoteAcknowledgement(s, result, pos)
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
      of "n": parseXMLnonFIX(s, result, pos)
      of "o": parseRegistrationInstructions(s, result, pos)
      of "p": parseRegistrationInstructionsResponse(s, result, pos)
      of "q": parseOrderMassCancelRequest(s, result, pos)
      of "r": parseOrderMassCancelReport(s, result, pos)
      of "s": parseNewOrderCross(s, result, pos)
      of "t": parseCrossOrderCancelReplaceRequest(s, result, pos)
      of "u": parseCrossOrderCancelRequest(s, result, pos)
      of "v": parseSecurityTypeRequest(s, result, pos)
      of "w": parseSecurityTypes(s, result, pos)
      of "x": parseSecurityListRequest(s, result, pos)
      of "y": parseSecurityList(s, result, pos)
      of "z": parseDerivativeSecurityListRequest(s, result, pos)
      of "AA": parseDerivativeSecurityList(s, result, pos)
      of "AB": parseNewOrderMultileg(s, result, pos)
      of "AC": parseMultilegOrderCancelReplace(s, result, pos)
      of "AD": parseTradeCaptureReportRequest(s, result, pos)
      of "AE": parseTradeCaptureReport(s, result, pos)
      of "AF": parseOrderMassStatusRequest(s, result, pos)
      of "AG": parseQuoteRequestReject(s, result, pos)
      of "AH": parseRFQRequest(s, result, pos)
      of "AI": parseQuoteStatusReport(s, result, pos)
      of "AJ": parseQuoteResponse(s, result, pos)
      of "AK": parseConfirmation(s, result, pos)
      of "AL": parsePositionMaintenanceRequest(s, result, pos)
      of "AM": parsePositionMaintenanceReport(s, result, pos)
      of "AN": parseRequestForPositions(s, result, pos)
      of "AO": parseRequestForPositionsAck(s, result, pos)
      of "AP": parsePositionReport(s, result, pos)
      of "AQ": parseTradeCaptureReportRequestAck(s, result, pos)
      of "AR": parseTradeCaptureReportAck(s, result, pos)
      of "AS": parseAllocationReport(s, result, pos)
      of "AT": parseAllocationReportAck(s, result, pos)
      of "AU": parseConfirmationAck(s, result, pos)
      of "AV": parseSettlementInstructionRequest(s, result, pos)
      of "AW": parseAssignmentReport(s, result, pos)
      of "AX": parseCollateralRequest(s, result, pos)
      of "AY": parseCollateralAssignment(s, result, pos)
      of "AZ": parseCollateralResponse(s, result, pos)
      of "BA": parseCollateralReport(s, result, pos)
      of "BB": parseCollateralInquiry(s, result, pos)
      of "BC": parseNetworkCounterpartySystemStatusRequest(s, result, pos)
      of "BD": parseNetworkCounterpartySystemStatusResponse(s, result, pos)
      of "BE": parseUserRequest(s, result, pos)
      of "BF": parseUserResponse(s, result, pos)
      of "BG": parseCollateralInquiryAck(s, result, pos)
      of "BH": parseConfirmationRequest(s, result, pos)
    else: raise newException(ValueError, "unexpected header field: " & $t)

