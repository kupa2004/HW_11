FROM tomcat:latest
ENTRYPOINT ["catalina.sh", "jpda", "run"]
