include ../Makefile

TAG ?= drillbit

.PHONY : push build release
.DEFAULT_GOAL := build

release: build push

build: docker-build

push: docker-push
