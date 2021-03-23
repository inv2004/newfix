import unittest

include fix44

let s = readLines("tests/fix1.log",2)[1]

test "fix44 parse":
  let f = parseFix44(s)
  echo f
  echo f.wSymbol
  for x in f.wNoMDEntries:
    echo x.mDEntryType, " ", x.mDEntrySize, ": ", x.mDEntryPx
