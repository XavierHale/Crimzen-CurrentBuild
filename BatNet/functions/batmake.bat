@echo off
set serverdir=%3
set domain=%1
set server=%2
cd %serverdir%
gh repo create %server% --public --clone
cd..
goto :eof
