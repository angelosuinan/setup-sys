REPO_HOST=git@github.com
REPO_USER=angelosuinan
REPO_URL=${REPO_HOST}:/${REPO_USER}
BRANCH=development

clone-auth:
	echo ${REPO_URL}
	git clone -b ${BRANCH} --single-branch ${REPO_URL}/auth-sys auth

clone-attendance:
	echo ${REPO_URL}
	git clone -b ${BRANCH} --single-branch ${REPO_URL}/attendance-sys attendance

setup:
	-make clone-auth
	-make clone-attendance

COMPOSE_FILE ?= 'docker-compose.yml'
COMPOSE_CMD = docker-compose -f $(COMPOSE_FILE)

COMPOSE_RUN = $(COMPOSE_CMD) run --rm

up:
	$(COMPOSE_CMD) up -d

build:
	$(COMPOSE_CMD) build

log-auth:
	$(COMPOSE_CMD) logs --tail 10 -f auth

log-attendance:
	$(COMPOSE_CMD) logs --tail 10 -f attendance

log-db:
	$(COMPOSE_CMD) logs --tail 10 -f db

restart-auth:
	$(COMPOSE_CMD) restart auth

restart-attendance:
	$(COMPOSE_CMD) restart attendance

restart-db:
	$(COMPOSE_CMD) restart db
