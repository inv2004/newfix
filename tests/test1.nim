import unittest

import newfix
include fix44

let s = readLines("tests/fix1.log",3)[0]

test "fix1 field":
  let f = parseFix1(s)
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
  let f = parseFix2(s)
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
  let f = parseFix3(s)
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
  echo fromFix3(f)

test "fix4 field":
  let f = parseFix4(s)
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
  let f = parseFix44(s)
  check "FIX.4.2" == f.beginString
  check 101 == f.bodyLength
  check "114" == f.checkSum
  check 99 == f.msgSeqNum
  check mtELow == f.msgType
  check "TTTTTTT6" == f.senderCompID
  check "20140709-14:43:12.934" == f.sendingTime
  check "6236.83333333" == f.elowUnknown1
  check "872" == f.targetCompID
  check "ARCA" == f.elowTargetSubID
  check 'Y' == f.elowUnknown2
  check 0 == f.elowEncryptMethod
  check 60 == f.elowHeartBtInt
