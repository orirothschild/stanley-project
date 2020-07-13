#!/bin/bash
echo "****************************"
echo "*****deploy new image*******"
echo "****************************"


 docker-compose -f ./demo/docker-compose.yml  up -d
# docker run -d -p 8080:8080 orirothschild/stanley-project:latest