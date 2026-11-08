#!/bin/sh
# Runs on the home server after a merge to main (post-merge hook) and from
# the nightly cron job.
set -e
cd "$(dirname "$0")"
git pull --ff-only
docker compose build --pull
docker compose up -d
docker image prune -f
