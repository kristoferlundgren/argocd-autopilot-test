# ArgoCD, manual installation

Non argocd-autopilot installation, using Kustomize to modify ArgoCD configuration during installation.

## Origin

Based on this example:

- <https://argo-cd.readthedocs.io/en/stable/operator-manual/installation/#kustomize>

## Intent

### Configure ArgoCD to allow Applications in any namespace

- <https://argo-cd.readthedocs.io/en/stable/operator-manual/app-any-namespace/#change-workload-startup-parameters>

## Instructions

Run this command, in this directory:

```shell
kubectl create namespace argocd
kubectl apply -k ./overlay/
```

```shell
kubectl create namespace infra
kubectl apply -k ../apps
```
