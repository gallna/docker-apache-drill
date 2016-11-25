SHELL = /bin/bash

NS = hub.docker.com
NAME = apache-drill

RED=$(shell tput setaf 1)
BLUE=$(shell tput setaf 4)
GREEN=$(shell tput setaf 2)
NORMAL=$(shell tput sgr0)

.PHONY : build-all push-all release-all
.DEFAULT_GOAL := build-all

SUBDIRS := sqlline drillbit
### docker ###
build-all:
	@TAG=latest $(MAKE) docker-build;
	@for dir in $(SUBDIRS); do $(MAKE) -C "$$dir" build; done

push-all:
	@TAG=latest $(MAKE) docker-push;
	@for dir in $(SUBDIRS); do $(MAKE) -C "$$dir" push; done

release-all:
	@for dir in $(SUBDIRS); do $(MAKE) -C "$$dir" release; done

build:

push:

release:

### docker ###
docker-build:
	docker build -t $(NS)/$(NAME):$(TAG) .
	@printf "$(GREEN) %s $(NORMAL)\n" "$(NS)/$(NAME):$(TAG)"

docker-push:
	docker push $(NS)/$(NAME):$(TAG)
	@printf "$(GREEN) %s $(NORMAL)\n" "$(NS)/$(NAME):$(TAG)"
