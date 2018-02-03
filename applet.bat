@echo off

set TEST=%1

mkdir %TEST%Folder

xcopy %TEST%applet.java %TEST%Folder

xcopy %TEST%applet.html %TEST%Folder

cd %TEST%Folder

javac -encoding utf8 %TEST%applet.java

appletviewer %TEST%applet.html

cd..

RD /S /Q %TEST%Folder