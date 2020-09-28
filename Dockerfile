FROM ubuntu:bionic
LABEL "Test_Boxfuse_compilation"
RUN apt update -y
&& apt install default-jdk -y
&& apt install maven -y
&& apt install tomcat8 -y
&& apt install git -y
&& git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
&& cd ~/boxfuse-sample-java-war-hello/
&& mvn package
&& cp ~/boxfuse-sample-java-war-hello/*.war /var/lib/tomcat8/webapps/
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
&& apt purge git