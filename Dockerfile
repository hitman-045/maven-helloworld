FROM tomcat
MAINTAINER sumanth
ARG CONT_IMG_VER
WORKDIR /usr/local/tomcat
EXPOSE 8080
COPY /var/lib/jenkins/workspace/maven-helloworld/server/target/server.jar /usr/local/tomcat/webapps
