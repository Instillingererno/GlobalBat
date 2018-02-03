@echo off

echo Har du husket å kjøre som admin?

echo Bytter til Java7 miljøet

REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v JAVA_HOME /t REG_SZ /d "C:\Program Files (x86)\Java\jdk1.7.0_80" /f

REG ADD "HKCU\Enviroment" /v JAVA_HOME /t REG_SZ /d "C:\Program Files (x86)\Java\jdk1.7.0_80" /f

echo Ferdig med byttet, initierer en restart

shutdown -r -c "Git gud" -t 5