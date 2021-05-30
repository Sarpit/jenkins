#!/bin/bash
echo "*************************"
echo "*******Building jar******"
echo "*************************"

docker run --rm -v /var/jenkins_home/workspace/maven-pipeline/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3.6-alpine "$@"
