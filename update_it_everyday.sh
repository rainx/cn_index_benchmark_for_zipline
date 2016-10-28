#!/bin/bash

## add cron job 
## 周一至周五每天晚上23点更新 
## 0 23 * * 1,2,3,4,5 path to update_it_everyday.sh

# go to dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR


# gen files
gen-all-index-benchmark-data $DIR/data

# add to git
git add data/*.csv 

# commit 
git commit -m "update index data on `date`"

# push
git push
