# Instructions on how to reproduce Network Results with Domain Specific Features

Please also see `demo.sh`

## Setup

We assume you have the code installed. If not see the [REAME.md](https://github.com/MachSMT/STTT-Artifact/blob/master/README.md) in root. 

The benchmarks can be downloaded from the following link:

google.com

These benchmarks are synthetic, and based on the SecGuru tool by Microsoft Research.

We would like to thank Karthick Jayaraman for assisting us in making these.

These benchmarks have domain specific features. For the exact values of these domain specific features, see `benchmark.csv`

## Extracting Data
Please download the benchmark data and extract them.

```bash
wget google.com
tar -xf benchmark_info.tar.xz
tar -xf data.tar.xz
```

We provide our trained models in `lib.tar.xz`. To unpack them, 

```bash
tar -xf lib.tar.xz
```

## Running MachSMT

To build machsmt with this dataset, please run the following command:

```bash
machsmt_build -f data.csv --feature-cols n_rules n_additional_rules ip_range n_ports no_port_proba n_protocols no_protocol_proba
```

The `--feature-cols` flag will tell `machsmt` to use the values in these columns as features. These will have to be provided at runtime in the same order.

To make predictions, use the main interface:
```bash
machsmt -l lib benchmark.smt2 --feature-cols 0 0 0 0 0 0 0
```

Note, the zeros are placeholders for the domainspecific features.
