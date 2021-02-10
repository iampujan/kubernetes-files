#!/bin/bash

minikube addons enable ingress
sudo cp hosts /etc/hosts
sleep 2
kubectl create -f $(ls -1 *.yaml | xargs | sed -e 's/ /,/g')

