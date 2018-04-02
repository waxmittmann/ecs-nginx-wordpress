docker run --name $1_wordpress --network backend-net \
  -e WORDPRESS_DB_HOST=mysql \
  -e WORDPRESS_DB_USER=root \
  -e WORDPRESS_DB_PASSWORD=password \
  -d maschine_wordpress
#  --publish 8081:80 \
#  -p 8082:80 \
  # --publish 8081:80 --publish 80:80 \
  # -d wordpress
# docker run --name wordpress --network backend-net --publish 80:8080 -d wordpress
