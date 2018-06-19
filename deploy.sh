#!/bin/bash

# Check if docker is installed
if ! [ -x "$(command -v docker)" ]; then
	  echo 'Unable to find docker command, please install Docker (https://www.docker.com/) and retry' >&2
	    exit 1
fi

docker build -t s8sg/ngrok . 

. configuration

export NETWORK=${NETWORK}
export PORT=${PORT}
export ADDRESS=${ADDRESS}

echo "Creating Docker Network $NETWORK if not exist"
[ ! "$(docker network ls | grep ${NETWORK})" ] && docker network create -d overlay --attachable ${NETWORK}

echo "Deploying ngrok"
# Deploy the docker stack with device name
docker stack deploy --compose-file docker-compose.yml ngrok
echo "Stack succesfully deployed"
