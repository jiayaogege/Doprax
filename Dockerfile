FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"
EXPOSE 5244

WORKDIR /opt/alist

USER root

COPY entrypoint.sh /opt/alist/

RUN apt-get update && \
    apt-get install -y wget curl unzip iproute2 systemctl
ENTRYPOINT [ "/opt/alist/entrypoint.sh" ]
