@echo off
setlocal

rem This script runs ../support/import-aorta-documents.xpl 
rem This will import a specified list of documents from AORTA into YATC

rem Copyright © Nictiz
rem     
rem This program is free software; you can redistribute it and/or modify it under the terms of the
rem GNU Lesser General Public License as published by the Free Software Foundation; either version
rem 2.1 of the License, or (at your option) any later version.
rem 
rem This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
rem without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
rem See the GNU Lesser General Public License for more details.
rem 
rem The full text of the license is available at http://www.gnu.org/copyleft/lesser.html

if [%~1]==[-help] goto :HELP
if [%~1]==[] goto :HELP

set BASEDIR=%~dp0
set TOOLSBINDIR=%BASEDIR%../../YATC-tools/bin

"%TOOLSBINDIR%/morgana.bat" "%BASEDIR%../support/import-aorta-documents.xpl" "-input:source=%~1"
exit /B

:HELP
echo Imports a set of files from AORTA into YATC
echo Meant for developers of YATC software only!
echo Usage: %~n0 specification-document
exit /B