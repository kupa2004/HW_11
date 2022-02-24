FROM tomcat:latest
RUN apt-get update
ADD /var/lib/jenkins/workspace/test/target/hello-1.0.war /usr/local/tomcat/webapps
ENTRYPOINT ["catalina.sh", "jpda", "run"]
