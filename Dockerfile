FROM tomcat
MAINTAINER sumanth
ARG CONT_IMG_VER
WORKDIR /usr/local/tomcat
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
EXPOSE 8080
COPY mavenhelloworld.war /usr/local/tomcat/webapps
