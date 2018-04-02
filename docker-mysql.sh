docker run --name mysql -e MYSQL_ROOT_PASSWORD=password --network backend-net \
  -d mysql:latest
