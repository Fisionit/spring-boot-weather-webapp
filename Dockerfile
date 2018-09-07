FROM openjdk:8-jdk-alpine

VOLUME /tmp
WORKDIR /app
COPY target/spring-boot-weather-webapp-0.0.1-SNAPSHOT.jar ./
ENTRYPOINT ["java","-Xms128m","-Xmx128m","-Djava.security.egd=file:/dev/./urandom","-jar","/app/spring-boot-weather-webapp-0.0.1-SNAPSHOT.jar"]