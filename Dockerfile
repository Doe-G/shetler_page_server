FROM debian:12-slim

RUN apt-get update -y
RUN apt-get install -y software-properties-common
RUN apt-get install -y nginx
RUN apt-get install -y certbot
RUN apt install -y cron

COPY nginx.conf /etc/nginx/nginx.conf
COPY init-letsencrypt.sh /tpm/init.sh
COPY docker-entrypoint.sh /bin/entrypoint.sh

RUN chmod +x /tpm/init.sh
RUN chmod +x /bin/entrypoint.sh
RUN ./tpm/init.sh

EXPOSE 80 443

CMD ["/bin/entrypoint.sh"]
