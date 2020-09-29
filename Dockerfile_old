FROM ubuntu:bionic
LABEL description=Test_Boxfuse_compilation
RUN apt update
RUN apt install default-jdk -y
RUN apt install maven -y
RUN apt install tomcat9 -y
RUN apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN apt-get install dialog apt-utils
RUN mkdir /usr/share/tomcat9/conf
RUN cp /etc/tomcat9/* /usr/share/tomcat9/conf
RUN mvn package -f /boxfuse-sample-java-war-hello/pom.xml
RUN cp boxfuse-sample-java-war-hello/target/*.war /var/lib/tomcat9/webapps/
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
EXPOSE 8080
CMD ["./usr/share/tomcat9/bin/startup.sh"]
CMD ["./usr/share/tomcat8/bin/catalina.sh", "run"]