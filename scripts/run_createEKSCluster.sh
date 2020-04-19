#!/usr/bin/env bash

# To create cluster in AWS EKS 
eksctl create cluster \
--name $1 \
# --region eu-west-1 \
--fargate