#! /bin/sh

# FOR AWS
# gethdir=$HOME/geth-tools/
# datadir=$HOME/cryptocoin-project/project1/data
# genesisdir=$HOME/cryptocoin-project/project1

gethdir=$HOME/Projects/Ethereum/geth172
datadir=$HOME/Projects/Ethereum/cryptocoin-project/project1/data
genesisdir=$HOME/Projects/Ethereum/cryptocoin-project/project1

cd $gethdir
./geth --datadir $datadir init "$genesisdir/np3genesis.json"
