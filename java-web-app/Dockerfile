
FROM maven:3.9.6-sapmachine-21 AS build

WORKDIR /home/app/

COPY . /home/app/

RUN mvn clean package

FROM openjdk:21-slim

COPY --from=build /home/app/target/java-web-app-0.0.1-SNAPSHOT.jar /usr/local/lib/app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/usr/local/lib/app.jar"]