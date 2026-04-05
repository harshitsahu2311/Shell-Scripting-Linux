DOCKER_COMPOSE := docker-compose  # Variable Initialization
OS := $(shell uname)

ifeq ($(OS),Linux)
build:
	@echo "Running in $(OS)"
	$(DOCKER_COMPOSE) build
else
build:
	@echo "Not running on Linux"
endif

up:
	$(DOCKER_COMPOSE) up -d

down:
	$(DOCKER_COMPOSE) down

clean:
	docker system prune
