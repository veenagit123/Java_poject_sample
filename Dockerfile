
FROM java:8-jdk-alpine

COPY ./target/original-gs-maven-0.1.0.jar /usr/app/

WORKDIR /usr/app

RUN sh -c 'touch original-gs-maven-0.1.0.jar'

ENTRYPOINT ["java","-jar","original-gs-maven-0.1.0.jar"]
