$(aws ecr get-login --no-include-email --region ap-southeast-2)
docker tag max-nginx:latest 721461921305.dkr.ecr.ap-southeast-2.amazonaws.com/max-nginx:latest 
docker push 721461921305.dkr.ecr.ap-southeast-2.amazonaws.com/max-nginx:latest
