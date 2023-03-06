FROM ubuntu

EXPOSE 5244

WORKDIR /opt/alist

USER root

COPY entrypoint.sh /opt/alist

RUN apt-get update && \
    apt-get install -y wget && \
            curl unzip iproute2 systemctl && \
    cd /opt/alist

ENTRYPOINT [ "/usr/bin/bash", "entrypoint.sh" ]
