#!/usr/bin/env bash
set -e

source .env

folders=( "apache" "cli" "fpm" )

for i in "${folders[@]}"
do
  tag=$PHP_VERSION-$i
  echo "Build $DOCKER_REPOSITORY:$tag"
  docker build -t $DOCKER_REPOSITORY:$tag $i
  docker push $DOCKER_REPOSITORY:$tag
done
