import unittest

import newfix
include fix44

let s = readLines("tests/fix1.log",3)

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
  echo fromFix3(f)

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
  let f = parseFix44(s[0])
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

test "fix44 group":
  let f = parseFix44(s[1])
  check "FIX.4.2" == f.beginString
  check 157 == f.bodyLength
  check "114" == f.checkSum
  check 58 == f.msgSeqNum
  check mtALow == f.msgType
  check "TTTTTTT6" == f.senderCompID
  check "20140709-15:01:26.209" == f.sendingTime
  check "11855.33" == f.alowUnknown1
  check "44611" == f.targetCompID
  check "ARCA" == f.alowTargetSubID
  check 'Y' == f.alowUnknown2
  check 0 == f.alowEncryptMethod
  check 60 == f.alowHeartBtInt
  check 2 == f.alowNoRelatedSym.len
  check NoRelatedSym(symbol: "AAPL", settlDate: "65912", securityDesc: "blah1", noTestSubgroup: @[]) == f.alowNoRelatedSym[0]
  check NoRelatedSym(symbol: "IBM", settlDate: "56132", securityDesc: "blah2", noTestSubgroup: @[]) == f.alowNoRelatedSym[1]

test "fix44 group+subgroup":
  let f = parseFix44(s[2])
  check "FIX.4.2" == f.beginString
  check 272 == f.bodyLength
  check "114" == f.checkSum
  check 64 == f.msgSeqNum
  check mtALow == f.msgType
  check "TTTTTTT6" == f.senderCompID
  check "20140709-19:38:42.653" == f.sendingTime
  check "4592.00" == f.alowUnknown1
  check "63016" == f.targetCompID
  check "ARCA" == f.alowTargetSubID
  check 'Y' == f.alowUnknown2
  check 0 == f.alowEncryptMethod
  check 60 == f.alowHeartBtInt
  check 2 == f.alowNoRelatedSym.len
  echo f
  # check NoRelatedSym(symbol: "AAPL", settlDate: "65912", securityDesc: "blah1", noTestSubgroup: @[]) == f.alowNoRelatedSym[0]
  # check NoRelatedSym(symbol: "IBM", settlDate: "56132", securityDesc: "blah2", noTestSubgroup: @[]) == f.alowNoRelatedSym[1]
