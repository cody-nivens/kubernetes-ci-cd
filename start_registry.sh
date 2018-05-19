#!/bin/bash -x

minikube mount /data/registry:/mnt/sda1/data/registry &

sleep 5

kubectl apply -f registry.yml
kubectl rollout status deployments/registry
minikube service registry-ui

