#!/usr/bin/env bash
echo "== REMOVE PREVIOUS FILES =="
rm -rf ~/.ethereum
rm -rf ~/.ethash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ARCH=$(uname -m)
if [ "$ARCH" == "x86_64" ]; then
    chmod a+x $DIR/x64/geth
    echo "== CREATE A NEW ACCOUNT =="
    $DIR/x64/geth account new
    echo "== INIT GENESIS BLOCK =="
	$DIR/x64/geth init $DIR/../genesis-block.json
else
    chmod a+x $DIR/x86/geth
    echo "== CREATE A NEW ACCOUNT =="
    $DIR/x86/geth account new
	echo "== INIT GENESIS BLOCK =="
	$DIR/x86/geth init $DIR/../genesis-block.json
fi
echo "== RESET DONE =="