#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=josielbr/devops-project-05

# Step 2
# Run the Docker Hub container with kubectl
kubectl run deployment --image=$dockerpath --generator=run-pod/v1


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment 8000:80
