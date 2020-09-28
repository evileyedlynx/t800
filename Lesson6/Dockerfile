FROM tomcat:9.0
LABEL description=Test_Boxfuse_compilation
RUN apt update -y
RUN apt install default-jdk -y
RUN apt install maven -y

ADD boxfuse-sample-java-war-hello boxfuse-sample-java-war-hello

RUN mvn package -f /boxfuse-sample-java-war-hello/pom.xml
RUN cp boxfuse-sample-java-war-hello/target/*.war /usr/local/tomcat/webapps/
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
CMD ["catalina.sh", "run"]