#!/bin/bash

# This script is the entry point
sudo service docker restart;

# delete the container
docker container rm ollama -f

# pull latest ollama
# alias ollupdate
docker pull ollama/ollama

# start the new ollama container
# with nvidia gpu
# alias ollsetup;
docker run -d --gpus=all -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama

# update all the ollama images
# alias ollua;
docker exec ollama ollama list | awk 'NR>1 {print $1}' | xargs -n 1 docker exec ollama ollama pull
