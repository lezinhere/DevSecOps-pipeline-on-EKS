# DevSecOps Pipeline on AWS EKS

## Overview
This project demonstrates a complete cloud-native DevSecOps pipeline deployed on AWS EKS. It integrates CI/CD, security scanning, and containerization using Kubernetes-native tools.

---

## Architecture

GitHub → Jenkins → Kubernetes Agent → Kaniko → AWS ECR  
                             ↓  
                SonarQube | OWASP | Trivy  

---

## Key Features

- Jenkins running on Kubernetes (EKS)
- Dynamic agent provisioning using Kubernetes pods
- Dockerless image builds using Kaniko
- Integrated DevSecOps pipeline:
  - SAST → SonarQube
  - Dependency Scan → OWASP
  - Container Scan → Trivy
- Secure image push to AWS ECR using IAM roles
- Application exposed via AWS ALB Ingress

---

## Pipeline Stages

1. Code Checkout
2. Build & Unit Testing
3. Dependency Scanning
4. Static Code Analysis
5. Docker Image Creation
6. Image Build & Push (Kaniko)
7. Image Security Scan (Trivy)

---

## Challenges Solved

- ALB 502 errors due to health check issues
- Kaniko container failures in Kubernetes
- IAM role configuration for ECR access
- Jenkins agent resource tuning (OOM issues)
- Persistent storage setup using EBS CSI driver

---

## Project Structure

- jenkins/ → Jenkinsfile & config
- k8s/ → Kubernetes manifests
- docs/ → Setup guide & RCA
- scripts/ → automation scripts

---

## Author

Lezin VM  
AWS / DevOps Engineer
