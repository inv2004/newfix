import unittest

import newfix/concepts
import newfix/fix42min
import newfix/fix44pxm

let s = readLines("tests/test1.fix",5)

test "fix1 field":
  let f = parseFix1(s[0])
  check "FIX.4.2" == f.t8
  check 101 == f.t9
  check "114" == f.t10
  check 99 == f.t34
  check "e" == f.t35
  check "TTTTTTT6" == f.t49
  check "20140709-14:43:12.934" == f.t52
  check "6236.83333333" == f.t5555
  check "872" == f.t56
  check "ARCA" == f.t57
  check 'Y' == f.t7777
  check 0 == f.t98
  check 60 == f.t108

test "fix2 field":
  let f = parseFix2(s[0])
  check "FIX.4.2" == f.t8
  check 101 == f.t9
  check "114" == f.t10
  check 99 == f.t34
  check "e" == f.t35
  check "TTTTTTT6" == f.t49
  check "20140709-14:43:12.934" == f.t52
  check "6236.83333333" == f.t5555
  check "872" == f.t56
  check "ARCA" == f.t57
  check 'Y' == f.t7777
  check 0 == f.t98
  check 60 == f.t108

test "fix3 field":
  let f = parseFix3(s[0])
  check "FIX.4.2" == f.t8
  check 101 == f.t9
  check "114" == f.t10
  check 99 == f.t34
  check "e" == f.t35
  check "TTTTTTT6" == f.t49
  check "20140709-14:43:12.934" == f.t52
  check "6236.83333333" == f.t5555
  check "872" == f.t56
  check "ARCA" == f.t57
  check 'Y' == f.t7777
  check 0 == f.t98
  check 60 == f.t108
  # echo fromFix3(f)

test "fix4 field":
  let f = parseFix4(s[0])
  check "FIX.4.2" == f.t8
  check 101 == f.t9
  check "114" == f.t10
  check 99 == f.t34
  check "e" == f.t35
  check "TTTTTTT6" == f.t49
  check "20140709-14:43:12.934" == f.t52
  check "6236.83333333" == f.t5555
  check "872" == f.t56
  check "ARCA" == f.t57
  check 'Y' == f.t7777
  check 0 == f.t98
  check 60 == f.t108

test "fix44 minimal":
  let f = parseFix44Min(s[0])
  check "FIX.4.2" == f.beginString
  check 101 == f.bodyLength
  check "114" == f.checkSum
  check 99 == f.msgSeqNum
  check SecurityStatusRequest == f.msgType
  check "TTTTTTT6" == f.senderCompID
  check "20140709-14:43:12.934" == f.sendingTime
  check "6236.83333333" == f.ssrUnknown1
  check "872" == f.targetCompID
  check "ARCA" == f.ssrTargetSubID
  check 'Y' == f.ssrUnknown2
  check 0 == f.ssrEncryptMethod
  check 60 == f.ssrHeartBtInt

test "fix44 group":
  let f = parseFix44Min(s[1])
  check "FIX.4.2" == f.beginString
  check 157 == f.bodyLength
  check "114" == f.checkSum
  check 58 == f.msgSeqNum
  check QuoteStatusRequest == f.msgType
  check "TTTTTTT6" == f.senderCompID
  check "20140709-15:01:26.209" == f.sendingTime
  check "11855.33" == f.qsrUnknown1
  check "44611" == f.targetCompID
  check "ARCA" == f.qsrTargetSubID
  check 'Y' == f.qsrUnknown2
  check 0 == f.qsrEncryptMethod
  check 60 == f.qsrHeartBtInt
  check 2 == f.qsrNoRelatedSym.len
  check fix42min.NoRelatedSym(symbol: "AAPL", settlDate: "65912", securityDesc: "blah1", noTestSubgroup: @[]) == f.qsrNoRelatedSym[0]
  check fix42min.NoRelatedSym(symbol: "IBM", settlDate: "56132", securityDesc: "blah2", noTestSubgroup: @[]) == f.qsrNoRelatedSym[1]

test "fix44 group+subgroup":
  let f = parseFix44Min(s[2])
  check "FIX.4.2" == f.beginString
  check 272 == f.bodyLength
  check "114" == f.checkSum
  check 64 == f.msgSeqNum
  check QuoteStatusRequest == f.msgType
  check "TTTTTTT6" == f.senderCompID
  check "20140709-19:38:42.653" == f.sendingTime
  check "4592.00" == f.qsrUnknown1
  check "63016" == f.targetCompID
  check "ARCA" == f.qsrTargetSubID
  check 'Y' == f.qsrUnknown2
  check 0 == f.qsrEncryptMethod
  check 60 == f.qsrHeartBtInt
  check 2 == f.qsrNoRelatedSym.len
  # echo f
  # check NoRelatedSym(symbol: "AAPL", settlDate: "65912", securityDesc: "blah1", noTestSubgroup: @[]) == f.alowNoRelatedSym[0]
  # check NoRelatedSym(symbol: "IBM", settlDate: "56132", securityDesc: "blah2", noTestSubgroup: @[]) == f.alowNoRelatedSym[1]

import sequtils
import math

test "fix44 pxm 314b":
  let f = parseFix44Pxm(s[3])
  check "FIX.4.4" == f.beginString
  check 290 == f.bodyLength
  check "210" == f.checkSum
  check 100200 == f.msgSeqNum
  check MassQuote == f.msgType
  check 8 == f.mqNoQuoteSets.mapIt(it.noQuoteEntries.len).sum()

test "fix44 pxm 1k":
  let f = parseFix44Pxm(s[4])
  check "FIX.4.4" == f.beginString
  check 986 == f.bodyLength
  check "044" == f.checkSum
  check 100210 == f.msgSeqNum
  check MassQuote == f.msgType
  check 30 == f.mqNoQuoteSets.mapIt(it.noQuoteEntries.len).sum()
