#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$DIR/x64/geth --networkid 16888 --port 30303 --nodiscover --maxpeers 25 --nat "any" --rpc --rpcaddr "0.0.0.0" --rpccorsdomain "*" --rpcapi "eth,net,web3,debug" --targetgaslimit 8888888888 --mine --minerthreads 1 --autodag --preload $DIR/../static-nodes.js console