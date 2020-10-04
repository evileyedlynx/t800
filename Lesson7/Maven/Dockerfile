FROM maven:3.3-jdk-8
RUN apt update
RUN apt install git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN mkdir /home/user
RUN cp /boxfuse-sample-java-war-hello/* /home/user/