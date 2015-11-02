FROM ryanv/java:latest

RUN cd /opt && \
    wget -q -O - https://www.cordra.org/unconfiguredInstanceDownload | python -c "import zipfile,sys,StringIO;zipfile.ZipFile(StringIO.StringIO(sys.stdin.read())).extractall('.')" && \
    echo 'export JAVA_TOOL_OPTIONS=-Djava.net.preferIPv4Stack=true' > /etc/profile.d/cordra.sh && \
    mv `ls -d cordra-*` cordra && \
    chmod u+x /opt/cordra/startup && \
    chmod u+x /opt/cordra/shutdown && \
    chmod u+x /opt/cordra/sw/bin/do-server && \
    echo '/opt/cordra/sw/bin/do-server $*' > /opt/cordra/run && \
    chmod u+x /opt/cordra/run
