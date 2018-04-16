FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8
ENV GOVERSION 1.10.1
ENV GOROOT /opt/go
ENV GOPATH /root/.go

#get updates && install go 1.10
RUN apt-get update && \
  apt-get dist-upgrade -y && \
  apt-get install -y git wget  && \
  cd /opt && wget https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz && \
  tar zxf go${GOVERSION}.linux-amd64.tar.gz && rm go${GOVERSION}.linux-amd64.tar.gz && \
  ln -s /opt/go/bin/go /usr/bin/ && \
  mkdir $GOPATH
