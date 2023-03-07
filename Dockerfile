FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"
EXPOSE 5244
WORKDIR /
USER root
ADD alist.sh /alist.sh
RUN chmod +x /alist.sh
CMD /alist.sh server
