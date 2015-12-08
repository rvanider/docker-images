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
    rm -rf /var/cache/yum/* && \
    wget -q -O /usr/local/bin/jq https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 &&
    chmod +x /usr/local/bin/jq
