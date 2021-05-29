#!/bin/bash

echo "*********push image********"

IMAGE="maven-project"

docker login -u arpitdoc -p $PASS
docker tag $IMAGE:$BUILD_TAG arpitdoc/maven-project:$BUILD_TAG
docker push arpitdoc/maven-project:$BUILD_TAG
