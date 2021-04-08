
FROM ubuntu:20.04
ENV CATALINA_HOME /usr/local/tomcat
WORKDIR /tmp/at/

RUN mkdir -p "$CATALINA_HOME"
RUN ln -snf /usr/share/zoneinfo/Europe/Moscow /etc/localtime
RUN apt update  ;\
apt install git wget -y;\
apt update  ;\
apt install default-jdk -y ;\
apt update  ;\
apt install maven -y ;\
apt update ;\
git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git ./ ;\
#mvn package

#WORKDIR /tmp/at/
#RUN wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.45/bin/apache-tomcat-9.0.45.tar.gz -O tomcat.tar.gz ;\
#tar xvfz tomcat.tar.gz ;\
#cp -r ./apache-tomcat-9.0.45/* "$CATALINA_HOME" ;\
#cp ./target/hello-1.0.war "$CATALINA_HOME"/webapps ;\
#apt remove maven git wget -y ;\
apt update
EXPOSE 8080
#CMD $CATALINA_HOME/bin/catalina.sh run





