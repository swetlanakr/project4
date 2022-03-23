#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="swetlana/udacity_project4"

# Step 2
# Run the Docker Hub container with kubernetes
docker login
kubectl run udacityproject4\
    --image=$dockerpath\
    --port=80 --labels app=udacityproject4


# Step 3:
# List kubernetes pods
kubectl get pods

#give pod time to get running so forwarding the containert port to a host is possible
sleep 10 

# Step 4:
# Forward the container port to a host
kubectl port-forward udacityproject4 8080:80
