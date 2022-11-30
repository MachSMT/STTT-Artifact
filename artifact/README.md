# Instructions on how to reproduce SMT-COMP Results

We assume you have the code installed. If not see the [REAME.md](asdf) in root. 

The benchmarks can be cloned from the following links:

https://clc-gitlab.cs.uiowa.edu:2443/mpreiner/smt-lib-non-incremental

https://clc-gitlab.cs.uiowa.edu:2443/mpreiner/smt-lib-incremental

These repos categorize the benchmarks by logics which are represented as submodules. You can initialize with `git submodule init --recursive`

For the 2019 competition, please checkout the following branch `r2019-05-09`. 
For the 2020 competition, please checkout the following branch:`r2020-05-24`.

We assume the benchmarks are stored in `/data/` with default names.

## Running Scripts
Please unpack the csv files in csv.tar.xz

```bash
tar -xf csv.tar.xz
```

Note: If your data was not prepared as assumed (i.e., in `/data/` with default names), you will need to modify the csv files appropriately. 

Please ensure you have checked out the right branch. 

Note: You can not simotaneously run on 2019 and 2020 out of box.

### Building
The main interface is `scripts/build.sh`. This script contains 4 loops to build machsmt on the 4 datasets. Please ensure only the years where the data is prepared is uncommented.

### Evaluating
The main interface is `scripts/eval.sh`. This script contains 4 loops to build machsmt on the 4 datasets. Please ensure only the years where the data is prepared is uncommented.

### Making Tables in Paper
On a succesful evaluation, MachSMT will produce a results directory. Please run `scripts/make_table.py results_directory` to produce the tables in the same process as in the paper.
