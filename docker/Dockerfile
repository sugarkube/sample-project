FROM python:3-alpine

ARG SUGARKUBE_VERSION=0.8.0

RUN apk -v --upgrade --no-cache add \
  bash \
  jq \
  git \
  wget \
  && \
  pip3 --no-cache-dir install -U awscli \
  && \
  apk add cfssl --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted \
  && \
  wget https://github.com/sugarkube/sugarkube/releases/download/${SUGARKUBE_VERSION}/sugarkube-amd64 -O /usr/local/bin/sugarkube \
  && \
  chmod +x /usr/local/bin/sugarkube
