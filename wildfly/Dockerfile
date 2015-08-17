#
# droidme/wildfly
#

# Based on droidme/java
FROM droidme/java
MAINTAINER droidme, droidme.io

# Envs
ENV WILDFLY_VERSION 8.2.1.Final
ENV WILDFLY_HOME /opt/wildfly

ADD http://download.jboss.org/wildfly/${WILDFLY_VERSION}/wildfly-${WILDFLY_VERSION}.tar.gz /tmp/

RUN \
  tar -zxvf /tmp/wildfly-${WILDFLY_VERSION}.tar.gz -C /opt && \
  ln -s /opt/wildfly-${WILDFLY_VERSION} $WILDFLY_HOME && \
  chmod +x ${WILDFLY_HOME}/bin/standalone.sh && \
  ${WILDFLY_HOME}/bin/add-user.sh admin manage --silent

EXPOSE 8080 9990

CMD ["/opt/wildfly/bin/standalone.sh", "-b", "0.0.0.0","-bmanagement","0.0.0.0"]
