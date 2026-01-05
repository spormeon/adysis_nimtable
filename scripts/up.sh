#!/usr/bin/env bash
set -euo pipefail

# OPTIONAL: build a local .env in Codespaces from environment variables
cat > .env <<EOF
ADMIN_USERNAME=${ADMIN_USERNAME:-admin}
ADMIN_PASSWORD=${ADMIN_PASSWORD:-admin}

R2_CATALOG_URI=${R2_CATALOG_URI:-}
R2_WAREHOUSE=${R2_WAREHOUSE:-default}
CF_API_TOKEN=${CF_API_TOKEN:-}
EOF

docker compose up -d
docker compose logs -f nimtable
