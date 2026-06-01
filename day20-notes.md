# Day 20 - DevOps Pipeline Project (GitHub → Docker → AWS)

## Objective

Build a complete DevOps project that combines GitHub, Docker, GitHub Actions, and AWS EC2 deployment.

---

# Project Architecture

```text
Developer
    ↓
Git Push
    ↓
GitHub Repository
    ↓
GitHub Actions
    ↓
Docker Build
    ↓
AWS EC2
    ↓
Docker Container
    ↓
Live Website
```

---

# Step 1: Create Project Repository

Created a new GitHub repository:

```text
devops-pipeline-project
```

Initialized Git repository:

```bash
git init
```

---

# Step 2: Create Website

Created:

```text
index.html
```

Example:

```html
<h1>DevOps Pipeline Project</h1>
<p>Built by Sanu</p>
<p>Day 20 - GitHub → Docker → AWS Deployment</p>
```

---

# Step 3: Create Dockerfile

Created:

```text
Dockerfile
```

Content:

```dockerfile
FROM nginx:latest

COPY index.html /usr/share/nginx/html/index.html
```

Purpose:

* Uses Nginx image
* Copies custom website into container
* Serves website through Nginx

---

# Step 4: Build Docker Image

Build image locally:

```bash
docker build -t sanu-web .
```

Explanation:

```text
docker build = build image
-t = tag image
sanu-web = image name
. = current directory
```

---

# Step 5: Run Docker Container

```bash
docker run -d -p 8081:80 --name sanu-app sanu-web
```

Explanation:

```text
-d = detached mode
-p = port mapping
8081 = host port
80 = container port
--name = container name
```

Verify:

```bash
docker ps
```

---

# Step 6: Push Project to GitHub

Check status:

```bash
git status
```

Add files:

```bash
git add .
```

Commit:

```bash
git commit -m "Initial DevOps pipeline project"
```

Push:

```bash
git push
```

---

# Step 7: Create GitHub Actions Workflow

Created:

```text
.github/workflows/docker-build.yml
```

Workflow:

```yaml
name: Docker Build Pipeline

on:
  push:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout Code
        uses: actions/checkout@v4

      - name: Build Docker Image
        run: docker build -t sanu-web:latest .
```

Purpose:

* Trigger on every push
* Create temporary Ubuntu runner
* Build Docker image automatically

---

# Step 8: Verify CI Pipeline

Open:

```text
GitHub → Actions
```

Result:

```text
Build Status: Success
```

This confirms Continuous Integration (CI) is working.

---

# Step 9: Start AWS EC2 Instance

Started previously created EC2 instance:

```text
sanu-webserver
```

Verified:

```text
Instance State: Running
Status Checks: Passed
```

---

# Step 10: Connect to EC2

SSH command:

```bash
ssh -i ~/sanu-key.pem ubuntu@<public-ip>
```

Verified connection:

```bash
hostname
whoami
pwd
```

---

# Step 11: Install Docker on EC2

Update packages:

```bash
sudo apt update
```

Install Docker:

```bash
sudo apt install docker.io -y
```

Verify:

```bash
docker --version
```

---

# Step 12: Clone Repository on EC2

```bash
git clone https://github.com/ShifaK-dev/devops-pipeline-project.git
```

Move into project:

```bash
cd devops-pipeline-project
```

---

# Step 13: Build Docker Image on EC2

```bash
sudo docker build -t sanu-web .
```

Result:

```text
Successfully built
Successfully tagged sanu-web:latest
```

---

# Step 14: Resolve Port Conflict

Problem:

```text
Port 80 already in use
```

Cause:

```text
Nginx service running on EC2
```

Check:

```bash
sudo lsof -i :80
```

Stop Nginx:

```bash
sudo systemctl stop nginx
```

Verify:

```bash
sudo systemctl status nginx
```

---

# Step 15: Deploy Docker Container

Run container:

```bash
sudo docker run -d -p 80:80 --name sanu-app sanu-web
```

Verify:

```bash
sudo docker ps
```

Output:

```text
STATUS: Up
PORTS: 0.0.0.0:80->80/tcp
```

---

# Step 16: Access Live Website

Open:

```text
http://<EC2-Public-IP>
```

Result:

```text
DevOps Pipeline Project
Built by Sanu
Day 20 - GitHub → Docker → AWS Deployment
```

Website successfully deployed on AWS.

---

# Key Commands Learned

```bash
git init
git add .
git commit -m "message"
git push

docker build -t image-name .
docker run -d -p 80:80 image-name
docker ps

ssh -i key.pem ubuntu@ip

sudo systemctl stop nginx
sudo lsof -i :80
```

---

# Key Concepts Learned

## Continuous Integration (CI)

Automatically build and validate code whenever changes are pushed to GitHub.

Flow:

```text
Git Push
    ↓
GitHub Actions
    ↓
Docker Build
```

---

## Docker

Docker packages applications into portable containers.

Benefits:

* Consistent environment
* Easy deployment
* Lightweight

---

## AWS EC2

Elastic Compute Cloud (EC2) provides virtual servers in the cloud.

Used for:

* Hosting applications
* Running containers
* Deploying websites

---

# Achievement

Successfully built and deployed a complete DevOps pipeline using:

```text
GitHub
GitHub Actions
Docker
AWS EC2
Nginx
Linux
```

Final Workflow:

```text
GitHub
    ↓
GitHub Actions
    ↓
Docker Build
    ↓
AWS EC2
    ↓
Docker Container
    ↓
Live Website
```

---

# Day 20 Status

✅ Project Completed Successfully
