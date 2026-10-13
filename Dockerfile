FROM caddy:2.11-builder AS builder
RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/mholt/caddy-ratelimit \
    --with github.com/caddyserver/replace-response

FROM caddy:2.11
LABEL org.opencontainers.image.source="https://github.com/Jozwiaczek/homelab-caddy"
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
