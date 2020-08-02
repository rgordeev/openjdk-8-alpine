ifndef TAG
TAG=8u201-jre-alpine-without-psql
endif
build:
	docker build . -t 2chat/openjdk:$(TAG)

push: build
	docker push 2chat/openjdk:$(TAG)
