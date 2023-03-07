FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"
EXPOSE 5244
WORKDIR /opt/alist/
USER root
ADD alist.sh /opt/alist/alist.sh
RUN chmod +x /opt/alist/alist.sh
CMD /opt/alist/alist.sh server
