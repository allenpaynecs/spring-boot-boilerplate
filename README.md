# spring-boot-boilerplate
Simple Spring Boot boilerplate to set up the application, contains a database and the service in docker containers.

The end goal of this project will be to have a boilerplate that is easily copied into a new repository, for very quick starting of new Spring Boot projects.

# Prerequisites
1. A Java Development Kit (JDK) and Java Runtime Environment (JRE) for Java Version 26.
2. An IDE of your choosing [I use IntelliJ](https://www.jetbrains.com/idea/)
3. [Docker](https://www.docker.com/products/docker-desktop/)
4. [Git](https://git-scm.com/install/windows) 
5. [Maven](https://maven.apache.org/download.cgi)


# Instruction For Use
1. Fork and Pull the code
2. run `mvn clean package` - to generate the .JAR file which will be deployed to docker.
3. run `docker compose up` - this uses the docker-compose file, sets up the postgres and application containers. The application image is generated from the provided Dockerfile, whereas the postgres container uses a publicly available image.
4. You will now have 2 docker containers running with your application in one, and the database in another.
