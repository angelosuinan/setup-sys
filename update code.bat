@ECHO OFF
ECHO.
ECHO .................UPDATE CODE.................
ECHO.
PAUSE

ECHO .................UPDATING CONFIG FILES.................
git config user.email "suinanangelo@gmail.com"
git pull origin production


ECHO .................UPDATING WEB FILES.................
cd web/
git pull origin production

ECHO .................DOWNLOADING & INSTALLING NEW REQUIREMENTS.................
cd src/

pip install -r requirements.txt


PAUSE

ECHO .................SUCCESS.................
CLS