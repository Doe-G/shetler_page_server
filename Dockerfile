FROM nginx:latest

RUN apt-get update -y
RUN apt-get install -y certbot python3-certbot-nginx
RUN apt install -y cron

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY init-letsencrypt.sh /init.sh
COPY docker-entrypoint.sh /bin/entrypoint.sh

RUN chmod +x /init.sh
RUN chmod +x /bin/entrypoint.sh
RUN ./init.sh

EXPOSE 80 443

CMD ["/bin/entrypoint.sh"]
