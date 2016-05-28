@echo off

set /p currentVersion=<version.txt

CD C:\TEMP\SCRIPTS
ECHO %currentVersion%

DIR

REM FOR %%I IN (045 046 047 048 049 050 051 052) DO IF "currentVersion" LSS "%%I" Update.bat %%I
