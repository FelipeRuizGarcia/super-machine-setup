#!/bin/bash

set -x

# update the client
brew upgrade --fetch-HEAD --verbose --force ollama

sudo nvidia-ctk runtime configure --runtime=docker
sudo service docker restart;

# delete the daemon container
docker container rm ollama -f

# pull latest ollama
# alias TBD
# docker pull ollama/ollama

# sometimes the team changes the default docker image tag
# docker pull ollama/ollama:0.5.7
docker pull ollama/ollama

# start the new ollama container
# with nvidia gpu
# alias TBD
# docker run -d --gpus=all -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama:0.7.1-rc2
docker run -d --gpus=all -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama

# update all the ollama images
# alias ollua;
docker exec ollama ollama list | awk 'NR>1 {print $1}' | xargs -n 1 docker exec ollama ollama pull

# client vs daemon
ollama --version
