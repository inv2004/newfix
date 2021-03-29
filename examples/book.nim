import newfix/fix44pxm

import strutils
import tables
import times
import plotly
import os
import jester
import osproc
import times

settings:
  port = 5000.Port
  bindAddr = "127.0.0.1"

type
  Channel = object
    feed: string
    bidS, askS: int
    bid, ask: float

  Report = object
    time: Time
    sym: string
    bestbid, mid, bestask: float

var s: array[100, string]
var ch: array[100, array[50, Channel]]
var counter = 0
var rep = newSeq[Report]()

proc genRep(m: Fix44Pxm, t302: uint) =
  var bestbid = 0.0
  var bestask = Inf
  for v in ch[t302]:
    if v.bid > bestbid:
      bestbid = v.bid
    if v.ask > 0.0 and v.ask < bestask:
      bestask = v.ask

  if bestbid == 0.0 or bestask == Inf:
    return
  let mid = (bestbid + bestask) / 2

  let time = parseTime(m.sendingTime, "yyyyMMdd-HH:mm:ss'.'fff", utc())   # TODO: slow

  rep.add Report(time: time, sym: s[t302], bestbid: bestbid, mid: mid, bestask: bestask)

proc processIClean(m: Fix44Pxm) =
  discard
  # for q in m.qRecs:
  #   if s[q.t302].len == 0:
  #     break
  #   for i in q.iRecs:
  #     ch[q.t302][i.t299].reset()

proc processI(m: Fix44Pxm, sym: string) =
  for q in m.mqNoQuoteSets:
    let symRef = q.quoteSetID.parseHexInt().uint
    if s[symRef].len == 0:
      break
    if sym.len > 0 and s[symRef] != sym:
      break
    for i in q.noQuoteEntries:
      let chRef = i.quoteEntryID.parseHexInt()

      if i.bidSize > 0:
        ch[symRef][chRef].bidS = i.bidSize.int
      elif i.bidSize == -1:
        ch[symRef][chRef].reset()

      if i.offerSize > 0:
        ch[symRef][chRef].askS = i.offerSize.int
      elif i.offerSize == -1:
        ch[symRef][chRef].reset()

      if i.issuer.len > 0:
        ch[symRef][chRef].feed = i.issuer

      if i.bidSpotRate > 0:
        ch[symRef][chRef].bid = i.bidSpotRate

      if i.offerSpotRate > 0:
        ch[symRef][chRef].ask = i.offerSpotRate
  
    genRep(m, symRef)

proc processW(m: Fix44Pxm) =
  s[m.mdsfrMDReqID.parseHexInt()] = m.mdsfrSymbol

proc processV(m: Fix44Pxm) =
  for v in m.mdrNoRelatedSym:
    s[m.mdrMDReqID.parseHexInt()] = v.symbol

proc plot(rep: seq[Report], sym, pattern: string) =
  var dmid = Trace[float](mode: PlotMode.Lines, `type`: PlotType.Scatter, name: "mid")
  var dbid = Trace[float](mode: PlotMode.Lines, `type`: PlotType.Scatter, name: "bestbid")
  var dask = Trace[float](mode: PlotMode.Lines, `type`: PlotType.Scatter, name: "bestask")
  for r in rep:
    if r.sym == sym:
      dmid.xs.add toUnixFloat(r.time)
      dmid.ys.add r.mid
      dbid.xs.add toUnixFloat(r.time)
      dbid.ys.add r.bestbid
      dask.xs.add toUnixFloat(r.time)
      dask.ys.add r.bestask

  var layout = Layout(title: sym & "( " & pattern & " )", width: 1200, height: 400,
                      xaxis: Axis(title:"timestamp"),
                      yaxis: Axis(title: "px"), autosize:true)
  var p = Plot[float](layout:layout, traces: @[dbid, dmid, dask])
  let htmlF = p.save("x.html")
  discard execProcess("gzip -f " & htmlF)
  echo "report: ", htmlF, ".gz"

proc processFile(f: string, sym = "") =
  echo "processing ", f
  for line in lines(f):
    let idx = line.find("8=FIX")
    if idx > 0:
      let m = parseFix44Pxm(line[idx..^1])
      counter.inc()
      let warn = line.contains("exceeded maximum number of streams")
      case m.msgType
      of MassQuote:
        if warn:
          processIClean m
        else:
          processI m, sym
      of MarketDataSnapshotFullRefresh: processW m
      of MarketDataRequest: processV m
      else: discard

# const originUrl = "http://localhost:5000"
# template respCors(code, header, message: untyped): untyped =
#   resp code, @{"Access-Control-Allow-Origin": originUrl} & header, message

router main:
  get "/":
    let body = readFile("x.html.gz")
    resp(Http200, @{"Content-Encoding": "gzip", "Content-Type": "Content-Type: text/html"}, body)
proc main() =
  if os.paramCount() == 2 and os.paramStr(1) == "bench":
    let start = cpuTime()
    processFile(os.paramStr(2))
    let duration = cpuTime() - start
    let perMsg = int((1000000000 * duration) / counter.float)
    echo "processed ", counter, " msgs in ", duration, " ( ", perMsg ,"ns per msg )"
  elif os.paramCount() == 1 and os.paramStr(1) == "plot":
    rep.add Report(time: getTime(), bestbid:1.1, mid:2.1, bestask:3.1)
    rep.add Report(time: getTime(), bestbid:1.2, mid:2.2, bestask:3.2)
    rep.add Report(time: getTime(), bestbid:1.3, mid:2.3, bestask:3.3)
    rep.add Report(time: getTime(), bestbid:1.1, mid:2.1, bestask:3.1)
    plot(rep, "", "")
  elif os.paramCount() >= 2:
    let pattern = paramStr 1
    let sym = paramStr 2
    let start = cpuTime()
    for f in walkFiles(pattern):
      processFile(f, sym)
    let duration = cpuTime() - start
    let perMsg = int((1000000000 * duration) / counter.float)
    echo "processed ", counter, " msgs in ", duration, " ( ", perMsg ,"ns per msg )"
    plot(rep, sym, pattern)
    var jester = initJester(main, settings = settings)
    jester.serve()
  else:
    echo "use ./book [date] [sym]     # for example ./book 20210309 EUR/JPY"
  
main()

