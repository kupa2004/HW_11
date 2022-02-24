FROM tomcat:latest
ADD /usr/local/tomcat/webapps/hello-1.0.war /usr/local/tomcat/webapps
ENTRYPOINT ["catalina.sh", "jpda", "run"]
