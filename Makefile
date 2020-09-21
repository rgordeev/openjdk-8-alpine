ifndef TAG
TAG=liberica-openjre-alpine-8u262
endif
build:
	docker build . -t 2chat/openjdk:$(TAG)

push: build
	docker push 2chat/openjdk:$(TAG)
