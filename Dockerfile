FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html
