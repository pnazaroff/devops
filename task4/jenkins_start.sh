#!/bin/bash
echo "building Jenkins container..."
docker build -t myjenkins-blueocean:1.1 .
echo "creating  network Jenkins"
docker network create jenkins
echo "Starting Jenkins"
docker run \
  --name jenkins-blueocean \
  --rm \
  --detach \
  --network jenkins \
  --env DOCKER_HOST=tcp://docker:2376 \
  --env DOCKER_CERT_PATH=/certs/client \
  --env DOCKER_TLS_VERIFY=1 \
  --publish 8080:8080 \
  --publish 50000:50000 \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --volume jenkins-data:/var/jenkins_home \
  --volume jenkins-docker-certs:/certs/client:ro \
  myjenkins-blueocean:1.1 
  echo "jenkins started"
