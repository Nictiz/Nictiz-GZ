@echo off
setlocal

rem Script for running the compare-production-ada-instances pipeline from the command line.
rem See ../xpl/help/compare-production-ada-instances.help.txt for more information.

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

set BASEDIR=%~dp0
set YATCBASEDIR=%BASEDIR%../../..
set CWSCRIPT=%BASEDIR%../xpl/compare-production-ada-instances.xpl

"%YATCBASEDIR%/YATC-tools/bin/morgana.bat" "%CWSCRIPT%" "-option:commandLine=%*" 
exit /B