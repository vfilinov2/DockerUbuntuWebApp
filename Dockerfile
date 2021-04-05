FROM tomcat:latest
RUN apt update -y ;\
apt install git -y;\
apt update -y ;\
apt install default-jdk -y ;\
apt update -y ;\
apt install maven -y ;\
apt update -y ;\
mkdir /home/user/ ;\
cd /home/user ;\
git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git ;\
cd boxfuse-sample-java-war-hello ;\
mvn package ;\
apt remove maven -y
RUN cp /home/user/boxfuse-sample-java-war-hello/target/hello-1.0.war "$CATALINA_HOME"/webapps/



