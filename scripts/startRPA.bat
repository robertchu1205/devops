@ECHO OFF

SET EXEName=ShadowBot.Shell.exe
SET EXEFullPath=C:\Program Files (x86)\HSRPA\shadowbot-4.8.17\ShadowBot.Shell.exe

@REM TASKLIST | FINDSTR /I "%EXEName%"
@REM IF ERRORLEVEL 1 GOTO :StartSpeedFan
@REM GOTO :EOF

@REM :StartSpeedFan
START "" "%EXEFullPath%"
GOTO :EOF