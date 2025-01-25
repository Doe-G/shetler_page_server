#!/bin/bash

certbot certonly --webroot \
                  --webroot-path=/var/www/html \
                  --email gabriel.egallardor@gmail.com \
                  --agree-tos \
                  --no-eff-email \
                  --staging \
                  -d jhdoe.cl \
                  -d www.jhdoe.cl


if [$?]; then 
  certbot certonly --webroot \
                    --webroot-path=/var/www/html \
                    --email gabriel.egallardor@gmail.com \
                    --agree-tos \
                    --no-eff-email \
                    --force-renewal \
                    -d climguards.com \
                    -d www.climguards.com
fi
