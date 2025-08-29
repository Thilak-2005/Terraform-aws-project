# Terraform-aws-project
# Setting up Infrastructure on AWS using Terraform

This project demonstrates how to provision AWS infrastructure using **Terraform**.  
The setup includes a **VPC, public subnets, EC2 instances, and Amazon S3** integration.

---

## Architecture Diagram

![](./AWS%20Terraform%20Infra.jpg)

---

##  Infrastructure Components

- **VPC**
  - CIDR blocks: `172.16.0.0/16`
  - Subnets: `172.16.0.0`, `172.16.1.0`, `172.16.2.0`
- **Public Subnets**
  - For hosting EC2 instances
- **EC2 Instances**
  - Deployed in multiple subnets for high availability
- **Internet Gateway & Route Table**
  - Provides internet access to public subnets
- **Amazon S3**
  - Storage integration for application data

---

## ⚙️ Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed
- AWS account and IAM credentials with appropriate permissions
- AWS CLI configured (`aws configure`)

---

## 🚀 How to Use

1. **Clone this repository**
   ```bash
   git clone https://github.com/your-username/aws-terraform-infra.git
   cd aws-terraform-infra
