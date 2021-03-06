FROM bellsoft/liberica-openjdk-alpine:11.0.11-9

ENV TZ=Europe/Moscow
RUN apk --no-cache add curl tzdata \ 
    && cp /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone \
    && apk del tzdata
