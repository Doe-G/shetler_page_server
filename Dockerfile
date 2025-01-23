FROM debian:12-slim

RUN apt-get update -y
RUN apt-get install -y software-properties-common
RUN apt-get install -y nginx
RUN apt-get install -y certbot

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]