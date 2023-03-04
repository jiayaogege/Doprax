FROM ubuntu

EXPOSE 5422

WORKDIR /opt/alist

USER root

COPY entrypoint.sh ./

RUN apt-get update && apt-get install -y wget curl unzip systemd && wget https://github.com/alist-org/alist/releases/download/v3.9.2/alist-linux-amd64.tar.gz && tar -zxvf alist-linux-amd64.tar.gz && chmod +x alist && ./alist server
