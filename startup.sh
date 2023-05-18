#!/bin/bash
echo "Enter Docker Image name:"
read diname
sudo docker build -t $diname .
sudo docker tag react-app bskeshab76820/$diname:v1
sudo docker login
sudo docker push bskeshab76820/$diname:v1
