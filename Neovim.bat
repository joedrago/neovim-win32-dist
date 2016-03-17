@echo off

setlocal

pushd %~dp0
path %~dp0content\Neovim\bin;%PATH%
content\node.exe content\NyaoVim\bin\cli.js %*

endlocal
