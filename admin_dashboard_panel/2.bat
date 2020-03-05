@echo off
ECHO *************************************************************************
ECHO This script will install angular modules for test projects
ECHO Link: https://www.youtube.com/watch?v=FP7Hs8lTy1k
ECHO Duration: 02:55 to 03:50
ECHO *************************************************************************

ECHO.
ECHO.
ECHO Install angular modules
ECHO CMD: npm install
ECHO *************************************************************************
PUSHD .
CD dashboard
call npm install
POPD

ECHO.
ECHO.
ECHO Test
ECHO CMD: ng serve
ECHO *************************************************************************
ECHO Please run command 'ng serve' manually and open browser at url: https://localhost:4200
