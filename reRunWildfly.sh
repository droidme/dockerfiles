CONTAINER_NAME=wildfly

RUNNING=$(docker inspect --format="{{ .State.Running }}" $CONTAINER_NAME 2> /dev/null)

if [ $? -eq 1 ]; then
  echo "------- creating ${CONTAINER_NAME} -------"
  sudo docker run -d -p  8888:8080 -p 9990:9990 --name ${CONTAINER_NAME} droidme/wildfly
  exit 0
fi

if [ "$RUNNING" == "true" ]; then
  echo "------- killing ${CONTAINER_NAME} -------"
  sudo docker kill ${CONTAINER_NAME}
fi

echo "------- starting ${CONTAINER_NAME} -------"
sudo docker start ${CONTAINER_NAME}
