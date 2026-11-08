# Wakapi on the home server

Wakapi built from this repo's Dockerfile, run with docker compose on the
home server. Caddy on the host serves wakapi.home.lan and proxies to
127.0.0.1:3000.

- `data/` is mounted at `/data` in the container (SQLite database
  `wakapi.db`). On the server it lives at /srv/wakapi/deploy/data and is
  owned by uid 65532 (`nonroot` in the distroless image). The copy in this
  repo is from last night, for testing.
- Accounts: jonas and lena (signup is off). Editors (VS Code on the desktop
  and laptop) report with jonas' main API key; the CI runner and the Grafana
  panel use their own keys from Settings > API Keys.
- Deploys: `./deploy.sh` (post-merge hook, plus the nightly cron job).
