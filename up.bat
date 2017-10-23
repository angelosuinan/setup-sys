@ECHO OFF
ECHO.
ECHO UPDATING CONFIG FILES
ECHO.
PAUSE

docker-compose -f docker-compose.yml up -d


PAUSE
CLS
EXIT