# Day 14 Notes

# Dockerfiles and Custom Images

## Objectives

- Learn what a Dockerfile is
- Build custom Docker images
- Understand Dockerfile instructions
- Understand build time vs runtime

---

# What is a Dockerfile?

A Dockerfile is a text file containing instructions used to build a Docker image.

## Flow

```text
Dockerfile
↓
docker build
↓
Image
↓
docker run
↓
Container
```

---

# First Dockerfile

```dockerfile
FROM ubuntu

CMD ["echo", "Hello from my first Docker image!"]
```

---

# Building an Image

```bash
docker build -t myfirstimage .
```

---

# Running an Image

```bash
docker run myfirstimage
```

Output:

```text
Hello from my first Docker image!
```

---

# Dockerfile Instructions

## FROM

```dockerfile
FROM ubuntu
```

Purpose: Select base image.

---

## COPY

```dockerfile
COPY message.txt /message.txt
```

Purpose: Copy files from host machine into image.

---

## WORKDIR

```dockerfile
WORKDIR /app
```

Purpose: Set current working directory.

Example:

```dockerfile
WORKDIR /app

COPY message.txt .

CMD ["cat", "message.txt"]
```

---

## RUN

```dockerfile
RUN mkdir /sanu
```

Purpose: Execute commands during image build.

Examples:

```dockerfile
RUN apt update
RUN apt install -y python3
```

---

## CMD

```dockerfile
CMD ["cat", "message.txt"]
```

Purpose: Execute command when container starts.

---

# Build Time vs Runtime

## Build Time

Occurs during:

```bash
docker build -t myfirstimage:v4 .
```

Instructions executed:

```dockerfile
FROM
RUN
COPY
WORKDIR
```

---

## Runtime

Occurs during:

```bash
docker run myfirstimage:v4
```

Instruction executed:

```dockerfile
CMD
```

---

# Easy Memory Trick

## Build Time

```text
Preparing the house
```

Equivalent:

```dockerfile
FROM
RUN
COPY
WORKDIR
```

## Runtime

```text
Living in the house
```

Equivalent:

```dockerfile
CMD
```

---

# Docker Layer Cache

Example build output:

```text
CACHED [2/4] RUN mkdir /sanu
CACHED [3/4] WORKDIR /sanu
```

Meaning Docker reused previously built layers.

Benefits:

- Faster builds
- Less resource usage
- Efficient image creation

---

# Commands Practiced

```bash
docker build -t myfirstimage .
docker build -t myfirstimage:v2 .
docker build -t myfirstimage:v3 .
docker build -t myfirstimage:v4 .

docker run myfirstimage
docker run myfirstimage:v2
docker run myfirstimage:v3
docker run myfirstimage:v4

docker images
```

---

# Day 14 Summary

✅ Dockerfile

✅ FROM

✅ COPY

✅ WORKDIR

✅ RUN

✅ CMD

✅ docker build

✅ docker run

✅ Image tags

✅ Build Time vs Runtime

✅ Docker Layer Cache

Day 14 completed successfully.