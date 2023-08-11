.PHONY: build
start:
	find ./ -maxdepth 1 -type f -exec chmod 766 {} +
	./build

build:
	docker-compose build do --build-arg USERNAME=$(USER)

up:
	docker-compose up -d do

down:
	docker-compose down

bash:
	docker-compose exec -u $(shell id -u $(USER)) do /bin/bash
