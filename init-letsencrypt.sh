#!/bin/bash

certbot certonly  --email gabriel.egallardor@gmail.com \
                  --nginx \
                  --agree-tos \
                  --no-eff-email \
                  --staging \
                  -d jhdoe.cl \
                  -d www.jhdoe.cl


if [$?]; then 
  certbot certonly  --email gabriel.egallardor@gmail.com \
                    --nginx \
                    --agree-tos \
                    --no-eff-email \
                    --force-renewal \
                    -d climguards.com \
                    -d www.climguards.com
fi
