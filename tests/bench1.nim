import newfix
include fix44

import criterion

var cfg = newDefaultConfig()
# cfg.verbose = false

benchmark cfg:
  let s = readLines("tests/fix1.log", 1)[0]

  proc fix1(): int =
    let f = parseFix1(s)
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

  proc benchFix1Field() {.measure.} =
    blackBox fix1()

  proc fix2(): int =
    let f = parseFix2(s)
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

  proc benchFix2Field() {.measure.} =
    blackBox fix2()

  proc fix3(): int =
    let f = parseFix3(s)
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
    let f = parseFix4(s)
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

  proc benchFix4Field() {.measure.} =
    blackBox fix4()

  proc fix44(): int =
    let f = parseFix44(s)
    # var pos = 21
    # let f = parsemtELow(s, "FIX.4.2", 101, pos)
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

  # proc benchFromFix3() {.measure.} =
  #   blackBox fix3f()

  # proc benchParseFix1() {.measure.} =
  #   discard parseFix1(s)

  # proc benchParseFix3() {.measure.} =
  #   discard parseFix3(s)

