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



# Apply Changes :- 
kubectl create namespace dev

kubectl apply -f deployment.yml

kubectl get deployments -n dev

kubectl get pods -n dev

# Delete all resources inside namespace

kubectl delete all --all -n dev

kubectl get all -n dev

kubectl delete namespace dev

# Logs Check 
kubectl get pods -n dev

# Get logs of that pods :-
kubectl logs demo-67f4bc8dbf-wvsks -n dev

kubectl describe deployment demo -n dev

kubectl describe svc demo-service -n dev


# Resources Understand

```
resources:
  requests:
    cpu: "250m"      # Minimum CPU required (25% of one core)
    memory: "260Mi"  # Minimum memory required
  limits:
    cpu: "500m"      # Maximum CPU allowed
    memory: "512Mi"  # Maximum memory allowed
```

m = millicpu
1000m = 1 CPU core


| Value   | Meaning          |
| ------- | ---------------- |
| `1000m` | 1 full CPU core  |
| `500m`  | half CPU core    |
| `250m`  | quarter CPU core |
| `100m`  | 10% of a CPU     |

Memory Units
=============

| Unit | Meaning         |
| ---- | --------------- |
| `Mi` | Mebibyte (≈ MB) |
| `Gi` | Gibibyte (≈ GB) |

memory: "256Mi" :- 256 MB RAM

kubectl describe pod demo-67f4bc8dbf-wvsks -n dev

If you see in logs :- If QoS = BestEffort → resources are NOT set

# What is QoS in Kubernetes?

QoS = Quality of Service
Kubernetes uses QoS to decide:
    ** which Pod gets CPU first
    ** which Pod is killed first when memory is exhausted