REPO_HOST=git@github.com
REPO_USER=angelosuinan
REPO_URL=${REPO_HOST}:/${REPO_USER}
BRANCH=development

clone-auth:
	echo ${REPO_URL}
	git clone -b ${BRANCH} --single-branch ${REPO_URL}/auth-sys auth

clone-production:
	git clone -b ${BRANCH} --single-branch ${REPO_URL}/production-sys production

clone-ordering:
	git clone -b ${BRANCH} --single-branch ${REPO_URL}/ordering-sys ordering

clone-inventory:
	git clone -b ${BRANCH} --single-branch ${REPO_URL}/inventory-sys inventory

clone-attendance:
	git clone -b ${BRANCH} --single-branch ${REPO_URL}/attendance-sys attendance

setup:
	-make clone-auth
	-make clone-production
	-make clone-ordering
	-make clone-inventory
	-make clone-attendance

COMPOSE_FILE ?= 'docker-compose.yml'
COMPOSE_CMD = docker-compose -f $(COMPOSE_FILE)

COMPOSE_RUN = $(COMPOSE_CMD) run --rm

run:
	$(COMPOSE_CMD) up -d

build:
	$(COMPOSE_CMD) build

log-auth:
	$(COMPOSE_CMD) logs --tail 10 -f auth

log-production:
	$(COMPOSE_CMD) logs --tail 10 -f production

log-inventory:
	$(COMPOSE_CMD) logs --tail 10 -f inventory

log-ordering:
	$(COMPOSE_CMD) logs --tail 10 -f ordering

log-db:
	$(COMPOSE_CMD) logs --tail 10 -f db

restart-auth:
	$(COMPOSE_CMD) restart auth

restart-attendance:
	$(COMPOSE_CMD) restart attendance

restart-production:
	$(COMPOSE_CMD) restart production

restart-inventory:
	$(COMPOSE_CMD) restart inventory

restart-ordering:
	$(COMPOSE_CMD) restart ordering

restart-db:
	$(COMPOSE_CMD) restart db
