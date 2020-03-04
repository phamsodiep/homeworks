@echo off
ECHO *************************************************************************
ECHO This script will create a project name dashboard in folder dashboard.
ECHO Link: https://www.youtube.com/watch?v=FP7Hs8lTy1k
ECHO Duration: 00:00 to 02:55
ECHO *************************************************************************

ECHO.
ECHO.
ECHO Step 1 create an initial project
ECHO CMD: ng new dashboard
ECHO *************************************************************************
ECHO For question:
ECHO ? Would you like to add Angular routing? (y/N)
ECHO Answer: Y
ECHO.

ECHO For question:
ECHO ? Which stylesheet format would you like to use? (Use arrow keys)
ECHO Answer: SCSS   [ https://sass-lang.com/documentation/syntax#scss                ]
ECHO.

IF EXIST dashboard rd /s /q dashboard
call ng new dashboard
PAUSE

ECHO.
ECHO.
ECHO Step 2 add library '@angular/material'
ECHO CMD: ng add @angular/material
ECHO *************************************************************************
ECHO For question:
ECHO ? Choose a prebuilt theme name, or "custom" for a custom theme: (Use arrow keys)
ECHO Answer: ^> Indigo/Pink        [ Preview: https://material.angular.io?theme=indigo-pink ]
ECHO.

ECHO For question:
ECHO ? Set up global Angular Material typography styles? (y/N)
ECHO Answer: N
ECHO.

ECHO For question:
ECHO ? Set up browser animations for Angular Material? (Y/n)
ECHO Answer: Y
ECHO.

PUSHD .
PAUSE
CD dashboard
call ng add @angular/material
POPD

ECHO.
ECHO.
ECHO Step 3 install 3rd-party libraries: highcharts-angular, highcharts
ECHO        @angular/flex-layout @angular/cdk
ECHO CMD: npm i highcharts-angular --save
ECHO      npm i highcharts --save
ECHO      npm i @angular/flex-layout @angular/cdk --save
ECHO *************************************************************************
PUSHD .
PAUSE
CD dashboard
call npm i highcharts-angular --save
call npm i highcharts --save
call npm i @angular/flex-layout @angular/cdk --save
POPD

ECHO.
ECHO.
ECHO Step 4 Test
ECHO CMD: ng serve
ECHO *************************************************************************
ECHO Please run command 'ng serve' manually and open browser at url: https://localhost:4200