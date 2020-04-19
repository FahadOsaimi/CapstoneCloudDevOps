#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
# Step 1:
# This is your Docker ID/path
dockerpath="fahadosaimi/demolocal"
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run notebook\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --kubeconfig= KUBECONFIG\
    --port=80 --labels app=notebook
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host

kubectl port-forward deployment/demolocal 8000:80 
kubectl logs --selector app=demolocal
kubectl apply -f init-deployment.yml 
