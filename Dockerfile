FROM tomcat:latest
RUN apt-get update
ADD /usr/local/tomcat/webapps/hello-1.0.war /usr/local/tomcat/webapps
ENTRYPOINT ["catalina.sh", "jpda", "run"]
