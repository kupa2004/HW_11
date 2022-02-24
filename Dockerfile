FROM tomcat:latest
RUN apt-get update
RUN apt-get install docker.io -y 
COPY /var/lib/jenkins/workspace/test/target/hello-1.0.war /usr/local/tomcat/webapps
ENTRYPOINT ["catalina.sh", "jpda", "run"]
