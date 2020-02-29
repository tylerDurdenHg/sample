FROM openjdk:8
MAINTAINER tylerdurdenhg
VOLUME /tmp
WORKDIR /src/main/java
COPY ./target/sample.jar sample.jar
EXPOSE 8080 8000
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","sample.jar"]