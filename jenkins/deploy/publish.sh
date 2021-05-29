#!/bin/bash

export IMAGE=$(sed -n "1p" /tmp/.auth)
export TAG=$(sed -n "2p" /tmp/.auth)
export PASS=$(sed -n "3p" /tmp/.auth)

docker login -u arpitdoc -p $PASS
cd /home/osboxes/maven && docker-compose up -d 
