#!/bin/sh

docker rm -f nginx
docker rm -f wordpress
docker rm -f mysql
docker rm -f tools
docker network rm backend-net
