FROM tomcat:latest
RUN apt-get update
RUN apt-get install docker.io -y 
ENTRYPOINT ["catalina.sh", "jpda", "run"]
