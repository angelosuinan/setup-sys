@ECHO OFF
ECHO.
ECHO .................START SERVER.................
ECHO.


ECHO .................STARTING SERVER.................
cd web/src/

pip install -r requirements.txt
python manage.py runserver 0.0.0.0:80

PAUSE
ECHO .................DONE.................
CLS