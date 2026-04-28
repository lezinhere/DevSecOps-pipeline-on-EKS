# Setup Guide

## Prerequisites
- AWS CLI configured
- kubectl installed
- eksctl installed
- Helm installed

---

## Step 1: Create EKS Cluster
eksctl create cluster --name devsecops-cluster --region ap-south-1

---

## Step 2: Configure kubectl
aws eks update-kubeconfig --region ap-south-1 --name devsecops-cluster

---

## Step 3: Install ALB Controller
helm repo add eks https://aws.github.io/eks-charts
helm repo update

---

## Step 4: Install Jenkins
helm repo add jenkins https://charts.jenkins.io
helm install jenkins jenkins/jenkins -n jenkins --create-namespace

---

## Step 5: Install SonarQube
helm install sonarqube sonarqube/sonarqube -n sonarqube --create-namespace

---

## Step 6: Configure ECR
aws ecr create-repository --repository-name petclinic

---

## Step 7: Run Pipeline
- Open Jenkins UI
- Create pipeline job
- Add Jenkinsfile
- Run build
