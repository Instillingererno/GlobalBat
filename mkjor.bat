@echo off

set TEST=%1

mkdir %TEST%Folder

xcopy /s %TEST% %TEST%Folder

cd %TEST%Folder

dir /s /B *.java > sources.txt

javac @sources.txt

java %TEST%

cd..

RD /S /Q %TEST%Folder