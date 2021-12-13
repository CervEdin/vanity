#!/bin/sh

for Y in `seq 2001 2010`; do
  for D in `seq 0 364`; do
    for i in `seq 0 100`; do
      DATE=`date -I -d "$Y-01-01 +$D days"`
      git commit --allow-empty --allow-empty-message -m '' --date $DATE;
    done
  done  
  git push
done
