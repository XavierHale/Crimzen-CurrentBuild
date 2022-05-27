@echo off
set domain=%1
set server=%2
git clone https://github.com/%domain%/%server% -q
goto :eof