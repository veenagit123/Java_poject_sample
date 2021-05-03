FROM openjdk:8-alpine

RUN apk update && apk /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/original-gs-maven-0.1.0.jar $PROJECT_HOME/my.jar

WORKDIR  $PROJECT_HOME

CMD java - jar my.jar
