# RUN DOCKER MONGO LOCAL

`docker run --name mongodb -d -p 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=mypassword --name mongodb mongodb/mongodb-community-server:6.0.7-ubuntu2204`
