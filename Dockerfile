# Development container
#
# version 0.0.1

# basic info
FROM ubuntu:12.04
MAINTAINER Tim Schindler <tim@catalyst-zero.com>

# update system
RUN apt-get update
RUN apt-get -y install git openssh-server curl wget ack-grep

# setup ssh
RUN mkdir /var/run/sshd
RUN mkdir -p /.ssh
RUN touch /.ssh/authorized_keys
ADD ./sshd_config /etc/ssh/sshd_config
