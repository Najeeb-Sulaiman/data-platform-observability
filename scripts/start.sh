#!/bin/bash

set -euo pipefail
source ./utils.sh

log_info "Checking prerequisites(Docker and Docker Compose)"

check_command docker
check_command docker-compose || check_command docker compose

log_success "All prerequisites satisfied"
