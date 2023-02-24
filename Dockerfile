FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y curl wget tar libc6 libc-bin && \
    rm -rf /var/lib/apt/lists/*

ENV GO_VERSION=1.19.6
ENV GO_ARCH=linux-amd64
RUN curl -O https://dl.google.com/go/go${GO_VERSION}.${GO_ARCH}.tar.gz && \
    tar -C /usr/local -xzf go${GO_VERSION}.${GO_ARCH}.tar.gz && \
    rm go${GO_VERSION}.${GO_ARCH}.tar.gz

ENV PATH="/usr/local/go/bin:${PATH}"

# WORKDIR /app

# RUN apt-get update && \
#     apt-get install -y curl wget tar glibc-source gcc g++ make libc6 libc-bin && \
#     rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN wget -O lamina1.latest.ubuntu-latest.tar.gz https://lamina1.github.io/lamina1/lamina1.latest.ubuntu-latest.tar.gz && \
    tar xvf lamina1.latest.ubuntu-latest.tar.gz && \
    rm lamina1.latest.ubuntu-latest.tar.gz
RUN chmod +x /app/lamina1/lamina1-node
EXPOSE 9651
ENTRYPOINT /app/lamina1/lamina1-node
