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

RUN echo "Europe/Moscow" > /etc/timezone
RUN ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime
RUN dpkg-reconfigure -f noninteractive tzdata

ENV LANG=ru_RU.UTF-8 \
    LANGUAGE=ru_RU.UTF-8 \
	LC_ALL=ru_RU.UTF-8

