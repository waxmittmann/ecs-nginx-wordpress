docker run -it --link mysql:mysql --rm mysql sh -c 'exec mysql -h"172.17.0.4" -P"3306" -uroot -p"password"'
