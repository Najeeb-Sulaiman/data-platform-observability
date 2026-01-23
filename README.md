# Data Platform Observability Stack (LGTM + OpenTelemetry)
This project is a fully automated, Docker-Compose-based reference architecture for monitoring Apache Airflow and the infrastructure it runs on.

This project is designed for:
- Learning observability
- Local development
- Community demos & workshops
- Open-source reference stacks

## Repository Layout

## Architecture


## Stack Components
The project stacks consists of the following components:

| Layer            | Tool                    |
| ---------------- | ----------------------- |
| Platform         | Apache Airflow + Node   |
| Metrics          | Prometheus              |
| Logs             | Loki                    |
| Traces           | Tempo                   |
| Visualization    | Grafana                 |
| Telemetry Router | OpenTelemetry Collector |
| Alerts           | Grafana + Slack         |

## Setup Instruction
Follow the below guide to setup this project end-end.

### Prerequisites
Install (If not already installed):
- Docker
- Docker Compose plugin
- Bash

Verify:
```bash
docker --version
docker compose version
```

### Clone this repository
```bash
git clone https://github.com/Najeeb-Sulaiman/data-platform-observability.git
```

### Automated Startup

For accuracy and repeatability, bash scripts have been developed to automate the start up and tear down process of the stacks. This should work across all operating systems.

**Note:** Windows OS users can run bash command using the `git bash` terminal.

From the project root directory, run the following commands:
```bash
chmod +x scripts/*.sh
./scripts/start.sh
```
This will:
1. Check that prerequisites are satisfied
2. Create custom docker network for the observability stack
3. Start observability stack
4. Build & start Airflow
5. Print service URLs

