# Number 1 lesson!!!!!!! ALWAYS DISABLE CACHE IN BROWSER
... fuuuuuu....

# Prereq:
- add maschine.max-wittmann.io to `/etc/hosts` to point to localhost

Ok, so now have:
- docker network so containers don't need to expose anything, except for 80 on nginx
- wordpress + mysql for functioning WP instance
- nginx  with config to redirect wordpress traffic under the hood; we get 'maschine.max-wittmann.io' as the url :)
