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



