include fix44

import criterion

var cfg = newDefaultConfig()
# cfg.verbose = false

benchmark cfg:
  let s = readLines("tests/fix1.log", 2)[1]

  proc fix44(): uint16 =
    let f = parseFix44(s)
    doAssert "FIX.4.4" == f.beginString
    f.bodyLength.uint16

  proc benchFix44Field() {.measure.} =
    blackBox fix44()

  # proc benchFromFix3() {.measure.} =
  #   blackBox fix3f()

  # proc benchParseFix1() {.measure.} =
  #   discard parseFix1(s)

  # proc benchParseFix3() {.measure.} =
  #   discard parseFix3(s)

