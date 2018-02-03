@echo off
setlocal
rem The format of %Time% is HH:MM:SS,CS for example 23:59:59,99

set STARTTIME = %TIME%

timeout /t 3

set ENDTIME = %TIME%

set /A STARTTIME=(1%STARTTIME:~0,2%-100)*360000 + (1%STARTTIME:~3,2%-100)*6000 + (1%STARTTIME:~6,2%-100)*100 + (1%STARTTIME:~9,2%-100)
set /A ENDTIME=(1%ENDTIME:~0,2%-100)*360000 + (1%ENDTIME:~3,2%-100)*6000 + (1%ENDTIME:~6,2%-100)*100 + (1%ENDTIME:~9,2%-100)

endlocal
goto :EOF