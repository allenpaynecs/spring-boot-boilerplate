# spring-boot-boilerplate
Simple Spring Boot boilerplate to quickly start new projects without the hassle of setting everything up! This repository contains all the necessary code to stand up 2 docker containers, 1 for your application, and 1 for the application's database. Flyway is also supported for quick and easy database versioning.

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

Once you have verified that the containers spin up successfully, you can go ahead and change the occurences of "application_name" to whatever you want to call your application. You will need to do so in the following files:
1. pom.xml
2. Dockerfile
3. docker-compose

If you miss one of the above files and/or occurrences, the containers will not build properly, so be sure to replace all occurrences before attempting to stand up the containers.
