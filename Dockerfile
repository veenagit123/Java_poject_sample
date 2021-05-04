
FROM java:8-jdk-alpine
EXPOSE 80

COPY ./target/gs-maven-0.1.0.jar /usr/app/

WORKDIR /usr/app

RUN sh -c 'touch gs-maven-0.1.0.jar'

ENTRYPOINT ["java","-jar","gs-maven-0.1.0.jar"]
