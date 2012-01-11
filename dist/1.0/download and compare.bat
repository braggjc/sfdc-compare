@ECHO OFF

REM set ANT_HOME=bin\ant
REM set JAVA_HOME=c:\Program Files (x86)\Java\jdk1.6.0_24
REM set PATH=%PATH%;%ANT_HOME%\bin

copy build.properties.prod bin\sample
copy build.properties.test bin\sample
copy build.properties.dev bin\sample
copy config.xml bin\comp


CD bin\sample\
DEL retrieveUnpackaged\objects\*.*/q
DEL retrieveUnpackaged\workflows\*.*/q
DEL retrieveUnpackaged\*.*/q
CALL get_from_test.cmd

CD ..
CD ..

DEL data\test_env\objects\*.*/q
DEL data\test_env\workflows\*.*/q
DEL data\test_env\*.*/q

REM move bin\sample\retrieveUnpackaged\*.* data\test_env
REM move bin\sample\retrieveUnpackaged\objects\*.* data\test_env\objects
REM move bin\sample\retrieveUnpackaged\workflows\*.* data\test_env\workflows

xcopy bin\sample\retrieveUnpackaged data\test_env /E/Q/H/Y/I

CD bin\sample\
DEL retrieveUnpackaged\objects\*.*/q
DEL retrieveUnpackaged\workflows\*.*/q
DEL retrieveUnpackaged\*.*/q
CALL get_from_prod.cmd

CD ..
CD ..

DEL data\prod_env\objects\*.*/q
DEL data\prod_env\workflows\*.*/q
DEL data\prod_env\*.*/q

REM move bin\sample\retrieveUnpackaged\*.* data\prod_env/q
REM move bin\sample\retrieveUnpackaged\objects\*.* data\prod_env\objects/q
REM move bin\sample\retrieveUnpackaged\workflows\*.* data\prod_env\workflows/q

xcopy bin\sample\retrieveUnpackaged data\prod_env /E/Q/H/Y/I

CD bin\comp
java -jar comp.jar

pause