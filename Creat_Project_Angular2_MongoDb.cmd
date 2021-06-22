:startss
@ECHO OFF
color 3f
title Creat Project Angular 2 and MongoDb
set /p path_project="Path Project: "
set old_path=%cd%

md %path_project% 
md %path_project%\public

cd /d "%path_project%"

set file1=package.json
set file2=app.js
set file3=Index.html

:: Copy file1
copy /y "%old_path%\MongoDb_NodeJS\%file1%" "%path_project%\%file1%"

:: Copy file2
copy /y "%old_path%\MongoDb_NodeJS\%file2%" "%path_project%\%file2%"

:: Copy file3
copy /y "%old_path%\MongoDb_NodeJS\%file3%" "%path_project%\public\%file3%"

npm install
echo END CREAT!
pause
cls
goto startss