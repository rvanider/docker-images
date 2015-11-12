FROM oraclelinux:6.7
MAINTAINER ryanv
RUN yum -y update && \
    yum -y install \
            curl wget tar xz zip unzip telnet \
            which \
            gcc make g++ build-essential libc6-dev tcl && \
    yum -y clean all && \
    rm -rf /var/cache/yum/*
