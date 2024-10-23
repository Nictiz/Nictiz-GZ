@echo off
setlocal
setlocal enabledelayedexpansion

rem This is ageneric batch file to start a command (bat file) in the YATC system. It searches for a batch file with the right name
rem and then executes it.  

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

if [%~1]==[] goto :HELP
if [%~1]==[-help] goto :HELP

rem Move to the YATC base directory (where all the repositories are checked-out/cloned) and find the command:
set BASEDIR=%~dp0../..
set COMMAND=%~1

rem Find the command in one of the YATC directories:
set WORKINGDIR=%CD%
cd %BASEDIR%
for /f %%d in ('dir /b YATC-* 2^>NUL') do (
    set DIR=%%d
    cd %BASEDIR%\!DIR!
    for /f %%x in ('dir /b /s %COMMAND%.bat 2^>NUL') do set BATCHFILE=%%x
    if [!BATCHFILE!] neq [] goto :FINISHSEARCH
)
:FINISHSEARCH
cd %WORKINGDIR%

rem Check the result:
if [%BATCHFILE%] == [] goto :NOTFOUND
if [%BATCHFILE:~-4%] neq [.bat] goto :NOTFOUND 

rem We would like to use the batch shift command here and then %*, but shift does not apply to %*, so we do it manually :(  
"%BATCHFILE%" %2 %3 %4 %5 %6 %7 %8 %9 
exit /B 0

rem -----------------------------------------------------------------------------------------

:HELP
echo Runs a YATC command
echo Usage: %~n0 [subcommand] [subcommand-parameters-flags]
exit /B 0

:NOTFOUND
echo YATC command not found: %COMMAND%
exit /B 1