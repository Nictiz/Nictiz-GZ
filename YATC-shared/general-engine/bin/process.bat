@echo off
setlocal

rem Script that starts the processing of the general engine.

rem This script is meant to be called from a batch file in the actual component's bin directory.
rem First argument must always be the filename of the *originating* batch file (%0)!
rem Example call: 
rem     %~dp0../../../YATC-shared/general-engine/bin/process.bat %0 %*

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
set CWSCRIPT=%BASEDIR%../xpl/process.xpl

rem --- Remark: For mysterious reasons, the shift command in Windows does not shift $*. So we have to pass the command line parameters
rem     like we do below (for the commandLine option) :( 
"%YATCBASEDIR%/YATC-tools/bin/morgana.bat" "%CWSCRIPT%" "-option:commandLine=%2 %3 %4 %5 %6 %7 %8 %9" "-option:originatingBatchScript=%~1"
exit /B
