FROM ubuntu:14.04
MAINTAINER Shisei Hanai<ruimo.uno@gmail.com>

RUN apt-get update
RUN apt-get -y install software-properties-common python-software-properties
RUN add-apt-repository ppa:openjdk-r/ppa
RUN apt-get update
RUN apt-get -y install openjdk-8-jdk

RUN update-alternatives --display java
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

ADD profile /profile

CMD ["/bin/bash", "--rcfile", "/profile", "-i"]
