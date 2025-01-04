# Rocketseat Devops

- Commands

## Build dockerfile

Build image

`docker build -t api-rocket .`

Build image with tag

`docker build -t api-rocket:v1 .`

## Run container

run container + detach

`docker run --rm -p 3001:3000 -d api-rocket`

### Run container in a network

`docker run --rm --network=my-first-network -p 3001:3000 -d api-rocket:v1`

### Run container in a network and volume

`docker run --rm -v my-first-volume:/usr/src/app --network=my-first-network -p 3001:3000 -d api-rocket:v1`

## Create Docker network

`docker network create my-first-network`

### Connect container to network

`docker network connect <network id / name> <container id / name>`

## Create Docker volume

`docker volume create my-first-volume`

## Access container docker

`docker exec -it <docker id/name> bash`

## Docker helpers

List containers

`docker ps`

List images

`docker image ls`

History of crating image

`docker image history api-rocket`

# Docker mysql

## Run mannually

`docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=rocketseat-db -e MYSQL_USER=admin -e MYSQL_PASSWORD=root --name mysql mysql:8`
