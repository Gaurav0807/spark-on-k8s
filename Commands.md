Kubernates
----------

** Kubernates Cluster :- Machine Running your containers.

Control Plain :- Brain

Worker Nodes :- Run Containers

Pod :- Small unit in Kubernates. One Pod usually runs one container.
Node :- Machine that run pods.

kubectl get pods
kubectl get nodes
kubectl apply -f app.yaml


#Setup Kubectl in Mac :- brew install kubectl

Run Kubernates_locals_installs.sh

-- bash kuberantes_local_installs.sh

Docker Desktop → created local Kubernetes cluster

Your Mac → acts like a node

kubectl → talks to Kubernetes API

# Run Pods
kubectl run nginx-pod --image=nginx

kubectl get pods

kubectl describe pod nginx-pod

kubectl delete pod nginx-pod

kubectl get pods


