# Issues & RCA

ALB 502:
Cause: wrong port + health check
Fix: use port 80 and /login

Kaniko crash:
Cause: minimal image
Fix: use debug image

ECR auth:
Cause: missing IAM role permissions
Fix: attach ECR policy

Jenkins pending:
Cause: no storage
Fix: install EBS CSI driver
