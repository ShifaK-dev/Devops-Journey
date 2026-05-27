# Day 9 Notes

# YAML + CI/CD Concepts

## YAML

### YAML
- Human-readable configuration language
- Commonly used in DevOps tools and automation systems

### Where YAML Is Used
- GitHub Actions
- Kubernetes
- Docker Compose
- GitLab CI/CD
- DevOps automation pipelines

## Important YAML Rule

### Indentation Matters
- YAML uses spaces and indentation
- Wrong spacing can break the configuration file

## Basic YAML Structure

### name
- Defines workflow or pipeline name

Example:
```yaml
name: My Workflow
```

### jobs
- Defines tasks/workflows to execute

### steps
- Defines actions inside jobs

## Simple YAML Example

```yaml
name: Demo Workflow

jobs:
  build:
    steps:
      - run: echo "Hello"
```

---

# CI/CD

## CI — Continuous Integration

### Continuous Integration
- Automatically tests and verifies code changes
- Integrates new code continuously into repository

### Purpose of CI
- Detect bugs early
- Test code automatically
- Ensure code stability
- Improve software quality

---

## CD — Continuous Delivery / Continuous Deployment

### Continuous Delivery
- Automatically prepares application for deployment

### Continuous Deployment
- Automatically deploys application after successful tests

### Purpose of CD
- Faster software releases
- Reduced manual deployment work
- Continuous automated delivery

---

# CI/CD Workflow

Developer Pushes Code  
→ GitHub Detects Push  
→ CI/CD Pipeline Starts  
→ Tests Run  
→ Build Process Executes  
→ Deployment Happens

---

# Benefits of CI/CD

- Faster deployments
- Reduced manual work
- Fewer human errors
- Continuous automation
- Faster delivery cycle
- Better software reliability

---

# GitHub Actions

## GitHub Actions
- GitHub’s built-in CI/CD automation platform

### Main Purpose
- Automatically execute workflows after events like code push

---

# Workflow File Location

```text
.github/workflows/
```

Example:

```text
.github/workflows/main.yml
```

---

# Important GitHub Actions Keywords

| Keyword | Meaning |
|---|---|
| name | workflow name |
| on | trigger event |
| jobs | tasks to execute |
| steps | actions inside jobs |
| run | execute command |
| runs-on | operating system/environment |

---

# GitHub Actions Example

```yaml
name: First Workflow

on: push

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout Code
        uses: actions/checkout@v4

      - name: Run Script
        run: echo "CI/CD pipeline running successfully"
```

---

# Workflow Execution Flow

Developer Pushes Code  
→ GitHub Detects Push  
→ YAML Workflow Starts  
→ Jobs Execute  
→ Steps Run Automatically

---

# Relationship Between YAML and CI/CD

## YAML
- Defines workflow instructions and configuration

## CI/CD System
- Reads YAML file and performs automation tasks

---

# Modern DevOps Workflow

Developer  
→ GitHub  
→ CI/CD Pipeline  
→ Docker Build  
→ Kubernetes Deployment  
→ Cloud Infrastructure  
→ Users Access Application

---

# Important Concepts Learned

- YAML is a configuration language used in DevOps
- CI/CD automates software delivery workflows
- GitHub Actions uses YAML workflows
- Automation starts automatically after code push
- Jobs contain multiple steps
- CI/CD pipelines reduce manual deployment effort
- Modern DevOps heavily depends on automation pipelines
- GitHub Actions can automate testing, building, and deployment
- YAML indentation is very important
- DevOps workflows rely heavily on automation systems