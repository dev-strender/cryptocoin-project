#! /bin/sh

gethdir=$HOME/geth-tools/
datadir=$HOME/ethereum_project/project1/data

cd $gethdir

./geth --identity "TestNetwork" --datadir $datadir --port 30303 --dev --rpc --rpcaddr 0.0.0.0 --rpcport "8123" --rpcapi "db,eth,web3,net,miner" --rpccorsdomain "*" console
