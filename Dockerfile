# Development container
#
# version 0.0.1

# basic info
FROM ubuntu:12.04
MAINTAINER Tim Schindler <tim@catalyst-zero.com>

# update system
apt-get update
apt-get install git openssh-server curl wget ack-grep

# setup ssh
RUN mkdir /var/run/sshd
RUN mkdir -p /.ssh
RUN touch /.ssh/authorized_keys
ADD ./sshd_config /etc/ssh/sshd_config

# install application
RUN mkdir -p /opt/dockzero-app-service/
ADD ./dockzero-app-service /opt/dockzero-app-service/dockzero-app-service

# expose container port
EXPOSE 22

# run the service
CMD ["/usr/sbin/sshd", "-D"]
