FROM python:3-alpine

ARG SUGARKUBE_VERSION=0.10.0
ARG KOPS_VERSION=1.13.0
ARG KUBECTL_VERSION=v1.13.0
ARG EKSCTL_VERSION=0.5.3
ARG HELM_VERSION=2.14.3
ARG TERRAFORM_VERSION=0.12.9

RUN apk -v --upgrade --no-cache add \
    bash \
    jq \
    git \
    graphviz \
    openssh-client \
    wget \
  && \
    pip3 --no-cache-dir install -U awscli \
  && \
    apk add cfssl --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted \
  && \
    wget https://github.com/sugarkube/sugarkube/releases/download/${SUGARKUBE_VERSION}/sugarkube-linux-amd64 -O /usr/local/bin/sugarkube \
  && \
    mkdir /etc/sugarkube \
  && \
    wget https://raw.githubusercontent.com/sugarkube/sugarkube/${SUGARKUBE_VERSION}/sugarkube-conf-basic.yaml -O /etc/sugarkube/sugarkube-conf.yaml \
  && \
    wget https://github.com/kubernetes/kops/releases/download/${KOPS_VERSION}/kops-linux-amd64 -O /usr/local/bin/kops \
  && \
    wget https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz -O /tmp/helm.tgz \
  && \
    tar x -C /tmp -f /tmp/helm.tgz \
  && \
    mv /tmp/linux-amd64/helm /usr/local/bin/ \
  && \
    wget https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl \
  && \
    wget https://github.com/weaveworks/eksctl/releases/download/${EKSCTL_VERSION}/eksctl_Linux_amd64.tar.gz -O /tmp/eksctl.tgz \
  && \
    tar x -C /tmp -f /tmp/eksctl.tgz \
  && \
    mv /tmp/eksctl /usr/local/bin/ \
  && \
    wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -O /tmp/terraform.zip \
  && \
    unzip -d /usr/local/bin/ /tmp/terraform.zip \
  && \
    chmod +x /usr/local/bin/* \
  && \
    rm -rf /tmp/*

RUN mkdir /root/Downloads \
  && \
    mkdir /root/.ssh \
  && \
    chmod 0700 /root/.ssh
