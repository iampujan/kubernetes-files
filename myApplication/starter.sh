#!/bin/bash

minikube addons enable ingress
kubectl create -f $(ls -1 *.yaml | xargs | sed -e 's/ /,/g')
