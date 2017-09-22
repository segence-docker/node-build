#!/bin/bash

IMAGE_NAME=segence/node-awscli
VERSION=$(cat version.txt)

docker build -t $IMAGE_NAME:$VERSION .
docker tag $IMAGE_NAME:$VERSION $IMAGE_NAME:latest
