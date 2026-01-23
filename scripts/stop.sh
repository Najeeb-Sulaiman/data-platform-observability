#!/bin/bash

set -euo pipefail

source ./utils.sh

log_info "Stopping Airflow and monitoring stacks"

docker compose -f airflow/compose.yml down
docker compose -f monitoring/compose.yml down

log_success "All stacks stopped"
