FROM nginx:latest
LABEL MAINTAINER="i@nn.ci"
EXPOSE 80
WORKDIR /opt/alist
USER root
RUN mkdir -p /opt/alist/data/
COPY nginx.conf /etc/nginx/nginx.conf
COPY config.json /opt/alist/data/config.json
RUN chmod -R 777 /opt/alist/data
ADD alist.sh /alist.sh
RUN chmod +x /alist.sh
CMD /alist.sh
