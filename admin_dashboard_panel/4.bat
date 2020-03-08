@echo off
ECHO *************************************************************************
ECHO This script will create shared modules to form a layout
ECHO Link: https://www.youtube.com/watch?v=FP7Hs8lTy1k
ECHO Duration: 06:45 to 32:00
ECHO *************************************************************************


IF EXIST dashboard\src\app\modules\posts rd /s /q dashboard\src\app\modules\posts
IF EXIST dashboard\src\app\shared        rd /s /q dashboard\src\app\shared


ECHO.
ECHO.
ECHO Create:
ECHO   Component header, footer, sidebar
ECHO   Module shared
ECHO   Component posts
ECHO CMD: ng g c shared/components/header
ECHO CMD: ng g c shared/components/footer
ECHO CMD: ng g c shared/components/sidebar
ECHO CMD: ng g m shared
ECHO CMD: ng g c modules/posts
ECHO *************************************************************************
PUSHD .
CD dashboard
call ng g c shared/components/header
call ng g c shared/components/footer
call ng g c shared/components/sidebar
call ng g m shared
call ng g c modules/posts
POPD


ECHO.
ECHO.
ECHO Please update git to next revision for implementation source code
ECHO Then run command 'ng serve' manually and open browser at url:
ECHO https://localhost:4200
ECHO *************************************************************************
