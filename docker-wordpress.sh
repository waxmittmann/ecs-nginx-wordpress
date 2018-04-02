docker run --name maschine --network backend-net \
  -e WORDPRESS_DB_HOST=mysql \
  -e WORDPRESS_DB_USER=root \
  -e WORDPRESS_DB_PASSWORD=password \
  --publish 8081:80 -d wordpress
  # --publish 8081:80 -d wordpress
# docker run --name wordpress --network backend-net --publish 80:8080 -d wordpress
