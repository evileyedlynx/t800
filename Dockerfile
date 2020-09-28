FROM ubuntu:bionic
LABEL description=Test_Boxfuse_compilation
RUN apt update -y
RUN apt install default-jdk -y
RUN apt install maven -y
RUN apt install tomcat8 -y
RUN apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello/
RUN mvn package
RUN cp boxfuse-sample-java-war-hello/target/*.war /var/lib/tomcat8/webapps/
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
&& apt purge git