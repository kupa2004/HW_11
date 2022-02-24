FROM tomcat:latest
RUN apt-get update
RUN apt-get install default-jdk -y default-jdk
RUN apt-get install maven -y maven
ENTRYPOINT ["catalina.sh", "jpda", "run"]
