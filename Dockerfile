FROM golang:latest

RUN apt-get update && \
    apt-get install -y curl wget tar glibc-source && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN wget -O lamina1.latest.ubuntu-latest.tar.gz https://lamina1.github.io/lamina1/lamina1.latest.ubuntu-latest.tar.gz && \
    tar xvf lamina1.latest.ubuntu-latest.tar.gz && \
    rm lamina1.latest.ubuntu-latest.tar.gz

ENTRYPOINT ["/app/lamina1/lamina1-node"]
