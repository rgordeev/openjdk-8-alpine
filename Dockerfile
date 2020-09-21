FROM bellsoft/liberica-openjre-alpine:8u262

ENV TZ=Europe/Moscow
RUN apk --no-cache add curl tzdata \ 
    && cp /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone \
    && apk del tzdata
