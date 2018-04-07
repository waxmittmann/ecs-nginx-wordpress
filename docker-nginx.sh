docker run --name nginx --network backend-net --publish 80:80 -d \
  -v $PWD/max-nginx/nginx.conf:/etc/nginx/nginx.conf:ro \
  nginx

# docker run --name nginx --network backend-net --publish 80:80 -d \
#   nginx
