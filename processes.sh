#!/bin/bash

num_cores=$(nproc)

for i in $(seq 1 $num_cores); do
  (
    while :; do
      echo "scale=5000; a(1)*4" | bc -l > /dev/null
    done
  ) &
done

wait
