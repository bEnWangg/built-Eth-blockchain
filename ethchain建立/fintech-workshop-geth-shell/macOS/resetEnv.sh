#!/usr/bin/env bash
echo "== REMOVE PREVIOUS FILES =="
rm -rf ~/Library/Ethereum
rm -rf ~/.ethash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
chmod a+x $DIR/x64/geth
echo "== CREATE A NEW ACCOUNT =="
$DIR/x64/geth account new
echo "== INIT GENESIS BLOCK =="
$DIR/x64/geth init $DIR/../genesis-block.json
echo "== RESET DONE =="
