:startss
@ECHO OFF
color 3f
title Creat Project Angular 2
set /p path_project="Path Project: "
set old_path=%cd%
md %path_project% 

set file1=package.json
set file2=systemjs.config.js
set file3=tsconfig.json

:: Copy file1
copy /y "%old_path%\StandartFileCreat\%file1%" "%path_project%\%file1%"
:: Copy file2
copy /y "%old_path%\StandartFileCreat\%file2%" "%path_project%\%file2%"
:: Copy file3
copy /y "%old_path%\StandartFileCreat\%file3%" "%path_project%\%file3%"

echo END CREAT!

cd /d "%path_project%"
md app
set file1=app.component.ts
set file2=app.module.ts
set file3=main.ts
set file4=index.html

:: Copy file1
copy /y "%old_path%\StandartFile\%file1%" "app\%file1%"
:: Copy file2
copy /y "%old_path%\StandartFile\%file2%" "app\%file2%"
:: Copy file3
copy /y "%old_path%\StandartFile\%file3%" "app\%file3%"
:: Copy file4
copy /y "%old_path%\StandartFile\%file4%" "%file4%"
echo Project: %path_project% COMPILE!
echo END COMPILE!
npm install

pause
cls
goto startss