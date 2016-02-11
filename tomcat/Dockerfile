FROM ryanv/java:latest

ENV MAJOR=8
ENV VERSION=8.0.32
ENV URL=https://www.apache.org/dist/tomcat/tomcat-$MAJOR/v$VERSION/bin/apache-tomcat-$VERSION.tar.gz

RUN cd /opt && \
    wget -q $URL && \
    tar xf apache-tomcat-${VERSION}.tar.gz -C /opt/ && \
    rm apache-tomcat-${VERSION}.tar.gz && \
    ln -s apache-tomcat-${VERSION} tomcat && \
    adduser tomcat && \
    chown -R tomcat:tomcat tomcat && \
    chown -R tomcat:tomcat apache-tomcat-$VERSION

ADD tomcat-users.xml /opt/tomcat/conf/tomcat-users.xml
ADD tomcat.sh /etc/profile.d/tomcat.sh

EXPOSE 8080

USER tomcat

ENTRYPOINT ["/opt/tomcat/bin/catalina.sh", "run"]
