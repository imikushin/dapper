FROM debian:jessie
RUN apt-get update && \
    apt-get -y --no-install-recommends install curl ca-certificates && \
    rm -rf /var/lib/apt/lists/*

RUN curl -sL https://get.docker.com/builds/Linux/x86_64/docker-1.9.1 > /usr/local/bin/docker
RUN chmod +x /usr/local/bin/docker

COPY bin/dapper /usr/local/bin/
