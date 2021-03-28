import newfix/concepts
include newfix/fix42min

import criterion

var cfg = newDefaultConfig()
# cfg.verbose = false

benchmark cfg:
  let s0 = readLines("tests/test1.fix", 3)[0]
  let s1 = readLines("tests/test1.fix", 3)[1]
  let s2 = readLines("tests/test1.fix", 3)[2]

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
    doAssert mtELow == f.msgType
    doAssert "TTTTTTT6" == f.senderCompID
    doAssert "20140709-14:43:12.934" == f.sendingTime
    doAssert "6236.83333333" == f.elowUnknown1
    doAssert "872" == f.targetCompID
    doAssert "ARCA" == f.elowTargetSubID
    doAssert 'Y' == f.elowUnknown2
    doAssert 0 == f.elowEncryptMethod
    doAssert 60 == f.elowHeartBtInt
    f.elowHeartBtInt

  proc benchFix44Field() {.measure.} =
    blackBox fix44()

  proc fix44grp(): int =
    let f = parseFix44Min(s1)
    doAssert "FIX.4.2" == f.beginString
    doAssert 157 == f.bodyLength
    doAssert "114" == f.checkSum
    doAssert 58 == f.msgSeqNum
    doAssert mtALow == f.msgType
    doAssert "TTTTTTT6" == f.senderCompID
    doAssert "20140709-15:01:26.209" == f.sendingTime
    doAssert "11855.33" == f.alowUnknown1
    doAssert "44611" == f.targetCompID
    doAssert "ARCA" == f.alowTargetSubID
    doAssert 'Y' == f.alowUnknown2
    doAssert 0 == f.alowEncryptMethod
    doAssert 60 == f.alowHeartBtInt
    doAssert 2 == f.alowNoRelatedSym.len
    f.elowHeartBtInt

  proc benchFix44Group() {.measure.} =
    blackBox fix44grp()

  proc fix44grpgrp(): int =
    let f = parseFix44Min(s2)
    doAssert "FIX.4.2" == f.beginString
    doAssert 272 == f.bodyLength
    doAssert "114" == f.checkSum
    doAssert 64 == f.msgSeqNum
    doAssert mtALow == f.msgType
    doAssert "TTTTTTT6" == f.senderCompID
    doAssert "20140709-19:38:42.653" == f.sendingTime
    doAssert "4592.00" == f.alowUnknown1
    doAssert "63016" == f.targetCompID
    doAssert "ARCA" == f.alowTargetSubID
    doAssert 'Y' == f.alowUnknown2
    doAssert 0 == f.alowEncryptMethod
    doAssert 60 == f.alowHeartBtInt
    doAssert 2 == f.alowNoRelatedSym.len
    f.elowHeartBtInt


