import xmlparser, xmltree
import strtabs
import tables
import strutils
import sequtils
import os

type
  Components = OrderedTableRef[string, XmlNode]
  Gen = OrderedTableRef[string, string]
  FieldDesc = object
    num: int
    `type`: string 
  Fields = OrderedTableRef[string, FieldDesc]

var groups = OrderedTableRef[string, Gen]()

proc genMsg(m: XmlNode, fields: Fields, components: Components): Gen

proc genGroup(g: XmlNode, fields: Fields, components: Components) =
  let generated = genMsg(g, fields, components)
  if g.attrs["name"] in groups:
    for k, v in generated:
      groups[g.attrs["name"]][k] = v
      if v.startsWith "seq[":
        let a = groups[k]
        groups.del k
        groups[k] = a
  else:
    groups[g.attrs["name"]] = generated

proc normType(t: string): string =
  case t
  of "BOOLEAN": return "bool"
  of "INT": return "int"
  of "QTY", "AMT", "SEQNUM", "LENGTH", "DAYOFMONTH": return "uint"
  of "PRICE", "PERCENTAGE", "PRICEOFFSET": return "float"
  of "FLOAT", "STRING", "CURRENCY", "EXCHANGE", "COUNTRY": return "string"
  of "UTCTIMESTAMP", "DATA", "LOCALMKTDATE", "MONTHYEAR", "MULTIPLEVALUESTRING", "UTCDATEONLY", "UTCTIMEONLY", "UTCDATE": return "string"
  of "TZTIMEONLY", "MULTIPLECHARVALUE", "MULTIPLESTRINGVALUE", "TZTIMESTAMP": return "string"
  of "CHAR": return "char"
  else: raise newException(ValueError, "Unknown type: " & t)
    # t.toLowerAscii()

proc genMsg(m: XmlNode, fields: Fields, components: Components): Gen =
  result = newOrderedTable[string, string]()
  for c in m:
    case c.tag
    of "field":
      result[c.attrs["name"]] = fields[c.attrs["name"]].`type`.normType()
    of "group":
      genGroup(c, fields, components)
      result[c.attrs["name"]] = "seq[" & $c.attrs["name"] & "]"
    of "component":
      for k, v in genMsg(components[c.attrs["name"]], fields, components):
        result[k] = v
    else:
        raise newException(ValueError, "Unknown MsgType: " & c.tag)
  # if m.attrs["name"] == "InstrmtLegExecGrp":
  #   echo "InstrmtLegExecGrp"
  #   echo result

proc genMsgs(xml: XmlNode, fields: Fields, components: Components): OrderedTableRef[string, Gen] =
  result = newOrderedTable[string, Gen]()
  for m in xml.child("messages"):
    let msgT = m.attrs["msgtype"]
    result[msgT] = genMsg(m, fields, components)

proc genHeader(xml: XmlNode, fields: Fields, components: Components): Gen =
  genMsg(xml.child("header"), fields, components)

proc genTrailer(xml: XmlNode, fields: Fields, components: Components): Gen =
  genMsg(xml.child("trailer"), fields, components)

proc genComponents(xml: XmlNode): Components =
  result = newOrderedTable[string, XmlNode]()
  for c in xml.child("components"):
    result[c.attrs["name"]] = c

proc genFields(xml: XmlNode): Fields =
  result = newOrderedTable[string, FieldDesc]()
  for f in xml.child("fields"):
    result[f.attrs["name"]] = FieldDesc(num: f.attrs["number"].parseInt(), `type`: f.attrs["type"])

proc uncapitalizeAscii(s: string): string =
  if s.len == 0: result = ""
  else: result = toLowerAscii(s[0]) & substr(s, 1)

proc mt(t: string): string =
  if t.len == 1 and t[0].isLowerAscii: "mt" & t.toUpperAscii() & "Low"
  else: "mt" & t.toUpperAscii()

proc field(f: string): string =
  let a = f.uncapitalizeAscii()
  if a == "yield":
    "`yield`"
  else:
    a

proc typeToParse(f, t, pref: string): string =
  case t
  of "string": return "parseStr(s, " & pref & "." & field(f) & ", pos)"
  of "int": return "parseInt(s, " & pref & "." & field(f) & ", pos)"
  of "uint": return "parseUInt(s, " & pref & "." & field(f) & ", pos)"
  of "float": return "parseFloat(s, " & pref & "." & field(f) & ", pos)"
  of "bool": return "parseBool(s, " & pref & "." & field(f) & ", pos)"
  of "char": return "parseChar(s, " & pref & "." & field(f) & ", pos)"
  elif t.startsWith "seq[":
    return "skipValue(s, pos); parse" & t[4..^2] & "(s, " & pref & "." & field(f) & ", pos)"
  else: raise newException(ValueError, "unknown type: " & t)

