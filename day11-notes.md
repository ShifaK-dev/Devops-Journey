# Day 11 Notes

# Docker Environment Setup + First Docker Container

## Environment Setup

### Tools Configured
- Docker Desktop
- WSL Ubuntu Integration
- VS Code
- Git
- GitHub Authentication

---

# Docker Desktop Installation

## Docker Desktop
- Software used to manage Docker Engine and containers on Windows

## Installed Version
- AMD64 version for Intel/AMD architecture

## Important Installation Options
- Install for all users
- Use WSL 2 based engine
- Enable WSL Integration

---

# WSL Integration

## WSL Integration
- Connects Docker with Ubuntu terminal

## Purpose
- Allows Docker commands to run directly inside Ubuntu terminal

---

# Docker Engine

## Docker Engine
- Core Docker service responsible for running containers

## Verification
Docker Desktop showed:
```text
Engine Running
```

---

# Docker Command Verification

## Docker Version Check

```bash
docker --version
```

## Purpose
- Verify Docker installation and CLI access

---

# Permission Fix

## Problem
```text
permission denied while trying to connect to docker.sock
```

## Solution

```bash
sudo usermod -aG docker $USER
```

## Purpose
- Add current user to Docker group
- Allow Docker access without sudo

---

# First Docker Container

## Command

```bash
docker run hello-world
```

## Purpose
- Test Docker installation
- Verify container creation and execution

---

# What Happened Internally

Docker:
1. Checked local images
2. Pulled hello-world image from Docker Hub
3. Created container
4. Ran container
5. Displayed success message

---

# Docker Hub

## Docker Hub
- Online repository storing Docker images

---

# Docker Image

## hello-world Image
- Lightweight test image
- Used to verify Docker functionality

---

# Docker Container

## Container
- Running instance created from Docker image

---

# Viewing Images

## Command

```bash
docker images
```

## Purpose
- Show locally stored Docker images

---

# Viewing Containers

## Command

```bash
docker ps -a
```

## Purpose
- Show all containers including stopped ones

---

# Important Concepts Learned

- Docker Engine runs containers
- WSL Integration connects Ubuntu with Docker
- Images are templates/packages
- Containers are running instances
- Docker Hub stores images
- Docker permissions are managed through docker group
- hello-world container verifies Docker setup