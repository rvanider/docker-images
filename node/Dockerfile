FROM ryanv/java:latest

RUN cd /opt && \
    wget -q https://nodejs.org/dist/v4.2.1/node-v4.2.2-linux-x64.tar.xz && \
    tar xf node-v4.2.2-linux-x64.tar.xz && \
    rm node-v4.2.2-linux-x64.tar.xz && \
    ln -s node-v4.2.2-linux-x64 node && \
    echo 'export PATH=/opt/node/bin:$PATH' > /etc/profile.d/node.sh

