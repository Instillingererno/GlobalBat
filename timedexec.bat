@echo off
setlocal
rem The format of %Time% is HH:MM:SS,CS for example 23:59:59,99
set INPUT=%1
echo ----------------------------------------------------------------
echo.
set STARTTIME=%TIME%
%1%
set ENDTIME=%TIME%
set /A STARTTIME=(1%STARTTIME:~0,2%-100)*360000 + (1%STARTTIME:~3,2%-100)*6000 + (1%STARTTIME:~6,2%-100)*100 + (1%STARTTIME:~9,2%-100)
set /A ENDTIME=(1%ENDTIME:~0,2%-100)*360000 + (1%ENDTIME:~3,2%-100)*6000 + (1%ENDTIME:~6,2%-100)*100 + (1%ENDTIME:~9,2%-100)
set /A DURATION=(%ENDTIME%-%STARTTIME%)
set /A H=%DURATION% / 360000
set /A M=(%DURATION% - %H%*360000) / 6000
set /A S=(%DURATION% - %H%*360000 - %M%*6000) / 100
set /A HS=(%DURATION% - %H%*360000 - %M%*6000 - %S%*100)
if %H% LSS 10 set H=0%H%
if %M% LSS 10 set M=0%M%
if %S% LSS 10 set S=0%S%
if %HS% LSS 10 set HS=0%HS%
echo.
echo -------------------------- timed exec --------------------------
echo Programmet brukte: %H%:%M%:%S%,%HS%
echo ----------------------------------------------------------------
endlocal
goto :EOF