# spark-on-k8s
A practical guide and tooling to deploy, run, and operate Apache Spark on Kubernetes.

# Local Setup to Check Kuberantes Docker Desktop Enable Kubernetes

```
bash kuberantes_local_installs.sh
```

# NameSpace :- 
A virtual cluster inside kubernetes. Used for isolation.  Everything live inside namespace :- Pods, Deployments. Service , DaemonSets.

# DaemonSet :- 
Run Exactly one pod on every node.

# Kubernetes YAML

🔥 Interview one-liner

NodePort exposes a Service on a static port in the 30000–32767 range on every node.



# ConfigMap 

Its kubernates object used to stire external files or configuration data and make them available
inside pods

```
kubectl create configmap python-script \
  --from-file=hello.py \
  -n dev
```