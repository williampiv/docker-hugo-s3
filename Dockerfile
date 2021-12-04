FROM ubuntu:21.10

ARG HUGO_VERSION=0.89.4

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y python3 python3-pip wget git \
  && pip3 install awscli \
  && wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.deb \
  && dpkg -i hugo_${HUGO_VERSION}_Linux-64bit.deb
