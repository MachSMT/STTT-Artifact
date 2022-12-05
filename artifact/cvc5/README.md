# Instructions on how to reproduce cvc5 results

Please also see `demo.sh`

## Setup

We assume you have the code installed. If not see the [REAME.md](https://github.com/MachSMT/STTT-Artifact/blob/master/README.md) in root. 

The benchmarks can be cloned from the following link:

https://clc-gitlab.cs.uiowa.edu:2443/mpreiner/smt-lib-non-incremental

These repos categorize the benchmarks by logics which are represented as submodules. You can initialize with `git submodule init --recursive`


This was evaluated with the 2021 SMT-LIB release. Please checkout the following branch:`r2021-05-26`.

We assume the benchmarks are stored in `/data/` with default names.

## Extracting Data
Please unpack the csv files in `data.tar.xz`

```bash
tar -xf data.tar.xz
```

Note: If your data was not prepared as assumed (i.e., in `/data/` with default names), you will need to modify the csv files appropriately. 

Please ensure you have checked out the right branch. 

We provide our trained models in `lib.tar.xz`. To unpack them, 

```bash
tar -xf lib.tar.xz
```

## Running MachSMT

To build machsmt with this dataset, please run the following command:

```bash
machsmt_build -f data.csv
```

To make predictions, use the main interface:

```bash
machsmt benchmark.smt2
```

