#!/bin/bash

echo "maven-project" > /tmp/.auth
echo "$BUILD_TAG"  >> /tmp/.auth
echo "$PASS" >> /tmp/.auth
scp /tmp/.auth osboxes@192.168.196.131:/tmp/.auth
chmod +x jenkins/deploy/publish.sh
scp jenkins/deploy/publish.sh osboxes@192.168.196.131:/tmp/
ssh osboxes@192.168.196.131 "/tmp/publish.sh"

