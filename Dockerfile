FROM maven:3.8.1-openjdk-17-slim
WORKDIR /app/src
COPY src/ ./src
COPY pom.xml
RUN mvn clean package
WORKDIR /Opt/
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.80/bin/apache-tomcat-9.0.80.tar.gz
