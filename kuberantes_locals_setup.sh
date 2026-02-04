#!/bin/bash

# Verify Kubectl Install 
kubectl version --client

kubectl get nodes

kubectl get pods

# Create Namespace 
kubectl create namespace dev

kubectl apply -f deployement.yml

kubectl apply -f services.yml



