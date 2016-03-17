@echo off
setlocal
pushd %~dp0

pushd content\NyaoVim
call npm run dep
call npm run build
popd

rd /S /Q dist
mkdir dist
mkdir dist\content

copy README.md dist
copy Neovim.bat dist
copy content\node.exe dist\content

mkdir dist\content\Neovim
xcopy /S /E content\Neovim dist\content\Neovim

mkdir dist\content\NyaoVim
xcopy /S /E content\NyaoVim dist\content\NyaoVim

popd
endlocal
