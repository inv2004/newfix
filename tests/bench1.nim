import newfix/concepts
import newfix/fix42min
import newfix/fix44pxm

import criterion

var cfg = newDefaultConfig()
# cfg.verbose = false

benchmark cfg:
  let s0 = readLines("tests/test1.fix", 5)[0]
  let s1 = readLines("tests/test1.fix", 5)[1]
  let s2 = readLines("tests/test1.fix", 5)[2]
  let s3 = readLines("tests/test1.fix", 5)[3]
  let s4 = readLines("tests/test1.fix", 5)[4]

  proc fix1(): int =
    let f = parseFix1(s0)
    doAssert "FIX.4.2" == f.t8
    doAssert 101 == f.t9
    doAssert "114" == f.t10
    doAssert 99 == f.t34
    doAssert "e" == f.t35
    doAssert "TTTTTTT6" == f.t49
    doAssert "20140709-14:43:12.934" == f.t52
    doAssert "6236.83333333" == f.t5555
    doAssert "872" == f.t56
    doAssert "ARCA" == f.t57
    doAssert 'Y' == f.t7777
    doAssert 0 == f.t98
    doAssert 60 == f.t108
    f.t108

  # proc benchFix1Field() {.measure.} =
  #   blackBox fix1()

  proc fix2(): int =
    let f = parseFix2(s0)
    doAssert "FIX.4.2" == f.t8
    doAssert 101 == f.t9
    doAssert "114" == f.t10
    doAssert 99 == f.t34
    doAssert "e" == f.t35
    doAssert "TTTTTTT6" == f.t49
    doAssert "20140709-14:43:12.934" == f.t52
    doAssert "6236.83333333" == f.t5555
    doAssert "872" == f.t56
    doAssert "ARCA" == f.t57
    doAssert 'Y' == f.t7777
    doAssert 0 == f.t98
    doAssert 60 == f.t108
    f.t108

  # proc benchFix2Field() {.measure.} =
  #   blackBox fix2()

  proc fix3(): int =
    let f = parseFix3(s0)
    doAssert "FIX.4.2" == f.t8
    doAssert 101 == f.t9
    doAssert "114" == f.t10
    doAssert 99 == f.t34
    doAssert "e" == f.t35
    doAssert "TTTTTTT6" == f.t49
    doAssert "20140709-14:43:12.934" == f.t52
    doAssert "6236.83333333" == f.t5555
    doAssert "872" == f.t56
    doAssert "ARCA" == f.t57
    doAssert 'Y' == f.t7777
    doAssert 0 == f.t98
    doAssert 60 == f.t108
    f.t108  

  proc benchFix3Field() {.measure.} =
    blackBox fix3()

  proc fix4(): int =
    let f = parseFix4(s0)
    doAssert "FIX.4.2" == f.t8
    doAssert 101 == f.t9
    doAssert "114" == f.t10
    doAssert 99 == f.t34
    doAssert "e" == f.t35
    doAssert "TTTTTTT6" == f.t49
    doAssert "20140709-14:43:12.934" == f.t52
    doAssert "6236.83333333" == f.t5555
    doAssert "872" == f.t56
    doAssert "ARCA" == f.t57
    doAssert 'Y' == f.t7777
    doAssert 0 == f.t98
    doAssert 60 == f.t108
    f.t108

  # proc benchFix4Field() {.measure.} =
  #   blackBox fix4()

  proc fix44(): int =
    let f = parseFix44Min(s0)
    doAssert "FIX.4.2" == f.beginString
    doAssert 101 == f.bodyLength
    doAssert "114" == f.checkSum
    doAssert 99 == f.msgSeqNum
    doAssert SecurityStatusRequest == f.msgType
    doAssert "TTTTTTT6" == f.senderCompID
    doAssert "20140709-14:43:12.934" == f.sendingTime
    doAssert "6236.83333333" == f.ssrUnknown1
    doAssert "872" == f.targetCompID
    doAssert "ARCA" == f.ssrTargetSubID
    doAssert 'Y' == f.ssrUnknown2
    doAssert 0 == f.ssrEncryptMethod
    doAssert 60 == f.ssrHeartBtInt
    f.ssrHeartBtInt

  proc benchFix44Field() {.measure.} =
    blackBox fix44()

  proc fix44grp(): int =
    let f = parseFix44Min(s1)
    doAssert "FIX.4.2" == f.beginString
    doAssert 157 == f.bodyLength
    doAssert "114" == f.checkSum
    doAssert 58 == f.msgSeqNum
    doAssert QuoteStatusRequest == f.msgType
    doAssert "TTTTTTT6" == f.senderCompID
    doAssert "20140709-15:01:26.209" == f.sendingTime
    doAssert "11855.33" == f.qsrUnknown1
    doAssert "44611" == f.targetCompID
    doAssert "ARCA" == f.qsrTargetSubID
    doAssert 'Y' == f.qsrUnknown2
    doAssert 0 == f.qsrEncryptMethod
    doAssert 60 == f.qsrHeartBtInt
    doAssert 2 == f.qsrNoRelatedSym.len
    f.qsrHeartBtInt

  proc benchFix44Group() {.measure.} =
    blackBox fix44grp()

  proc fix44subgrp(): int =
    let f = parseFix44Min(s2)
    doAssert "FIX.4.2" == f.beginString
    doAssert 272 == f.bodyLength
    doAssert "114" == f.checkSum
    doAssert 64 == f.msgSeqNum
    doAssert QuoteStatusRequest == f.msgType
    doAssert "TTTTTTT6" == f.senderCompID
    doAssert "20140709-19:38:42.653" == f.sendingTime
    doAssert "4592.00" == f.qsrUnknown1
    doAssert "63016" == f.targetCompID
    doAssert "ARCA" == f.qsrTargetSubID
    doAssert 'Y' == f.qsrUnknown2
    doAssert 0 == f.qsrEncryptMethod
    doAssert 60 == f.qsrHeartBtInt
    doAssert 2 == f.qsrNoRelatedSym.len
    f.qsrHeartBtInt

  proc benchFix44SubGroup() {.measure.} =
    blackBox fix44subgrp()

  proc fix44pxm(): int =
    let f = parseFix44Pxm(s3)
    doAssert "FIX.4.4" == f.beginString
    doAssert 290 == f.bodyLength
    doAssert "210" == f.checkSum
    doAssert 100200 == f.msgSeqNum
    doAssert MassQuote == f.msgType
    doAssert "AB123" == f.senderCompID
    doAssert "20110309-01:00:00.101" == f.sendingTime
    doAssert 1 == f.mqNoQuoteSets.len
    f.msgSeqNum.int

  proc benchFix44Pxm() {.measure.} =
    blackBox fix44pxm()

  proc fix44pxm1k(): int =
    let f = parseFix44Pxm(s4)
    doAssert "FIX.4.4" == f.beginString
    doAssert 986 == f.bodyLength
    doAssert "044" == f.checkSum
    doAssert 100210 == f.msgSeqNum
    doAssert MassQuote == f.msgType
    doAssert "AB123" == f.senderCompID
    doAssert "20110309-01:00:00.102" == f.sendingTime
    doAssert 5 == f.mqNoQuoteSets.len
    f.msgSeqNum.int

  proc benchFix44Pxm1k() {.measure.} =
    blackBox fix44pxm1k()

