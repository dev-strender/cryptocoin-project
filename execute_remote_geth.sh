#! /bin/sh

datadir=$HOME/cryptocoin-project/project1/data

./geth --datadir $datadir --dev attatch ipc:$datadir/geth.ipc
