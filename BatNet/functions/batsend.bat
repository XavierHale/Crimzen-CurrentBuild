@echo off
set domain=%1
set server=%2
set message=%3
git commit --all -m %time%%date%%message% -q
git push https://github.com/%domain%/%server% -q
goto :eof