# Day 8 Notes

## Docker

### Docker
- Platform used to create, run, and manage containers
- Solves environment inconsistency problems

### Main Purpose of Docker
- Package application with dependencies
- Ensure application runs same everywhere

## Problem Before Docker

### "Works on my machine" Problem
- Application works on developer system
- Fails on server or another machine due to:
  - dependency mismatch
  - software version differences
  - configuration issues

## Containers

### Container
- Lightweight isolated application environment
- Contains:
  - application code
  - dependencies
  - libraries
  - runtime
  - configurations

### Important Point
- Containers are not full operating systems
- Containers share host OS kernel

## Docker Image

### Docker Image
- Blueprint/template used to create containers
- Static and not running

### Docker Container
- Running instance created from image

## Image vs Container

| Docker Image | Docker Container |
|---|---|
| Template | Running instance |
| Static | Active/running |
| Blueprint | Real execution |
| Read-only | Writable/runtime |

## Docker Lifecycle

Dockerfile
→ Docker Image
→ Docker Container
→ Running Application

## Dockerfile

### Dockerfile
- Instruction file used to build Docker images

### Common Dockerfile Instructions

| Instruction | Purpose |
|---|---|
| FROM | base image |
| COPY | copy files |
| WORKDIR | set working directory |
| RUN | execute commands |
| CMD | default startup command |

## Basic Docker Commands

| Command | Purpose |
|---|---|
| docker build | build image |
| docker run | run container |
| docker images | list images |
| docker ps | list running containers |
| docker stop | stop container |
| docker rm | remove container |
| docker rmi | remove image |

## Port Mapping

### Port Mapping
- Connects host system ports to container ports

Example:
docker run -p 8080:80 nginx

### Meaning
- Host port 8080 maps to container port 80

## Docker Networking

### Docker Networking
- Containers communicate using ports and networks
- Containers are isolated environments

## Docker vs Virtual Machine

| Virtual Machine | Docker Container |
|---|---|
| Full operating system | Shares host kernel |
| Heavy | Lightweight |
| Slow startup | Fast startup |
| Large storage usage | Efficient storage usage |

## Kubernetes

### Kubernetes
- Container orchestration platform
- Manages large numbers of containers automatically

### Kubernetes Responsibilities
- Scaling
- Load balancing
- Restarting failed containers
- Traffic distribution

## Cloud

### Cloud Computing
- Provides servers and infrastructure over internet

Examples:
- AWS
- Azure
- Google Cloud Platform (GCP)

## Modern DevOps Workflow

Developer
→ GitHub
→ CI/CD Pipeline
→ Docker Image
→ Containers
→ Kubernetes
→ Cloud Infrastructure
→ Users

## Important Concepts Learned

- Docker solves deployment consistency problems
- Containers are lightweight isolated environments
- Docker packages applications and dependencies together
- Images are templates, containers are running instances
- Containers share host OS kernel
- Docker networking uses port mapping
- Kubernetes manages containers at scale
- Cloud provides infrastructure for modern deployments
- Modern DevOps combines automation, containers, orchestration, and cloud