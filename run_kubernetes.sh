#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="imama42/udacitypredictor"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacitypredictorpod --image=$dockerpath --port=80 --labels app=udacitypredictorpod

# Step 3:
# List kubernetes pods
kubectl get pods -o wide 

# Step 4:
# Forward the container port to a host
kubectl port-forward udacitypredictorpod 8080:80
