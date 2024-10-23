@echo off
setlocal

rem This batch file starts Saxon within the YATC context. 

set SAXONDIR=%~dp0../saxon

java -jar %SAXONDIR%/saxon.jar %*