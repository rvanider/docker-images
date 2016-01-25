FROM ryanv/oel67vc:latest

RUN yum -y install java-1.8.0 && \
    yum -y clean all && \
    rm -rf /var/cache/yum/* && \
    sed -i 's|securerandom.source=file:/dev/random|securerandom.source=file:/dev/urandom|g' /usr/lib/jvm/jre/lib/security/java.security && \
    echo 'java.net.preferIPv4Stack=true' >> /usr/lib/jvm/jre/lib/net.properties

