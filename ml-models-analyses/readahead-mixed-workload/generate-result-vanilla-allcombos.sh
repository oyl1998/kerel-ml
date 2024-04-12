#!/bin/bash

#
# Copyright (c) 2019-2021 Ibrahim Umit Akgun
# Copyright (c) 2021-2021 Andrew Burford
# Copyright (c) 2021-2021 Mike McNeill
# Copyright (c) 2021-2021 Michael Arkhangelskiy
# Copyright (c) 2020-2021 Aadil Shaikh
# Copyright (c) 2020-2021 Lukas Velikov
# Copyright (c) 2019-2021 Erez Zadok
# Copyright (c) 2019-2021 Stony Brook University
# Copyright (c) 2019-2021 The Research Foundation of SUNY
#
# You can redistribute it and/or modify it under the terms of the Apache License, 
# Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0).
#

# how to use ./generate-benchmark-vanilla device mount_point output_dir

ROCKSDB=/home/benchmarks/rocksdb
ROCKSDB2=/home/benchmarks/rocksdb2

if (( $# != 3 )); then
    echo "./generate-benchmark-vanilla device mount_point output_dir"
    exit 1
fi

mkdir -p $3

>/tmp/detail.txt
>/tmp/detail2.txt
workloads=(readseq readreverse readrandom readrandomwriterandom mixgraph updaterandom readwhilewriting)
for i in ${!workloads[*]}
do
    for j in ${!workloads[*]}
    do
        if [[ $i -eq $j ]]
        then 
            continue
        fi
        wkld1=${workloads[$i]}
        wkld2=${workloads[$j]}
        echo "Doing mixed workload with $wkld1 and $wkld2"
        umount /dev/$1
        mount /dev/$1 $2
        ./clear-dataset.sh $2
        blockdev --setra 256 /dev/$1
        sync && echo 3 > /proc/sys/vm/drop_caches
        ./spawn-workloads-vanilla.sh $wkld1 $wkld2 $2 $ROCKSDB $ROCKSDB2 &> $3/bench_output_${wkld1}_${wkld2}_$1_vanilla
    done
done
cp /tmp/detail.txt $3/detail-vanilla-1.txt
cp /tmp/detail2.txt $3/detail-vanilla-2.txt
