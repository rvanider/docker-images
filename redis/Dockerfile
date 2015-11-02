FROM ryanv/oel67:latest

RUN wget -q http://download.redis.io/redis-stable.tar.gz -O - | tar -xvz && \
    (cd /redis-stable && make) && \
    mkdir -p /redis-data

#NOTE: unable to "sysctl vm.overcommit_memory=1" in the image

#RUN (cd /redis-stable && make)
#RUN (cd /redis-stable && make test)
#RUN mkdir -p /redis-data

VOLUME ["/redis-data"]
EXPOSE 6379

ENTRYPOINT ["/redis-stable/src/redis-server"]
CMD ["--dir", "/redis-data"]
