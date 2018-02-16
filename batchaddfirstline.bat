@echo off

if "%1"=="true" goto hjelper

set TYPE=%1
set INPUT=%*
forfiles /s /m *.%TYPE% /c "cmd /c batchaddfirstline true @file %INPUT%"

goto:eof




:hjelper

set FILE=%2
set TYPE=%3
set TEXT=%*

echo %1 %FILE% %TYPE%> tempfile345676543.txt
for %%? in (tempfile345676543.txt) do ( set /a strlength=%%~z? - 1 )
del tempfile345676543.txt

call set TEXT=%%TEXT:~%strlength%%%

(echo %TEXT%) >%FILE%.new
type %FILE% >>%FILE%.new
move /y %FILE%.new %FILE%

goto:eof
