@echo

set TEST=%1

javac %TEST%.java -encoding utf8

jar cvfm min.jar "manifest.txt" *.class