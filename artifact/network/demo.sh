# wget benchmarks.tar.xz ##TODO -- @mathias, @aina, any suggestions where we should host all the benchmarks?

# machsmt_build -f data.csv ## first unpack

machsmt -l lib demo_benchmarks/secguru_2133.smt2 --feature-columns  4 1 16 100 0.2 5 0
machsmt -l lib demo_benchmarks/secguru_2642.smt2 --feature-columns  3 3 32 10 0.2 10 0.1
machsmt -l lib demo_benchmarks/secguru_395.smt2 --feature-columns  5 0 32 10 0.3 5 0.2
machsmt -l lib demo_benchmarks/secguru_254.smt2 --feature-columns  4 1 32 10 0.1 100 0.1
machsmt -l lib demo_benchmarks/secguru_3519.smt2 --feature-columns 3 2 32 10 0.5 10 0.1
machsmt -l lib demo_benchmarks/secguru_4035.smt2 --feature-columns 4 0 8 10 0 100 0.2
