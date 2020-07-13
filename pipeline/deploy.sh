#!/bin/bash
echo "****************************"
echo "*****deploy new image******"
echo "****************************"
docker run -d -p 8090:8080 orirothschild/stanley-project:latest