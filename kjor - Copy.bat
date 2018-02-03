@echo off

set TEST=%1

mkdir %TEST%Folder

xcopy *.txt %TEST%Folder

xcopy %TEST%.java %TEST%Folder

cd %TEST%Folder

javac -encoding utf8 %TEST%.java

java %TEST%

cd..

RD /S /Q %TEST%Folder
