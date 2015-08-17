#!/bin/bash
NAME=$1
echo "Building ${NAME}"
#docker -H=tcp://${DOCKER_HOST}:5555 build -t droidme/${NAME} ${NAME}
sudo docker build -t droidme/${NAME} ${NAME}
if [ $? -eq 0 ]; then
  echo "${NAME} built successfully!"
else
  echo "ERROR: ${NAME} not built!"
fi
