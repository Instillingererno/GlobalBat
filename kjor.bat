@echo off

set TEST=%1



javac -encoding utf8 %TEST%.java

java %TEST%

del /Q *.class
