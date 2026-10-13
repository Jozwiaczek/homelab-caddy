# homelab-caddy

Caddy image with three extra modules, rebuilt every Monday by GitHub Actions and published to GHCR.

- `github.com/caddy-dns/cloudflare` (DNS-01 certificates)
- `github.com/mholt/caddy-ratelimit` (`rate_limit` handler)
- `github.com/caddyserver/replace-response` (`replace` handler)

Tags: `2.11` (latest patch of the 2.11 line) and `2.11.x` (exact version, for rollback).

The workflow builds the image, checks that all three modules are present, and only then pushes. It contains no configuration or secrets.
