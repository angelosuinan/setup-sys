REPO_HOST=git@github.com
REPO_USER=angelosuinan
REPO_URL=${REPO_HOST}:/${REPO_USER}
BRANCH=development

clone-web:
	echo ${REPO_URL}
	git clone -b ${BRANCH} --single-branch ${REPO_URL}/web-sys web

clone-attendance:
	echo ${REPO_URL}
	git clone -b ${BRANCH} --single-branch ${REPO_URL}/attendance-sys attendance

clone-dashboard:
	echo ${REPO_URL}
	git clone -b ${BRANCH} --single-branch ${REPO_URL}/dashboard-sys dashboard

setup:
	-make clone-web
	-make clone-attendance
	-make clone-dashboard

COMPOSE_FILE ?= 'docker-compose.yml'
COMPOSE_CMD = docker-compose -f $(COMPOSE_FILE)

COMPOSE_RUN = $(COMPOSE_CMD) run --rm

up:
	$(COMPOSE_CMD) up -d

build:
	$(COMPOSE_CMD) build

log-web:
	$(COMPOSE_CMD) logs --tail 10 -f web

log-attendance:
	$(COMPOSE_CMD) logs --tail 10 -f attendance

log-db:
	$(COMPOSE_CMD) logs --tail 10 -f db

log-dashboard:
	$(COMPOSE_CMD) logs --tail 10 -f dashboard

restart-web:
	$(COMPOSE_CMD) restart web

restart-attendance:
	$(COMPOSE_CMD) restart attendance

restart-db:
	$(COMPOSE_CMD) restart db

restart-dashboard:
	$(COMPOSE_CMD) restart dashboard
