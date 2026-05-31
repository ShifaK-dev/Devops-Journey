# Day 16 - Deploying a Website on AWS EC2 using Nginx

## Objective

Connect to an EC2 instance using SSH and deploy a simple web page using Nginx.

---

## Connecting to EC2

### Locate Key File

Downloaded:

sanu-key.pem

---

### Set Proper Permissions

Command:

```bash
chmod 400 sanu-key.pem
```

Purpose:

Makes the private key readable only by the owner.

---

### SSH into EC2

```bash
ssh -i ~/sanu-key.pem ubuntu@<public-dns>
```

Successful Login Output:

```text
ubuntu@ip-xxx-xxx-xxx:~$
```

---

## Basic Linux Verification

### Check Hostname

```bash
hostname
```

Purpose:

Displays server name.

---

### Check Current User

```bash
whoami
```

Output:

```text
ubuntu
```

---

### Check Current Directory

```bash
pwd
```

Output:

```text
/home/ubuntu
```

---

### Check Operating System

```bash
cat /etc/os-release
```

Purpose:

Displays Linux distribution details.

---

### Check Uptime

```bash
uptime
```

Purpose:

Displays how long the server has been running.

---

### Check Memory

```bash
free -h
```

Purpose:

Displays RAM usage.

---

## What is sudo?

sudo = Super User Do

Purpose:

Temporarily executes commands with administrator privileges.

Example:

```bash
sudo apt update
```

Without sudo:

Permission denied.

---

## Create Project Directory

```bash
mkdir devops
cd devops
```

Purpose:

Store project files.

---

## Install Nginx

### Update Packages

```bash
sudo apt update
```

Purpose:

Fetch latest package information.

---

### Install Nginx

```bash
sudo apt install nginx -y
```

Purpose:

Install web server software.

---

## Verify Nginx

```bash
sudo systemctl status nginx
```

Expected Output:

```text
Active: active (running)
```

Meaning:

Nginx service is running successfully.

---

## Enable Website Access

Security Group Rule Added:

HTTP (80)

Purpose:

Allows browsers to access the web server.

---

## Access Website

Open Browser:

```text
http://PUBLIC-IP
```

Result:

Welcome to nginx!

---

## Modify Default Web Page

Open Nginx HTML File:

```bash
sudo nano /var/www/html/index.nginx-debian.html
```

Replace Content:

```html
<h1>Hello from Sanu's AWS Server 🚀</h1>
<p>My first cloud deployment!</p>
```

Save:

CTRL + O

ENTER

CTRL + X

---

## Verify Deployment

Refresh Browser.

Result:

Custom web page displayed successfully.

---

## Concepts Learned

### Nginx

A high-performance web server.

Used For:

* Hosting Websites
* Reverse Proxy
* Load Balancing

---

### HTTP

HyperText Transfer Protocol

Default Port:

80

Used for web communication.

---

### SSH

Secure Shell

Default Port:

22

Used for remote administration.

---

### Public IP

Allows internet users to access the server.

---

## Architecture

Browser
↓
Public IP
↓
AWS EC2 Instance
↓
Ubuntu Server
↓
Nginx
↓
HTML Website

---

## Achievement

Successfully:

* Connected to AWS EC2 using SSH
* Installed Nginx
* Hosted a website
* Edited website content
* Accessed the website publicly through the internet

First Cloud Deployment Completed 🚀
