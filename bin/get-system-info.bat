@echo off
setlocal

rem This script shows the information gathered by ../xslmod/yatc-system.mod.xsl. 
rem What it returns depends on from where it is called!

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

"%TOOLSBINDIR%/saxon.bat" "-s:%BASEDIR%/../data/dummy.xml" "-xsl:%BASEDIR%/../xsl/show-yatc-system.xsl" "staticBaseUri=%CD%"
exit /B

:HELP
echo Returns the YATC system information(base directory, repository, component).
echo The outcome depends on the location (current directory) from where it is invoked.
echo Usage: %~n0
exit /B