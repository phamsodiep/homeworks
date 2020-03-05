@echo off
ECHO *************************************************************************
ECHO This script will install angular modules for test projects
ECHO Link: https://www.youtube.com/watch?v=FP7Hs8lTy1k
ECHO Duration: 03:50 to 06:45
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
ECHO Create:
ECHO   Component default
ECHO   Module default
ECHO   Component dashboard
ECHO CMD: ng g c layouts/default
ECHO CMD: ng g m layouts/default
ECHO CMD: ng g c modules/dashboard
ECHO *************************************************************************
PUSHD .
CD dashboard
call ng g c layouts/default
call ng g m layouts/default
call ng g c modules/dashboard
POPD


ECHO.
ECHO.
ECHO Please update git to next revision for implementation source code
ECHO Then run command 'ng serve' manually and open browser at url:
ECHO https://localhost:4200
ECHO *************************************************************************
