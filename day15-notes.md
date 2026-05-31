# Day 15 - AWS EC2 Basics

## Objective

Learn the fundamentals of AWS EC2 and launch a Linux server in the cloud.

---

## What is AWS?

AWS (Amazon Web Services) is a cloud computing platform that provides on-demand computing resources such as servers, storage, networking, databases, and many other services.

---

## What is Cloud Computing?

Cloud computing allows us to rent computing resources over the internet instead of purchasing physical hardware.

### Traditional Model

User → Own Computer → Own Server

### Cloud Model

User → AWS Cloud → Virtual Server

---

## What is EC2?

EC2 (Elastic Compute Cloud) is a service that allows users to create virtual machines called Instances.

An EC2 instance behaves like a real computer running in the cloud.

---

## Key EC2 Concepts

### 1. AMI (Amazon Machine Image)

An AMI is a template used to launch an EC2 instance.

Examples:

* Ubuntu 24.04
* Amazon Linux
* Debian

Purpose:

* Provides Operating System
* Provides Initial Configuration

---

### 2. Instance Type

Defines CPU, RAM and performance.

Example:

t3.micro

Specifications:

* 2 vCPU
* 1 GB RAM

Used for learning and small projects.

---

### 3. Key Pair

A Key Pair is used for secure login.

Components:

* Public Key
* Private Key (.pem)

Purpose:

* Passwordless Authentication
* Secure SSH Access

Important:

Never share the private key.

---

### 4. Security Group

A Security Group acts as a virtual firewall.

Controls:

* Incoming Traffic
* Outgoing Traffic

Rules Used:

SSH (22) → Remote Login

HTTP (80) → Website Access

---

### 5. Public IP Address

A public IP allows users on the internet to access the instance.

Example:

13.xxx.xxx.xxx

---

### 6. Storage (EBS)

Elastic Block Store (EBS) provides disk storage.

Used for:

* Operating System Files
* Website Files
* Application Data

---

## Steps Performed

### Launch Instance

1. Open EC2 Console
2. Launch Instance
3. Select Ubuntu 24.04
4. Choose t3.micro
5. Create Key Pair
6. Allow SSH Traffic
7. Configure Storage
8. Launch Instance

---

## Status Checks

AWS performs:

### System Status Check

Verifies AWS hardware and infrastructure.

### Instance Status Check

Verifies operating system health.

Expected Result:

Check Passed

---

## Important Commands Learned

### SSH

Secure Shell is used to connect to a remote server.

Example:

ssh -i key.pem ubuntu@server-ip

---

## Summary

Today I learned:

* AWS Basics
* Cloud Computing Concepts
* EC2 Instances
* AMI
* Security Groups
* Key Pairs
* Public IP
* SSH Fundamentals

This was my first cloud server launch on AWS.
