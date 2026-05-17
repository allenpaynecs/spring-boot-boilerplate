FROM eclipse-temurin:26-alpine
ARG JAR_FILE=target/demo*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]