FROM ryanv/java:latest

RUN cd /opt && \
    wget -q https://nodejs.org/dist/v4.2.6/node-v4.2.6-linux-x64.tar.xz && \
    tar xf node-v4.2.6-linux-x64.tar.xz && \
    rm node-v4.2.6-linux-x64.tar.xz && \
    ln -s node-v4.2.6-linux-x64 node && \
    export PATH=/opt/node/bin:$PATH && \
    npm -g upgrade npm && \
    npm -g install nodemon && \
    npm -g install bunyan && \
    echo 'export PATH=/opt/node/bin:$PATH' > /etc/profile.d/node.sh
