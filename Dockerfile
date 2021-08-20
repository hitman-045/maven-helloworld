FROM tomcat
MAINTAINER sumanth
ARG CONT_IMG_VER
WORKDIR /usr/local/tomcat
EXPOSE 8080
COPY ./maven-helloworld/server/target/server.jar /usr/local/tomcat/webapps
