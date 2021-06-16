FROM ubuntu:20.04

RUN apt update && apt install  openssh-server sudo -y

RUN groupadd sshgroup && useradd -ms /bin/bash -g sshgroup james.cooper

ARG home=/home/james.cooper
RUN mkdir $home/.ssh
COPY ssh/k8s_test.pub $home/.ssh/authorized_keys
RUN chown james.cooper:sshgroup $home/.ssh/authorized_keys && \
    chmod 600 $home/.ssh/authorized_keys

RUN service ssh start && /bin/bash

