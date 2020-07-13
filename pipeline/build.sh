#!/bin/bash
echo "****************************"
echo "****building mvn package****"
echo "****************************"

 cd ./demo
 mvn -B -DskipTests clean package