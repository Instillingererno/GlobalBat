@echo off

echo Har du husket � kj�re som admin?

echo Bytter til Java9 milj�et

REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v JAVA_HOME /t REG_SZ /d "C:\Program Files\Java\jdk-9.0.4" /f

REG ADD "HKCU\Enviroment" /v JAVA_HOME /t REG_SZ /d "C:\Program Files\Java\jdk-9.0.4" /f

echo Ferdig med byttet, initierer en restart

shutdown -r -c "Git gud" -t 5