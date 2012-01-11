@ECHO OFF

copy config.xml bin\comp

CD bin\comp
java -jar comp.jar

ECHO DONE.
pause