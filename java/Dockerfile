#
# droidme/java
#

# Based on droidme/linux
FROM droidme/linux
MAINTAINER droidme, droidme.io

# Download from: http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
ADD jdk-8u51-linux-x64.tar.gz /opt

# Envs
ENV JAVA_HOME /opt/jdk1.8.0_51/
ENV PATH "$PATH":/${JAVA_HOME}/bin:.:

# Add the nashorns
RUN \
  ln -s /${JAVA_HOME}/bin/jjs /usr/bin/jjs

# Define default command
CMD ["bash"]
