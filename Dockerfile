FROM openjdk:8u201-jre-alpine

ENV TZ=Europe/Moscow
RUN apk --update add postgresql-client tzdata curl \
    && cp /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone \
    && apk del tzdata \
    && rm -rf /var/cache/apk/*

