
## 🚀 ECS Fargate NGINX Terraform Project

This project uses **Terraform** to deploy an **NGINX container** on **AWS ECS using Fargate** with a custom **VPC** configuration.

### 🔧 What it creates:
- A new VPC with public subnets in `us-west-2`
- An ECS Cluster
- A Fargate Task Definition for the NGINX container
- An ECS Service to run the task
- A Security Group allowing HTTP (port 80) traffic
- IAM roles for ECS task execution

### 📦 Container
- Image: `nginx:latest`
- CPU: 256
- Memory: 512

### ✅ Infrastructure-as-Code
Everything is deployed with Terraform in a modular, secure, and reusable way.

---

> This is a learning project to demonstrate infrastructure deployment using IaC best practices with AWS and Terraform.