proc genParseGroupHead(n: string, gen: Gen, fields: Fields) =
  echo "proc parse", n, "(s: string, r: var seq[", n ,"], pos: var int)"
  echo()

proc genParseGroup(n: string, gen: Gen, fields: Fields) =
  echo "proc parse", n, "(s: string, r: var seq[", n ,"""], pos: var int) =
  var
    t, sep: uint16
    v: """, n, """

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
    case t"""
  for f, g in gen:
    echo "    of ", fields[f].num, ": ", typeToParse(f, g, "v")
  echo """
    else:
      r.add v
      pos = j
      return
"""

proc genParseMsgType(t: string, gen: Gen, name: string, header, trailer: Gen, fields: Fields) =
  echo "proc parse",mt(t),"(s: string, result: var ",name,""", pos: var int) =
  var
    t: uint16
  # result = """,name,"""(msgType: """,mt(t),""")
  result.msgType = """, mt(t), """

  let l = s.len
  while pos < l:
    parseTag(s, t, pos)
    case t"""
  for f, t in header:
    if f in ["BeginString", "BodyLength", "MsgType"]:
      continue
    echo "    of ", fields[f].num, ": ", typeToParse(f, t, "result")
  for f, tt in gen:
    let pref =
      if t[0] in {'0'..'9'}: "t" & mt(t)[2..^1]
      else: mt(t)[2..^1].toLowerAscii()
    echo "    of ", fields[f].num, ": ", typeToParse(field(pref & f), tt, "result")
  for f, t in trailer:
    echo "    of ", fields[f].num, ": ", typeToParse(f, t, "result")
  echo """    else: skipValue(s, pos)
"""

proc genParse(name: string, gen: OrderedTableRef[string, Gen], fields: Fields) =
  echo """
proc parse""",name,"""*(s: string): """,name,""" =
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
      case v35"""
  for t, _ in gen:
    echo "      of \"", t, "\": parse", mt(t) , "(s, result, pos)"
  echo """
    else: raise newException(ValueError, "unexpected header field: " & $t)
"""


proc genStruct(xml: XmlNode, name: string, fields: Fields, components: Components) =
  let header = genHeader(xml, fields, components)
  let trailer = genTrailer(xml, fields, components)
  let generated = genMsgs(xml, fields, components)

  # return

  echo "include parsefix"
  echo()
  echo "type"

  for n, g in groups:
    echo "  ", n, "* = object"
    for f, t in g:
      echo "    ", field(f), "*: ", t
    echo()

  echo "  MsgTypeKind* = enum"
  echo "    ", toSeq(tables.keys(generated)).map(mt).join(", ")
  echo()

  echo "  ", name, "* = object"

  for t, g in header:
    if t == "MsgType":
      continue
    echo "    ", field(t), "*: ", g

  echo "    case msgType*: MsgTypeKind"
  for t, g in generated:
    echo "    of ", mt(t), ":"
    let pref =
      if t[0] in {'0'..'9'}: "t" & mt(t)[2..^1]
      else: mt(t)[2..^1].toLowerAscii()
    if g.len == 0:
      echo "      discard"
      continue
    for f, t in g:
      echo "      ", field(pref & f), "*: ", t

  for t, g in trailer:
    echo "    ", field(t), "*: ", g

  echo()

  for n, g in groups:
    genParseGroupHead(n, g, fields)

  for n, g in groups:
    genParseGroup(n, g, fields)

  for t, g in generated:
    genParseMsgType(t, g, name, header, trailer, fields)

  genParse(name, generated, fields)

proc main() =
  if os.paramCount() == 1 and os.paramStr(1).endsWith(".xml"):
    let xml = loadXml(os.paramStr(1))
    let ra = xml.attrs
    var name = ra["type"].toLowerAscii().capitalizeAscii() & ra["major"] & ra["minor"]
    if ra["servicepack"] != "0":
      name.add ra["servicepack"].capitalizeAscii()
    let fields = genFields(xml)
    let components = genComponents(xml)
    genStruct(xml, name, fields, components)
  else:
    echo "Use: ./genfix [SPEC.xml]"

main()
