@echo off
setlocal

rem This batch file starts Morgana within the YATC context. 
rem It sets the CLASSPATH in accordance with how the YATC-tools repository has its files layed out on disk.

set DATADIR=%~dp0../data
set MORGANADIR=%~dp0../morgana
set SAXONDIR=%~dp0../saxon
set SCHXSLTDIR=%~dp0../schxslt

REM All related jars are expected to be in $MORGANA_LIB. For externals jars: Add them to $CLASSPATH
set PROG_PATH=%MORGANADIR%/MorganaXProc-IIIse.jar
set MORGANALIB_PATH=%MORGANADIR%/MorganaXProc-IIIse_lib/*
set SAXONLIB_PATH=%SAXONDIR%/*

set CLASSPATH="%MORGANALIB_PATH%;%SAXONLIB_PATH%;%PROG_PATH%"

REM Settings for JAVA_AGENT: Only for Java 8 we have to use -javaagent.
@for /f tokens^=2-5^ delims^=.-_^" %%j in ('java -fullversion 2^>^&1') do set "JAVA_VERSION=%%j%%k"
set JAVA_AGENT=
if %JAVA_VERSION% EQU 18 (set JAVA_AGENT="-javaagent:%MORGANADIR%/MorganaXProc-IIIse_lib/quasar-core-0.7.9.jar")

REM We need to specify the XSLT connector depending on the Saxon version, see https://www.xml-project.com/manual/ch02.html
set XSLTCONNECTOR=saxon12-3

if NOT [%1] == [] (
    java %JAVA_AGENT% -cp %CLASSPATH% com.xml_project.morganaxproc3.XProcEngine "-config=%DATADIR%/morgana-config.xml" %*
) else (
    REM Just run it without arguments to get the help and, probably more interesting, the version number:
    java %JAVA_AGENT% -cp %CLASSPATH% com.xml_project.morganaxproc3.XProcEngine 
)
