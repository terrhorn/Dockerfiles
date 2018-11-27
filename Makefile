.PHONY:

default: run

DIR?=

build:
	docker-compose build --no-cache --pull --force-rm $(DIR)
	docker tag terryhorner/$(DIR):latest terryhorner/$(DIR):latest

publish: build
	docker push terryhorner/$(DIR)

run:
	docker-compose -f docker-compose.yaml build --force-rm --pull $(DIR)
	docker-compose -f docker-compose.yaml run --rm $(DIR)
