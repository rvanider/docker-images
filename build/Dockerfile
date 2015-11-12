FROM ryanv/node:latest

RUN wget -O /etc/yum.repos.d/public-yum-ol6.repo http://public-yum.oracle.com/public-yum-ol6.repo && \
    yum -y --enablerepo=ol6_software_collections install \
            scl-utils \
            devtoolset-3-gcc devtoolset-3-gcc-c++ \
            maven30 \
            git19 && \
    yum -y clean all && \
    rm -rf /var/cache/yum/*
