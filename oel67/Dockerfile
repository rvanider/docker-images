FROM oraclelinux:6.7
MAINTAINER ryanv
RUN yum -y update && \
    yum -y install \
            curl wget telnet \
            tar xz bzip zip unzip \
            which \
            scl-utils \
            gcc make g++ build-essential libc6-dev tcl && \
    yum -y clean all && \
    rm -rf /var/cache/yum/*
