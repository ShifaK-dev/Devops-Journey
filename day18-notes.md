
---

````md
# Day 18 - Kubernetes Basics

## Objective

Understand the basic Kubernetes components:

- Pod
- Deployment
- Service

---

## Why Kubernetes?

Docker creates containers.

Kubernetes manages containers.

### Docker

Create Container
↓
Run Application

### Kubernetes

Create Container
↓
Monitor Container
↓
Scale Application
↓
Recover Failed Containers

---

## What is Kubernetes?

Kubernetes (K8s) is a container orchestration platform.

Purpose:

- Manage Containers
- Scale Applications
- Recover Failures
- Provide Networking

---

## Core Components

### 1. Pod

A Pod is the smallest deployable unit in Kubernetes.

Usually contains:

- One Container

Example:

Pod
└── Nginx Container

Think:

Pod = Wrapper Around Container

---

### Pod Example

```yaml
apiVersion: v1
kind: Pod

metadata:
  name: nginx-pod

spec:
  containers:
  - name: nginx
    image: nginx