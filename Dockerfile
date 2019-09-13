FROM openjdk:8-jre
COPY build/libs/calculator-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8765
ENTRYPOINT ["java", "-jar", "app.jar"]