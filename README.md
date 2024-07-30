# Build a dfx docker image 

Embed an installed dfx in a docker image.

## How to run

Use the below command to build the docker image.

```bash
docker build -t dfx_docker .
```

Use the below command to run a docker container

```bash
docker run --name dfx_container -td dfx_docker
```

The docker image has been pushed to the DockerHub.

```bash
docker image tag dfx_docker vincentdfinity/dfxdocker:v0.1.0
docker image push vincentdfinity/dfxdocker:v0.1.0
```
