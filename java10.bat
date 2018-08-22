@echo off

echo Har du husket å kjøre som admin?

echo Bytter til Java10 miljøet

REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v JAVA_HOME /t REG_SZ /d "C:\Program Files\Java\jdk-10.0.1" /f

REG ADD "HKCU\Enviroment" /v JAVA_HOME /t REG_SZ /d "C:\Program Files\Java\jdk-10.0.1" /f

echo Ferdig med byttet, initierer en restart

shutdown -r -c "Git gud" -t 5