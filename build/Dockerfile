FROM ryanv/node:latest

RUN wget -q -O /etc/yum.repos.d/public-yum-ol6.repo http://public-yum.oracle.com/public-yum-ol6.repo && \
    yum -y update && \
    yum -y install scl-utils git policycoreutils-python && \
    yum -y --enablerepo=ol6_software_collections install devtoolset-3-gcc devtoolset-3-gcc-c++ && \
    yum -y clean all && \
    rm -rf /var/cache/yum/*
