machsmt_build -f data.csv ## first unpack


for benchmark in $(ls demo_benchmarks/*.smt2)
do
    machsmt -l lib $benchmark
done
