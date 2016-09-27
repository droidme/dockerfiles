# droidme/java
# oracle jre server 8
#
FROM centos:7

MAINTAINER droidme, droidme.io

RUN yum update -y \
  && yum -y install unzip \
  && yum clean all

ENV JAVA_PKG=server-jre-8u*-linux-x64.tar.gz \
    JAVA_HOME=/usr/java/default \
    PATH=$PATH:/usr/java/default/bin

ADD $JAVA_PKG /usr/java

RUN mv $(ls -1 -d /usr/java/*) $JAVA_HOME
