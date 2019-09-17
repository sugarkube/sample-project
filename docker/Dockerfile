FROM python:3-alpine

ARG SUGARKUBE_VERSION=0.8.0
ARG KOPS_VERSION=1.13.0
ARG KUBECTL_VERSION=v1.13.0
ARG EKSCTL_VERSION=0.5.3
ARG MINIKUBE_VERSION=v1.3.1

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
    chmod +x /usr/local/bin/sugarkube \
  && \
    wget https://github.com/kubernetes/kops/releases/download/${KOPS_VERSION}/kops-linux-amd64 -O /usr/local/bin/kops \
  && \
    chmod +x /usr/local/bin/kops \
  && \
    wget https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl \
  && \
    chmod +x /usr/local/bin/kubectl \
  && \
    wget https://github.com/weaveworks/eksctl/releases/download/${EKSCTL_VERSION}/eksctl_Linux_amd64.tar.gz -O /tmp/eksctl.tgz \
  && \
    tar x -C /tmp -f /tmp/eksctl.tgz \
  && \
    mv /tmp/eksctl /usr/local/bin/ \
  && \
    rm /tmp/eksctl.tgz \
  && \
    chmod +x /usr/local/bin/eksctl \
  && \
    wget https://storage.googleapis.com/minikube/releases/${MINIKUBE_VERSION}/minikube-linux-amd64 -O /usr/local/bin/minikube \
  && \
    chmod +x /usr/local/bin/minikube
