FROM openjdk:8-jdk-alpine 

LABEL maintainer="waltonmax.github.io" 

RUN apk update && apk add curl bash tree tzdata

WORKDIR /app

COPY app .

RUN chmod -R 777 .

ENTRYPOINT ["java","-jar","/app/app.jar"]