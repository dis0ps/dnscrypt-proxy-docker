#!/usr/bin/env bash 

PROJECT=$(basename "$PWD" | tr '_' '-')

if [ $# -eq 0 ]
  then
    tag="latest"
  else
    tag=$1
fi

docker buildx build --platform=linux/arm64 --build-arg="BUILD_VERSION=2.1.0" -t $PROJECT:$tag .

if [ $# -gt 1 ]
  then
    TARGET_REPO=$2
    docker tag $PROJECT:$tag $TARGET_REPO/$PROJECT:$tag 
    docker push $TARGET_REPO/$PROJECT:$tag 
fi