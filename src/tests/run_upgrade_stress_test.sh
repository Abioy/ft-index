#!/usr/bin/env bash

if [[ $# -lt 6 ]]; then exit 1; fi

bin=$1; shift
saveddir=$1; shift
envdir=$1; shift
size=$1; shift
time=$1; shift
jointime=$1; shift

rm -rf $envdir
cp -r $saveddir $envdir
$bin --only_stress --num_elements $size --num_seconds $time --join_timeout $jointime
