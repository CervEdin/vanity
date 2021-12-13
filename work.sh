#!/bin/sh

for Y in `seq 2002 2010`; do
  for D in `seq 0 364`; do
    N=`tr -cd 0-9 </dev/urandom | head -c 2`
    for i in `seq 1 $N`; do
      DATE=`date -I -d "$Y-01-01 +$D days"`
      git commit --allow-empty --allow-empty-message -m '' --date $DATE;
    done
  done  
  git push
done
