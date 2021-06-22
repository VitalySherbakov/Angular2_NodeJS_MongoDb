:startss
@ECHO OFF
color 3f
title Start Project Angular 2
set /p path_project="Path Project: "
cd /d "%path_project%"
node app.js
pause
cls
goto startss