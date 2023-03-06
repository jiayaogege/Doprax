FROM ubuntu
WORKDIR /opt/alist
USER root
EXPOSE 5244
RUN cd /opt/alist && \
    ./alist server
