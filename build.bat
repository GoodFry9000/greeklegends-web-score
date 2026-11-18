@echo off
rem Rebuilds gl.wasm from the bot's scoring package (fanta-bot\greek) and refreshes wasm_exec.js.
rem Run it after any change to the Greek Legends rules or cards in fanta-bot.
setlocal
set BOT=%~dp0..\..\Go\fanta-bot
pushd "%BOT%" || exit /b 1
set GOOS=js
set GOARCH=wasm
go build -mod=vendor -trimpath -ldflags="-s -w" -o "%~dp0gl.wasm" ./greek/wasm || (popd & exit /b 1)
for /f "delims=" %%r in ('go env GOROOT') do copy /y "%%r\lib\wasm\wasm_exec.js" "%~dp0wasm_exec.js" >nul
popd
echo gl.wasm rebuilt
