FROM tomcat:9.0
LABEL maintainer="javier@iespuerto.es"

ARG WAR_FILE=target/*.war

ADD ${WAR_FILE} /usr/local/tomcat/webapps/

EXPOSE 80
CMD ["catalina.sh", "run"]