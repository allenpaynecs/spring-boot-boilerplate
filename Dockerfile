FROM eclipse-temurin:26-alpine
ARG JAR_FILE=target/application_name*.jar
ARG PROPERTY_FILE=target/classes/application.yml
COPY ${JAR_FILE} app.jar
RUN mkdir /config
COPY ${PROPERTY_FILE} /config/application.yml
ENTRYPOINT ["java", "-jar", "app.jar"]