@echo off

set /p currentVersion=<version.txt


CD C:\TEMP\SCRIPTS
ECHO %currentVersion%

DIR

::setlocal disableDelayedExpansion
set "files="

for %%F in (*) do ( call set files=%%files%% %%~nxF
	set scriptName=%%~nxF
	set scriptVersion=%scriptName:~0,3%
    
	IF /I "%scriptVersion%" GTR "%currentVersion%" xcopy /y %%~nxF version.txt	
)

