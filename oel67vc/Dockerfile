FROM ryanv/oel67:latest
# https://releases.hashicorp.com/consul/0.6.3/consul_0.6.3_linux_amd64.zip
# https://releases.hashicorp.com/consul-replicate/0.2.0/consul-replicate_0.2.0_linux_amd64.zip
# https://releases.hashicorp.com/consul-template/0.12.2/consul-template_0.12.2_linux_amd64.zip
# https://releases.hashicorp.com/envconsul/0.6.0/envconsul_0.6.0_linux_amd64.zip
# https://releases.hashicorp.com/vault/0.4.1/vault_0.4.1_linux_amd64.zip
#
# https://releases.hashicorp.com/consul/0.6.3/consul_0.6.3_web_ui.zip

ENV CONSUL_VERSION=0.6.3
ENV ENVCONSUL_VERSION=0.6.1
ENV CONSUL_REPLICATE_VERSION=0.2.0
ENV CONSUL_TEMPLATE_VERSION=0.13.0
ENV VAULT_VERSION=0.5.1

RUN cd /opt && \
    mkdir hashicorp && \
    cd hashicorp && \
    mkdir bin db log ui && \
    cd bin && \
    wget -q -O - https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip | python -c "import zipfile,sys,StringIO;zipfile.ZipFile(StringIO.StringIO(sys.stdin.read())).extractall('.')" && \
    wget -q -O - https://releases.hashicorp.com/consul-replicate/${CONSUL_REPLICATE_VERSION}/consul-replicate_${CONSUL_REPLICATE_VERSION}_linux_amd64.zip | python -c "import zipfile,sys,StringIO;zipfile.ZipFile(StringIO.StringIO(sys.stdin.read())).extractall('.')" && \
    wget -q -O - https://releases.hashicorp.com/consul-template/${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip | python -c "import zipfile,sys,StringIO;zipfile.ZipFile(StringIO.StringIO(sys.stdin.read())).extractall('.')" && \
    wget -q -O - https://releases.hashicorp.com/envconsul/${ENVCONSUL_VERSION}/envconsul_${ENVCONSUL_VERSION}_linux_amd64.zip | python -c "import zipfile,sys,StringIO;zipfile.ZipFile(StringIO.StringIO(sys.stdin.read())).extractall('.')" && \
    wget -q -O - https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip | python -c "import zipfile,sys,StringIO;zipfile.ZipFile(StringIO.StringIO(sys.stdin.read())).extractall('.')" && \
    chmod +x * && \
    cd ../ui && \
    wget -q -O - https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_web_ui.zip | python -c "import zipfile,sys,StringIO;zipfile.ZipFile(StringIO.StringIO(sys.stdin.read())).extractall('.')" && \
    echo 'export PATH=$PATH:/opt/hashicorp/bin' > /etc/profile.d/hashicorp.sh

ADD ./etc /opt/hashicorp/etc/
