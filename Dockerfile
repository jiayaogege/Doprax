FROM ubuntu
WORKDIR /opt/alist
USER root
EXPOSE 5244
RUN systemctl start alist && \
    systemctl status alist
