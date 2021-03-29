# Fix static-typed parser

The parser generates effective structure and its parser from QuickFix's specs XML files

The xml's are pregenerated into packages inside the ``newfix`` package

## Usage
```nim
import newfix/fix44.nim  # For Full FIX44 specification, but better to optimize

let msg = "8=FIX4.4...." # Fix string
let fix = parseFix44(msg)
echo fix
```

## Benchmarks

During the implementation, I was looking at the numbers of CoralFIX Parser, which were mentioned line one of the fastest FIX parsers: http://www.coralblocks.com/index.php/coralfix-performance-numbers/ .

The article mentions hw: Intel i7 quad-core (4 x 3.50GHz) Ubuntu box overclocked to 4.50Ghz.

My hw: i5-7500 (not overclocked / win10)

|  Test                                    | CoralFIX  | NewFix      |
|------------------------------------------|-----------|-------------|
| Simple                                   | 481.55 ns | 315.7449 ns |
| Repeating groups                         | 1132 ns   | 581.9442 ns |
| Repeating groups inside repeating groups | 1932 ns   | 1045.8 ns   |


The examples of the CoralFIX is quite minimal. Please find much heavier benchmarks on MassQuote messages:
- 314-byte msg with 8 subgroup updates: 1570.5 ns
- 1010-byte msg with 30 subgroup updates: 6616 ns

## Optimization:

To optimize parsing speed it is better to remove unused fields from full specification like it have been done for ``spec/MINIMAL.xml' and PrimeXM specification in 'scpe/FIX44PXM.xml' already

```bash
$ nim c src/newfix/genfix.nim
$ src/newfix/genfix spec/FIX44MY.xml > fix44my.xml
```

Structure name from the top tags attributes: ``<fix type='FIX' major='4' minor='4' servicepack='min'>`` => ``Fix44Min``

If you know that you can optimize some types: for example hex or int instead of string - it possible to optimize separate fields manually in the generated module.



