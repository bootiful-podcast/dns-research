#!/usr/bin/env bash 

PROJECT_ID=$(gcloud config get-value project)

mkdir -p k8s 

function deploy_app(){ 
	rm -rf app 
	git clone https://github.com/saturnism/jvm-helloworld-by-example app 
	./mvnw -f app/pom.xml clean package com.google.cloud.tools:jib-maven-plugin:2.4.0:build \
		-Dimage=gcr.io/${PROJECT_ID}/helloworld
}

docker images | grep helloworld || deploy_app
kubectl apply -f k8s/ingress-for-all-hosts.yaml
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
kubectl apply -f k8s/certificate.yaml
