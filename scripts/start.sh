#!/bin/bash

set -euo pipefail
source ./utils.sh

log_info "Checking prerequisites(Docker and Docker Compose)"

check_command docker
check_command docker-compose || check_command docker compose

log_success "All prerequisites satisfied"

# Start Monitoring Stack (LGTM)

log_info "Starting monitoring stack (Prometheus, Loki, Tempo, Grafana)"

docker compose -f monitoring/compose.yml up -d

log_success "Monitoring stack containers started"


# Start Airflow Stack

log_info "Starting Airflow stack (Builds custom image from Dockerfile)"

docker compose -f airflow/compose.yml up -d --build

log_success "Airflow stack containers started"


log_success "All stacks are up and running"

cat <<EOF

${GREEN} All stacks started successfully, verify with 'docker ps' command${NC}

Access points:
- Airflow UI:  http://localhost:8080
- Prometheus:  http://localhost:9090
- Grafana:     http://localhost:3000

EOF
