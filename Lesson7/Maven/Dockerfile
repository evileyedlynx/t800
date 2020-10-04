#FROM maven:3.3-jdk-8
FROM ubuntu:bionic
LABEL description=Clean_Maven_build
RUN apt update
RUN apt install default-jdk -y
RUN apt install maven -y
RUN apt install git -y
RUN mkdir /home/user
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /home/user
WORKDIR /home/user
RUN mvn package