FROM openjdk:8
MAINTAINER tylerdurdenhg
VOLUME /tmp
WORKDIR /src/main/java
ADD ./target/sample.jar sample.jar
EXPOSE 8080 80
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","sample.jar"]