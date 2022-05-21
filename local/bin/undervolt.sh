#!/bin/bash
set -e
previous=$(cat /etc/intel-undervolt.conf | head -1 | cut -d' ' -f4 | sed 's/-//')
file=/etc/intel-undervolt.conf
time=180

for new in $(seq 40 10 120)
do
  #replace
  sed "s/$previous/$new/" -i $file
  #cat $file
  printf "Replaced %s with %s \n" $previous $new

  #apply
  intel-undervolt apply > /dev/null
  printf "Applied %s\n" $new

  # bench
  printf "Benching for %s seconds\n" $time
  bench="$(sysbench cpu --threads=12 --time=$time run)" 
  
  # output
  printf "Stored"
  echo VALUE=$new | tee -a result
  echo "$bench" | tee -a result

  #store current
  previous=$new
done

hx result