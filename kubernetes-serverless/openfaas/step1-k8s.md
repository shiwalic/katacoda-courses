# Your Kubernetes Cluster #

As you see, your Kubernetes cluster based on Minikube is started now or will be available shortly. Verify it's ready for your use.

`minikube version && minikube status`{{execute}}

`kubectl version && kubectl cluster-info && kubectl get nodes`{{execute}}

Verify the Kubernetes cluster is empty.  

`kubectl get deployments,pods,services`{{execute}}

The Helm package manager used for installing applications on Kubernetes is also available.

`helm version`{{execute}}