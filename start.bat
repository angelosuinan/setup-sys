@ECHO OFF
ECHO.
ECHO .................START SERVER.................
ECHO.


ECHO .................STARTING SERVER.................
cd web/src/

pip install -r requirements.txt
python manage.py runserver 0.0.0.0:8000

PAUSE
ECHO .................DONE.................
CLS