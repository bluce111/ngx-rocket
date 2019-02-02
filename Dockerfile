# Dockerfile for NGINX build
FROM nginx

USER root

RUN rm /usr/share/nginx/html/index.html
COPY *.* /usr/share/nginx/html/

RUN service nginx restart
