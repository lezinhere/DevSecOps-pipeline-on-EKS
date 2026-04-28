# DevSecOps Pipeline on AWS EKS

## Overview
Cloud-native DevSecOps pipeline on AWS EKS using Jenkins, SonarQube, OWASP, Trivy, Kaniko, and ECR.

## Tech Stack
- AWS EKS
- Jenkins (Kubernetes agents)
- ALB Ingress
- SonarQube
- OWASP Dependency Check
- Trivy
- Kaniko
- AWS ECR

## Pipeline Flow
1. Code Checkout
2. Build & Test
3. Dependency Scan
4. SonarQube Analysis
5. Build Image (Kaniko)
6. Scan Image (Trivy)
7. Push to ECR

## Setup Guide
See docs/setup-guide.md

## Issues & RCA
See docs/issues-rca.md
