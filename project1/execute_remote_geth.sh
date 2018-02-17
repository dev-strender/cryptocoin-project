#! /bin/sh

datadir=$HOME/cryptocoin-project/project1/node1

geth --datadir $datadir --dev attatch ipc:$datadir/geth.ipc
