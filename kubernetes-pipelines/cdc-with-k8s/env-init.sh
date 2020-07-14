#!/bin/sh

launch.sh

# Setup dashboard on port 30000
helm repo add kubernetes-dashboard https://kubernetes.github.io/dashboard/
helm install dash kubernetes-dashboard/kubernetes-dashboard \
--namespace kube-system \
--set=image.tag=v2.0.3 \
--set=service.type=NodePort \
--set=enableInsecureLogin=true \
--set=service.nodePort=30000 \
--set=service.externalPort=80

{ clear && echo 'Kubernetes with Helm is ready.'; } 2> /dev/null
