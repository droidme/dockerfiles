#
# droidme/linux
#

FROM centos:latest
MAINTAINER droidme, droidme.io

# Install
RUN \
  yum -y install unzip && \
  yum -y install tar && \
  yum -y clean all

# Add some files
ADD .bashrc /root/.bashrc

# Env
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
