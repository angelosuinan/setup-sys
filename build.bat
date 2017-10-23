@ECHO OFF
ECHO.
ECHO UPDATING CONFIG FILES
ECHO.
PAUSE



SET COMPOSE_FILE ?= 'docker-compose.yml'
SET COMPOSE_CMD=docker-compose -f %COMPOSE_FILE%

SET COMPOSE_RUN=%COMPOSE_CMD% run --rm

docker-compose -f docker-compose.yml build

ECHO SUCCESS
PAUSE
CLS
EXIT