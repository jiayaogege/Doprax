FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"
WORKDIR /opt/alist
USER root
ADD alist.sh /alist.sh
RUN chmod +x /alist.sh
CMD /alist.sh
