import newfix

import criterion
import tables
include fix44

var cfg = newDefaultConfig()
# cfg.verbose = false

benchmark cfg:
  let s = readLines("tests/fix1.log", 1)[0]

  proc fix1(): uint16 =
    let f = parseFix1(s)
    doAssert "FIX.4.2" == f.t8
    doAssert 101 == f.t9
    doAssert "114" == f.t10
    doAssert 99 == f.t34
    doAssert 'e' == f.t35
    doAssert "TTTTTTT6" == f.t49
    doAssert "20140709-14:43:12.934" == f.t52
    doAssert "6236.83333333" == f.t155
    doAssert "872" == f.t56
    doAssert "ARCA" == f.t57
    doAssert 'Y' == f.t77
    doAssert 0 == f.t98
    doAssert 60 == f.t108
    f.t108

  proc benchFix1Field() {.measure.} =
    blackBox fix1()

  proc fix2(): uint16 =
    let f = parseFix2(s)
    doAssert "FIX.4.2" == f.t8
    doAssert 101 == f.t9
    doAssert "114" == f.t10
    doAssert 99 == f.t34
    doAssert 'e' == f.t35
    doAssert "TTTTTTT6" == f.t49
    doAssert "20140709-14:43:12.934" == f.t52
    doAssert "6236.83333333" == f.t155
    doAssert "872" == f.t56
    doAssert "ARCA" == f.t57
    doAssert 'Y' == f.t77
    doAssert 0 == f.t98
    doAssert 60 == f.t108
    f.t108

  proc benchFix2Field() {.measure.} =
    blackBox fix2()

  proc fix3(): uint16 =
    let f = parseFix3(s)
    doAssert "FIX.4.2" == f.t8
    doAssert 101 == f.t9
    doAssert "114" == f.t10
    doAssert 99 == f.t34
    doAssert 'e' == f.t35
    doAssert "TTTTTTT6" == f.t49
    doAssert "20140709-14:43:12.934" == f.t52
    doAssert "6236.83333333" == f.t155
    doAssert "872" == f.t56
    doAssert "ARCA" == f.t57
    doAssert 'Y' == f.t77
    doAssert 0 == f.t98
    doAssert 60 == f.t108
    f.t108  

  proc benchFix3Field() {.measure.} =
    blackBox fix3()

  proc fix4(): uint16 =
    let f = parseFix4(s)
    doAssert "FIX.4.2" == f.t8
    doAssert 101 == f.t9
    doAssert "114" == f.t10
    doAssert 99 == f.t34
    doAssert 'e' == f.t35
    doAssert "TTTTTTT6" == f.t49
    doAssert "20140709-14:43:12.934" == f.t52
    doAssert "6236.83333333" == f.t155
    doAssert "872" == f.t56
    doAssert "ARCA" == f.t57
    doAssert 'Y' == f.t77
    doAssert 0 == f.t98
    doAssert 60 == f.t108
    f.t108

  proc benchFix4Field() {.measure.} =
    blackBox fix4()

  proc fix44(): int =
    let f = parseFix44(s)
    doAssert "FIX.4.2" == f.beginString
    doAssert 101 == f.bodyLength
    doAssert "114" == f.checkSum
    doAssert 99 == f.msgSeqNum
    doAssert mtELow == f.msgType
    doAssert "TTTTTTT6" == f.senderCompID
    doAssert "20140709-14:43:12.934" == f.sendingTime
    doAssert "6236.83333333" == f.elowSettlCurrFxRate
    doAssert "872" == f.targetCompID
    doAssert "ARCA" == f.elowTargetSubID
    doAssert 'Y' == f.elowPositionEffect
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

