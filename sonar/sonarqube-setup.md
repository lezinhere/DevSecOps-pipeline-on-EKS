# SonarQube Setup

## Install using Helm
helm repo add sonarqube https://SonarSource.github.io/helm-chart-sonarqube
helm repo update

helm install sonarqube sonarqube/sonarqube \
  -n sonarqube \
  --create-namespace \
  --set service.type=NodePort \
  --set persistence.enabled=true \
  --set monitoringPasscode=sonar123 \
  --set community.enabled=true

## Access SonarQube
kubectl get svc -n sonarqube

## Default Login
username: admin  
password: admin  

## Generate Token
- Go to: My Account → Security → Generate Token
- Add token to Jenkins credentials
