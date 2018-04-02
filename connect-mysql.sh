docker run -it --network backend-net --publish 3306:3306 \
  --rm mysql \
  sh -c 'exec mysql -h"172.17.0.4" -P"3306" -uroot -p"password"'
