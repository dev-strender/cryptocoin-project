#! /bin/sh

gethdir=$HOME/geth-tools/
datadir=$HOME/cryptocoin-project/project1/data

cd $gethdir
./geth --datadir $datadir account list
