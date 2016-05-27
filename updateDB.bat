@echo off

set /a currentVersion=47

CD C:\UPDATES\SCRIPTS

FOR %%I IN (045 046 047 048 049 050 051 052) DO IF "currentVersion" LSS "%%I" Update.bat %%I

