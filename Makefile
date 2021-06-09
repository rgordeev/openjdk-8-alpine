ifndef TAG
TAG=liberica-openjdk-alpine-11.0.11-9
endif
build:
	docker build . -t 2chat/openjdk:$(TAG)

push: build
	docker push 2chat/openjdk:$(TAG)
