#! /bin/sh

# gethdir=/usr/bin/geth
datadir=$HOME/ethereum_project/data

# cd $gethdir
geth --datadir $datadir --dev --rpc --rpcapi eth,web3,personal --rpccorsdomain "*"
