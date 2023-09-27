FROM jenkins/jenkins:jdk17
USER root
RUN apt-get update
USER jenkins

RUN docker build . -t cont_jenkins:0.1.0
RUN docker run --name containerjenkins -p 8085:8080 -d cont_jenkins:0.1.0  