# Create EKS cluster
eksctl create cluster --name devsecops-cluster --region ap-south-1

# Update kubeconfig
aws eks update-kubeconfig --region ap-south-1 --name devsecops-cluster

# Install ALB Controller
helm repo add eks https://aws.github.io/eks-charts
helm repo update

# Install Jenkins
helm repo add jenkins https://charts.jenkins.io
helm install jenkins jenkins/jenkins -n jenkins --create-namespace

# Install SonarQube
helm repo add sonarqube https://SonarSource.github.io/helm-chart-sonarqube
helm install sonarqube sonarqube/sonarqube -n sonarqube --create-namespace

# Create ECR repo
aws ecr create-repository --repository-name petclinic

# Attach ECR IAM policy
aws iam attach-role-policy \
  --role-name <NODE-ROLE> \
  --policy-arn arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess
