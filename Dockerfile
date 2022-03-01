#собираем образ сборщика, после этого выполнить тегирование и пуш в репозиторий
FROM tomcat:latest

# Install pacakges
RUN apt-get update
RUN apt-get install fontconfig openjdk-11-jre -y

# Install ssh
RUN apt-get -y install openssh-client

# Confugure ssh client
COPY id_rsa /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa

RUN apt-get -y install maven && apt-get -y install docker.io
