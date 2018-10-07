# nps-frontend
Sample React.js based app for Kubernetes setup demonstration.

## Local setup
1. Install [Docker](https://docs.docker.com/install/).
1. Build image:
   ```
   docker build -t nps-frontend .
   ```
1. Run image locally:
   ```
   docker run -p 5000:5000 --name nps-frontend nps-frontend 
   ```