# nps-frontend
Sample React.js based app for Docker-compose and Kubernetes demonstration.

## Local setup
1. Install [Docker](https://docs.docker.com/install/).
1. Build image:
   ```
   docker build -t nps-frontend .
   ```
1. Run system locally:
   ```
   docker-compose up -d
   ```
1. Stop cluster:
   ```
   docker-compose stop
   ```
1. Delete cluster:
   ```
   docker-compose down
   ```
Sources of related backend app:
https://github.com/tarys/nps-backend
