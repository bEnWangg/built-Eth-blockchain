if defined ProgramFiles(x86) (
    %~dp0\x64\geth.exe --networkid 16888 --port 30303 --nodiscover --maxpeers 25 --nat "any" --rpc --rpcaddr "0.0.0.0" --rpccorsdomain "*" --rpcapi "eth,net,web3,debug" --targetgaslimit 8888888888 --mine --minerthreads 1 --autodag --preload %~dp0\..\static-nodes.js console
) else (
    %~dp0\x86\geth.exe --networkid 16888 --port 30303 --nodiscover --maxpeers 25 --nat "any" --rpc --rpcaddr "0.0.0.0" --rpccorsdomain "*" --rpcapi "eth,net,web3,debug" --targetgaslimit 8888888888 --mine --minerthreads 1 --autodag --preload %~dp0\..\static-nodes.js console
)
