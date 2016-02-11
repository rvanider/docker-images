FROM ryanv/java:latest

ENV VERSION=5.13.1

RUN cd /opt && \
    wget -q http://www.us.apache.org/dist/activemq/${VERSION}/apache-activemq-${VERSION}-bin.tar.gz && \
    tar xf apache-activemq-${VERSION}-bin.tar.gz -C /opt/ && \
    rm apache-activemq-${VERSION}-bin.tar.gz && \
    ln -s apache-activemq-${VERSION} activemq

EXPOSE 1883
EXPOSE 5672
EXPOSE 8161
EXPOSE 61613
EXPOSE 61614
EXPOSE 61616

ENTRYPOINT ["/opt/activemq/bin/activemq", "console"]