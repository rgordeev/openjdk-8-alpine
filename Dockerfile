FROM openjdk:8-jdk-slim

RUN apt-get update -y \
  && apt-get install -y ttf-dejavu \
  && apt-get install -y font-manager \
  && apt-get install -y postgresql-client-11 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN apt-get update -y \ 
  && apt-get install -y locales locales-all \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN locale-gen ru_RU.UTF-8 && dpkg-reconfigure locales

ENV LANG=ru_RU.UTF-8 \
    LANGUAGE=ru_RU.UTF-8 \
	LC_ALL=ru_RU.UTF-8 \
    SET_CONTAINER_TIMEZONE=true \
    CONTAINER_TIMEZONE=Europe/Moscow

