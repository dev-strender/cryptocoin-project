#! /bin/sh

# FOR AWS
# gethdir=$HOME/geth-tools/
# datadir=$HOME/cryptocoin-project/project1/data

gethdir=$HOME/Projects/Ethereum/geth172/ 
datadir=$HOME/Projects/Ethereum/cryptocoin-project/project1/data

cd $gethdir
./geth --datadir $datadir --dev attatch ipc:$datadir/geth.ipc
