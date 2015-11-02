FROM ryanv/java:latest
MAINTAINER ryanv

RUN cd /opt && \
    wget -q -O - https://www.cordra.org/unconfiguredInstanceDownload | python -c "import zipfile,sys,StringIO;zipfile.ZipFile(StringIO.StringIO(sys.stdin.read())).extractall('.')" && \
    echo 'export JAVA_TOOL_OPTIONS=-Djava.net.preferIPv4Stack=true' > /etc/profile.d/cordra.sh
