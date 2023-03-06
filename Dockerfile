FROM ubuntu
WORKDIR /opt/alist
USER root
EXPOSE 5244
RUN apt-get update && \
    apt-get install -y wget curl && \
    curl -fsSL "https://alist.nn.ci/v3.sh" | bash -s install
ENTRYPOINT [ "systemctl status alist" ]
