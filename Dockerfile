FROM openjdk:8-jre-alpine3.9

EXPOSE 8080

COPY ./target/gs-maven-0.1.0.jar /usr/app/

WORKDIR /usr/app


CMD ["java","-jar","gs-maven-0.1.0.jar"]
