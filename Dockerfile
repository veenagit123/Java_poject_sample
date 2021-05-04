
FROM openjdk:8-jdk-alpine
EXPOSE 8080
ARG JAR_FILE=target/original-gs-maven-0.1.0.jar
ADD ${JAR_FILE} my.jar
ENTRYPOINT ["java","-jar","/my.jar"]
CMD ["/bin/bash"]
