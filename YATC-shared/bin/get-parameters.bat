@echo off
setlocal

rem This script returns the parameters as text as computed by the yatcs:get-combined-parameters() function
rem in ../xslmod/yatc-parameters.mod.xsl. What it returns depends on from where it is called!

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

"%TOOLSBINDIR%/saxon.bat" "-s:%BASEDIR%/../data/dummy.xml" "-xsl:%BASEDIR%/../xsl/get-parameters.xsl" "staticBaseUri=%CD%" "nameContains=%1"
exit /B

:HELP
echo Returns the YATC parameters as a list. 
echo You can specify a string the parameter name must contain (case-insensitive).
echo The outcome depends on the location from where it is invoked.
echo Usage: %~n0 [contains-string]
exit /B