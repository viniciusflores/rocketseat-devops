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

## Docker helpers

List containers

`docker ps`

List images

`docker image ls`

History of crating image

`docker image history api-rocket`
