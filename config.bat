@ECHO OFF
ECHO.
ECHO UPDATING CONFIG FILES
ECHO.
PAUSE
SET REPO_HOST=https://github.com
SET REPO_USER=angelosuinan
SET REPO_URL=%REPO_HOST%:/%REPO_USER%
SET BRANCH=development

ECHO %REPO_URL%

git clone -b %BRANCH% --single-branch %REPO_URL%/web-sys web
git clone -b %BRANCH% --single-branch %REPO_URL%/dashboard-sys dashboard

PAUSE
CLS
EXIT