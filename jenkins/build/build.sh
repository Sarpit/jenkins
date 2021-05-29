#!/bin/bash

cp -f java-app/target/*.jar jenkins/build/

echo "***********************************"
echo "********building image*************"
echo "***********************************"

docker-compose -f jenkins/build/docker-compose-build.yaml build --no-cache
