FROM xhofe/alist:v3.12.2
LABEL MAINTAINER="i@nn.ci"
WORKDIR /opt/alist
USER root
RUN mkdir -p /opt/alist/data/
COPY nginx.conf /etc/nginx/nginx.conf
COPY config.json /opt/alist/data/config.json
RUN chmod -R 777 /opt/alist/data
ADD alist.sh /alist.sh
RUN chmod +x /alist.sh
CMD /alist.sh
