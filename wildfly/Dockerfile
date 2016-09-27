#
# droidme/wildfly
#

# Based on droidme/java
FROM droidme/java:8
MAINTAINER droidme, droidme.io

# Envs
ENV VERSION 10.1.0.Final
ENV INSTALL_DIR /opt
ENV WILDFLY_HOME ${INSTALL_DIR}/wildfly-${VERSION}
ENV DEPLOYMENT_DIR ${WILDFLY_HOME}/standalone/deployments/

RUN curl -O https://download.jboss.org/wildfly/${VERSION}/wildfly-${VERSION}.zip \
	&& unzip wildfly-${VERSION}.zip -d ${INSTALL_DIR} \
	&& rm ${WILDFLY_HOME}/bin/standalone.conf \
	&& rm wildfly-${VERSION}.zip

ADD standalone.conf ${WILDFLY_HOME}/bin/
RUN chmod a+x ${WILDFLY_HOME}/bin/standalone.sh
ENTRYPOINT ${WILDFLY_HOME}/bin/standalone.sh -b=0.0.0.0
EXPOSE 8080

