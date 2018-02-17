#! /bin/sh

# gethdir=/usr/bin/geth
datadir=$HOME/ethereum_project/project1/node1
keystoredir=$datadir/keystore

# cd $gethdir
geth --identity "TestNetwork" --datadir $datadir --keystore $keystoredir --port 30303 --rpc --rpcaddr 0.0.0.0 --rpcport "8123" --rpccorsdomain "*" --nodiscover --networkid 1588 --nat "any" --rpcapi "db,eth,web3,net,miner" console
