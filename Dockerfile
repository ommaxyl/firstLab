FROM ubuntu:latest
LABEL app="myapp"
RUN apt-get update -y && apt-get install openjdk-11-jdk -y && apt-get install wget -y && mkdir /usr/local/tomcat
RUN wget https://www-eu.apache.org/dist/tomcat/tomcat-10/v10.1.13/bin/apache-tomcat-10.1.13.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz /tmp/tomcat.tar.gz && cp -Rv /tmp/apache-tomcat-10.1.13/* /usr/local/tomcat/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run


