#! /bin/sh

# FOR AWS
# gethdir=$HOME/geth-tools/
# datadir=$HOME/ethereum_project/project1/data

gethdir=$HOME/Projects/Ethereum/geth172
datadir=$HOME/Projects/Ethereum/cryptocoin-project/project1/data

cd $gethdir

./geth --identity "TestNetwork" --datadir $datadir --port "30303" --rpc --rpcaddr 0.0.0.0 --rpcport "8123" --rpccorsdomain "*" --nodiscover --networkid 1900 --nat "any" --rpcapi "db,eth,web3,net,miner" console
