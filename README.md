<div align="center">
<img src="docs/images/Logo.png" alt="logo"></img>
</div>

# KML: A Machine Learning Framework for Operating Systems & Storage Systems

[![CircleCI](https://circleci.com/gh/sbu-fsl/kernel-ml/tree/main.svg?style=svg&circle-token=fc045b4ae0ae1cdb693a9e6b3f8dfda1aace460f)](https://circleci.com/gh/sbu-fsl/kernel-ml/tree/main)
[![codecov](https://codecov.io/gh/sbu-fsl/kernel-ml/branch/main/graph/badge.svg?token=NTTV1TCRN9)](https://codecov.io/gh/sbu-fsl/kernel-ml)

Storage systems and their OS components are designed to accommodate a wide variety of applications and dynamic workloads. Storage components inside the OS contain various heuristic algorithms to provide high performance and adaptability for different workloads. These heuristics may be tunable via parameters, and some system calls allow users to optimize their system performance. These parameters are often predetermined based on experiments with limited applications and hardware. Thus, storage systems often run with these predetermined and possibly suboptimal values. Tuning these parameters manually is impractical: one needs an adaptive, intelligent system to handle dynamic and complex workloads. Machine learning (ML) techniques are capable of recognizing patterns, abstracting them, and making predictions on new data. ML can be a key component to optimize and adapt storage systems. We propose KML, an ML framework for operating systems & storage systems. We implemented a prototype and demonstrated its capabilities on the well-known problem of tuning optimal readahead values. Our results show that KML has a small memory footprint, introduces negligible overhead, and yet enhances throughput by as much as 2.3×.

For more information on the KML project, please see our papers 
- [A Machine Learning Framework to Improve Storage System Performance](https://dl.acm.org/doi/10.1145/3465332.3470875)
- [KML: Using Machine Learning to Improve Storage Systems](https://www.fsl.cs.sunysb.edu/docs/kml/kml-tr-fsl-21-02.pdf)
- [KML: Using Machine Learning to Improve Storage Systems (Arxiv)](https://arxiv.org/abs/2111.11554)

KML is under development by Ibrahim Umit Akgun of the File Systems and Storage Lab (FSL) at Stony Brook University under Professor Erez Zadok.

## Table of Contents

- [Setup](#Setup)
  - [Clone KML](#Clone-KML)
  - [Build Dependencies](#Build-Dependencies)
  - [Install KML Linux Kernel Modifications](#Install-KML-Linux-Kernel-Modifications)
  - [Specify Kernel Header Location](#Specify-Kernel-Header-Location)
  - [Build KML](#Build-KML)
  - [Double Check](#Double-Check)
- [Example](#Example)
- [Design](#Design)
  - [API](#API)
- [Citing KML](#Citing-KML)

## Setup

### Clone KML

```bash
# SSH
git clone --recurse-submodules git@github.com:sbu-fsl/kernel-ml.git

# HTTPS
git clone --recurse-submodules https://github.com/sbu-fsl/kernel-ml.git
````

### Build Dependencies

KML depends on the following third-party repositories:

- [google/benchmark](https://github.com/google/benchmark)
- [google/googletest](https://github.com/google/googletest)

```bash
# Create and enter a directory for dependencies
mkdir dependencies
cd dependencies

# Clone repositories
git clone https://github.com/google/benchmark.git
git clone https://github.com/google/googletest.git

# Build google/benchmark
cd benchmark
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ../
make
sudo make install

# Build google/googletest
cd ../googletest
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ../
make
sudo make install
cd ../..
```

### Install KML Linux Kernel Modifications

KML requires Linux kernel modifications to function. We recommend allocating at least 25 GiB of disk space before beginning the installation process.

1. Navigate to the `kernel-ml/kernel-ml-linux` directory. This repository was recursively cloned during setup
    ```bash
    cd kernel-ml-linux
    ```
1. Install the following packages
    ```
    git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison
    ```
1. Install the modified kernel as normal. No changes are required for `make menuconfig`
    ```bash
    cp /boot/config-$(uname -r) .config
    make menuconfig
    make -j$(nproc)
    sudo make modules_install -j$(nproc)
    sudo make install -j$(nproc)
    ```
1. Restart your machine
    ```
    sudo reboot
    ```
1. Confirm that you now have Linux version `4.19.51+` installed
    ```bash
    uname -a
    ```
    
### Specify Kernel Header Location

Edit `kernel-ml/cmake/FindKernelHeaders.cmake` to specify the **absolute path** to the aforementioned `kernel-ml/kernel-ml-linux` directory. For example, if `kernel-ml-linux` lives in `/home/kernel-ml/kernel-ml-linux`:

```cmake
...

# Find the headers
find_path(KERNELHEADERS_DIR
        include/linux/user.h
        PATHS /home/kernel-ml/kernel-ml-linux
)

...
```

### Build KML

```bash
# Create a build directory for KML
mkdir build
cd build 
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS="-Werror" ..
make
```

### Double Check

In order to check everything is OK, we can run tests and benchmarks.
```bash
cd build
ctest --verbose
```

## Design
![kernel-design](docs/images/arch-online-kernel.jpg) 

## API
Developers can find the kernel-ml development API in ```include/kml_lib.h``` header file.
All other application related APIs are also placed in ```include``` directory (e.g. ```sgd_optimizer.h, layers.h, loss.h```)

## Example

## Citing KML

To cite this repository:

```
@TECHREPORT{umit21kml-tr,
  AUTHOR =       "Ibrahim Umit Akgun and Ali Selman Aydin and Aadil Shaikh and Lukas Velikov and Andrew Burford and Michael McNeill and Michael Arkhangelskiy and Erez Zadok",
  TITLE =        "KML: Using Machine Learning to Improve Storage Systems",
  INSTITUTION =  "Computer Science Department, Stony Brook University",
  YEAR =         "2021",
  MONTH =        "Nov",
  NUMBER =       "FSL-21-02",
}
```

```
@INPROCEEDINGS{hotstorage21kml,
  TITLE =        "A Machine Learning Framework to Improve Storage System Performance",
  AUTHOR =       "Ibrahim 'Umit' Akgun and Ali Selman Aydin and Aadil Shaikh and Lukas Velikov and Erez Zadok",
  NOTE =         "To appear",
  BOOKTITLE =    "HotStorage '21: Proceedings of the 13th ACM Workshop on Hot Topics in Storage",
  MONTH =        "July",
  YEAR =         "2021",
  PUBLISHER =    "ACM",
  ADDRESS =      "Virtual",
  KEY =          "HOTSTORAGE 2021",
}
```
