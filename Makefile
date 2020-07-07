ifndef TAG
TAG=8-jdk-alpine
endif
build:
	docker build . -t 2chat/openjdk:$(TAG)

push: build
	docker push 2chat/openjdk:$(TAG)
