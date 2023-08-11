.PHONY: build
start: build up bash

build:
	docker-compose build do --build-arg USERNAME=$(USER)

up:
	docker-compose up -d do

down:
	docker-compose down

bash:
	docker-compose exec -u $(shell id -u $(USER)) do /bin/bash
