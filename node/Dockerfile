FROM ryanv/java:latest

ENV VERSION=4.3.0

RUN cd /opt && \
    wget -q https://nodejs.org/dist/v${VERSION}/node-v${VERSION}-linux-x64.tar.xz && \
    tar xf node-v${VERSION}-linux-x64.tar.xz && \
    rm node-v${VERSION}-linux-x64.tar.xz && \
    ln -s node-v${VERSION}-linux-x64 node && \
    export PATH=/opt/node/bin:$PATH && \
    npm -g upgrade npm && \
    npm -g install nodemon && \
    npm -g install bunyan && \
    echo 'export PATH=/opt/node/bin:$PATH' > /etc/profile.d/node.sh
