@echo off
setlocal

rem This script runs ../xpl/text-documents-2-markdown.xpl and with that converts all special text documents 
rem in the YATC repositories into Markdown. Meant for developers! 

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

set BASEDIR=%~dp0
set TOOLSBINDIR=%BASEDIR%../../YATC-tools/bin

"%TOOLSBINDIR%/morgana.bat" "%BASEDIR%../xpl/text-documents-2-markdown.xpl"
exit /B

:HELP
echo Converts all special text documents into Markdown format for all YATC repositories.
echo Meant for developers of YATC software/documentation only.
echo Usage: %~n0
exit /B