# Day 13 Notes

# Docker Practicals – Part 2

## Objectives

- Understand Docker container lifecycle
- Start, stop, and remove containers
- Use custom container names
- Learn interactive containers
- Understand image vs container
- Learn container isolation
- Use docker exec to enter running containers

---

# Docker Container Lifecycle

```text
Image
↓
Container Created
↓
Running
↓
Stopped
↓
Started Again
↓
Removed
```

A container moves through different states during its lifetime.

---

# View Running Containers

## Command

```bash
docker ps
```

## Purpose

Displays currently running containers.

### Fields

| Field | Meaning |
|---------|---------|
| CONTAINER ID | Unique container identifier |
| IMAGE | Image used to create container |
| COMMAND | Main process running inside container |
| CREATED | Container creation time |
| STATUS | Running/stopped status |
| PORTS | Network port mappings |
| NAMES | Container name |

---

# View All Containers

## Command

```bash
docker ps -a
```

## Purpose

Shows all containers including stopped containers.

---

# Start Existing Container

## Command

```bash
docker start webserver
```

## Purpose

Starts a previously stopped container.

### Important

- Does not create a new container.
- Preserves previous configuration.

---

# Stop Container

## Command

```bash
docker stop webserver
```

## Purpose

Stops a running container.

### Result

```text
Running
↓
Stopped
```

Container still exists.

---

# Remove Container

## Command

```bash
docker rm webserver
```

## Purpose

Deletes the container permanently.

### Result

```text
Container Removed
```

---

# Difference Between Stop and Remove

## docker stop

```bash
docker stop webserver
```

Result:

```text
Container exists
but is not running
```

---

## docker rm

```bash
docker rm webserver
```

Result:

```text
Container is deleted
```

---

# Custom Container Names

## Default Names

Docker automatically generates names:

```text
hopeful_poincare
pedantic_jones
competent_ishizaka
```

---

## Create Custom Name

```bash
docker run -d --name mynginx -p 8080:80 nginx
```

### Purpose

Creates container with meaningful name.

---

# Rename Container

## Command

```bash
docker rename mynginx webserver
```

## Purpose

Changes container name without recreating container.

---

# Why Custom Names Matter

Instead of:

```bash
docker stop hopeful_poincare
```

Use:

```bash
docker stop webserver
```

Much easier in real projects.

---

# Image vs Container

## Image

An image is a blueprint/template used to create containers.

Examples:

```text
ubuntu
nginx
hello-world
```

### Characteristics

- Read-only
- Downloaded from Docker Hub
- Contains application and dependencies
- Can create multiple containers

---

## Container

A running instance of an image.

### Characteristics

- Has its own filesystem
- Has its own hostname
- Has its own processes
- Has its own writable layer

---

# One Image → Many Containers

Example:

```text
nginx image
├── webserver
├── frontend
├── test-nginx
└── backup-nginx
```

One image can create many containers.

---

# Interactive Containers

## Command

```bash
docker run -it ubuntu bash
```

### Flags

#### -i

Interactive mode

#### -t

Terminal mode

#### ubuntu

Image name

#### bash

Shell program

---

# What Happens Internally

```text
Pull Ubuntu Image
↓
Create Container
↓
Start Container
↓
Open Bash Shell
```

---

# Container Prompt

Example:

```bash
root@254953d85e28:/#
```

Meaning:

```text
You are inside the container
```

and no longer inside WSL Ubuntu.

---

# Exploring Container

## Current Directory

```bash
pwd
```

Output:

```text
/
```

Root directory of container.

---

## List Files

```bash
ls
```

Output:

```text
bin
boot
dev
etc
home
lib
usr
var
...
```

---

# Why These Directories Exist

They are part of the Ubuntu image.

Ubuntu image already contains:

```text
/bin
/etc
/usr
/var
...
```

These are not copied from WSL.

They come from the Ubuntu image itself.

---

# Container Hostname

## Command

```bash
hostname
```

Output:

```text
254953d85e28
```

Usually matches the container ID.

---

# Container Isolation

Created file:

```bash
touch sanu.txt
```

Output:

```text
sanu.txt
```

appears inside that container.

---

# Important Concept

Image contents:

```text
bin
etc
usr
var
```

appear in every container created from that image.

Container changes:

```text
sanu.txt
notes.txt
project.txt
```

appear only inside that specific container.

---

# Example

Container A:

```text
bin
etc
usr
var
sanu.txt
```

Container B:

```text
bin
etc
usr
var
```

No sanu.txt.

---

# Ubuntu Container vs nginx Container

## Ubuntu Container

Created from:

```text
ubuntu image
```

Contains Ubuntu filesystem.

---

## nginx Container

Created from:

```text
nginx image
```

Contains:

```text
Linux filesystem
+
nginx software
+
startup scripts
```

Example files:

```text
docker-entrypoint.sh
docker-entrypoint.d
```

---

# Inspect Container Operating System

## Command

```bash
cat /etc/os-release
```

Output:

```text
Debian GNU/Linux 13 (trixie)
```

### Observation

The nginx image is based on Debian Linux.

---

# Enter Existing Running Container

## Command

```bash
docker exec -it webserver bash
```

## Purpose

Open shell inside an existing running container.

---

# docker run vs docker exec

## docker run

```bash
docker run nginx
```

### Purpose

Creates a NEW container.

```text
Image
↓
New Container
↓
Run
```

---

## docker exec

```bash
docker exec -it webserver bash
```

### Purpose

Enter EXISTING running container.

```text
Existing Container
↓
Open Shell
```

---

# Why DevOps Engineers Use docker exec

- Troubleshooting
- Checking files
- Inspecting configuration
- Verifying services
- Debugging applications

---

# Commands Learned

```bash
docker ps
docker ps -a
docker start webserver
docker stop webserver
docker rm webserver
docker rename mynginx webserver
docker run -it ubuntu bash
docker exec -it webserver bash
pwd
ls
hostname
cat /etc/os-release
touch sanu.txt
```

---


