# Day 12 Notes

# Docker Practicals — Part 1

## Docker Pull

### Command

```bash
docker pull nginx
```

## Purpose
- Download nginx Docker image from Docker Hub

## What Happens Internally
1. Docker contacts Docker Hub
2. Finds nginx image
3. Downloads image layers
4. Stores image locally

---

# nginx

## nginx
- Popular web server and reverse proxy
- Used in modern web infrastructure and cloud systems

---

# Docker Images

## Command

```bash
docker images
```

## Purpose
- Display locally stored Docker images

## Verified Images
- hello-world
- nginx

---

# Image vs Container

## Image
- Template/package used to create containers

## Container
- Running instance created from image

---

# Running nginx Container

## Command

```bash
docker run nginx
```

## Purpose
- Create and run nginx container

## Observation
- Terminal displayed logs continuously
- nginx container kept running

## Reason
- nginx is long-running server software
- Web servers stay active continuously

---

# Stopping Container

## Method

```text
Ctrl + C
```

## Purpose
- Stop foreground running container

---

# Viewing Containers

## Command

```bash
docker ps -a
```

## Purpose
- Show all containers including stopped containers

---

# docker ps

## Command

```bash
docker ps
```

## Purpose
- Show currently running containers

---

# Fields in docker ps

## CONTAINER ID
- Unique identifier for container

## IMAGE
- Image used to create container

## COMMAND
- Main process running inside container

## CREATED
- Time container was created

## STATUS
- Current container state

Examples:
- Up
- Exited
- Restarting

## PORTS
- Network port mapping between host and container

## NAMES
- Human-readable container name

---

# Port Mapping

## Command

```bash
docker run -d -p 8080:80 nginx
```

---

# Meaning of Flags

## -d
- Detached/background mode

## -p
- Port mapping

### Format
```text
host-port:container-port
```

Example:
```text
8080:80
```

Meaning:
- Laptop port 8080
- Connected to container port 80

---

# Accessing nginx

## Browser URL

```text
http://localhost:8080
```

## Result
- nginx welcome page displayed

---

# Why Port Mapping Is Important

- Containers are isolated network environments
- Port mapping exposes container services externally
- Allows browser and applications to access containerized services

---

# Docker Networking Understanding

Browser
→ localhost:8080
→ Docker Port Mapping
→ Container Port 80
→ nginx Web Server

---

# Important Concepts Learned

- Docker pull downloads images
- nginx is real production-grade software
- Images become containers when executed
- Containers can run in foreground or background
- docker ps monitors running containers
- Port mapping connects host system with containers
- Containers are isolated environments
- nginx container can serve web pages through mapped ports