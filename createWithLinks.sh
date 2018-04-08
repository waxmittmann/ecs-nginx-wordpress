#!/bin/sh

# Create db
docker run --name mysql -e MYSQL_ROOT_PASSWORD=password \
  -d mysql:latest

# Create maschine
docker run --name maschine_wordpress \
  -e WORDPRESS_DB_HOST=mysql \
  -e WORDPRESS_DB_USER=root \
  -e WORDPRESS_DB_PASSWORD=password \
  -e WORDPRESS_DB_NAME=maschine_wordpress \
  --link mysql:mysql \
  -d wordpress

# Create mensch
docker run --name mensch_wordpress \
  -e WORDPRESS_DB_HOST=mysql \
  -e WORDPRESS_DB_USER=root \
  -e WORDPRESS_DB_PASSWORD=password \
  -e WORDPRESS_DB_NAME=mensch_wordpress \
  --link mysql:mysql \
  -d wordpress

# Create cv
docker run --name cv \
  -e WORDPRESS_DB_HOST=mysql \
  -e WORDPRESS_DB_USER=root \
  -e WORDPRESS_DB_PASSWORD=password \
  -e WORDPRESS_DB_NAME=cv  \
  --link mysql:mysql \
  -d wordpress

# Create nginx
docker run --name nginx --publish 80:80 -d \
  -v $PWD/max-nginx/nginx.conf:/etc/nginx/nginx.conf:ro \
  --link maschine_wordpress:maschine_wordpress \
  --link mensch_wordpress:mensch_wordpress \
  --link cv:cv \
  nginx
