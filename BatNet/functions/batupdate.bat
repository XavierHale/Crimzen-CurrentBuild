@echo off
set domain=%1
set server=%2
cd %server%
git pull https://github.com/%domain%/%server% -q
cd..
goto :eof