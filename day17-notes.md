# Day 17 - CI with GitHub Actions

## Objective

Learn the fundamentals of Continuous Integration (CI) and automate tasks using GitHub Actions.

---

## What is CI?

CI stands for **Continuous Integration**.

It is the practice of automatically building and testing code whenever changes are pushed to a repository.

### Traditional Workflow

Developer
↓
Write Code
↓
Manual Testing
↓
Manual Build

### CI Workflow

Developer
↓
git push
↓
GitHub Actions
↓
Build
↓
Test
↓
Result

---

## What is CD?

CD stands for:

- Continuous Delivery
- Continuous Deployment

Purpose:

Automate the deployment process after successful builds and tests.

### CD Flow

Code Push
↓
Build
↓
Test
↓
Deploy Automatically

---

## What is GitHub Actions?

GitHub Actions is GitHub's automation platform.

It allows workflows to run automatically when events occur.

Examples:

- Push
- Pull Request
- Release
- Issue Creation

---

## Workflow Structure

GitHub workflows are stored inside:

.github/workflows/

Example:

.github/
└── workflows/
    └── hello.yml

---

## First Workflow

File:

.github/workflows/hello.yml

```yaml
name: Sanu First GitHub Action

on:
  push:

jobs:
  hello-job:
    runs-on: ubuntu-latest

    steps:
      - name: Print Welcome Message
        run: echo "Hello Sanu! Your first GitHub Action is running 🚀"

      - name: Show Date
        run: date

      - name: Show Current Directory
        run: pwd
```