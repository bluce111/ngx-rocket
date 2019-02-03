# Dockerfile# Dockerfile for NGINX build
FROM nginx

USER root

RUN rm /etc/nginx/conf.d/default.conf
RUN rm /etc/nginx/conf.d/example_ssl.conf
RUN rm /usr/share/nginx/html/index.html

COPY *.* /usr/share/nginx/html/

RUN service nginx restart
