@ECHO OFF
ECHO.
ECHO .................UPDATE CODE.................
ECHO.
PAUSE

ECHO .................UPDATING CONFIG FILES.................
git config --global user.email "suinanangelo@gmail.com"
git config --global user.name "angelosuinan"
git checkout production
git pull origin production

ECHO .................BACKUP CONFIG FILES.................
git add -A .
git commit -m "update config files"
git push origin production

ECHO .................UPDATING WEB FILES.................
cd web/

git checkout production
git pull origin production



ECHO .................BACKUP WEB FILES.................
git add -A .
git commit -m "update DATABASE"
git push origin production

PAUSE

ECHO .................SUCCESS.................
CLS