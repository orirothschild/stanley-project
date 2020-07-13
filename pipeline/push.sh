#!/bin/bash
echo "****************************"
echo "*****pushing new image******"
echo "****************************"
echo "$DOCKER_PASS" | docker login -u "$DOCKER_ID" --password-stdin
docker push orirothschild/stanley-project:latest