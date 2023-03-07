FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"
EXPOSE 5244
WORKDIR /opt/alist
USER root
ADD v3.sh /v3.sh
RUN chmod +x /v3.sh
CMD /v3.sh
