rd /s /q %userprofile%\AppData\Roaming\Ethereum
rd /s /q %userprofile%\AppData\Ethash

if defined ProgramFiles(x86) (
    %~dp0\x64\geth.exe account new
    %~dp0\x64\geth.exe init %~dp0\..\genesis-block.json
) else (
    %~dp0\x86\geth.exe account new
    %~dp0\x86\geth.exe init %~dp0\..\genesis-block.json
)
