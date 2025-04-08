FROM caddy:2-alpine

COPY ./Caddyfile /etc/caddy/Caddyfile
RUN mkdir -p /var/log/caddy
EXPOSE 80
EXPOSE 443
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]