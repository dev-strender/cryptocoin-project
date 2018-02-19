#! /bin/sh

gethdir=$HOME/geth-tools/
datadir=$HOME/cryptocoin-project/project1/data
genesisdir=$HOME/cryptocoin-project/project1/

cd $gethdir
./geth --datadir $datadir init "$genesisdir/np3genesis.json"
