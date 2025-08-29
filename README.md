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

📸 **Screenshot:**  
![]()

---

### 2️⃣ Public Subnets
- Used to host EC2 instances.
- Each subnet belongs to a different Availability Zone for high availability.

📸 **Screenshot:**  
![](./images/public-subnets.png)

---

### 3️⃣ EC2 Instances
- Deployed in **multiple subnets** to ensure redundancy.
- Configured with security groups and key pairs.

📸 **Screenshot:**  
![](./images/ec2.png)

---

### 4️⃣ Internet Gateway & Route Table
- Internet Gateway provides internet access.
- Route Table maps traffic from subnets to the Internet Gateway.

📸 **Screenshot:**  
![](./images/igw-route.png)

---

### 5️⃣ Amazon S3
- Used for storing application data.
- Can be used as backend for Terraform state as well.

📸 **Screenshot:**  
![](./images/s3.png)

---


## Deployment Steps

```bash
# Clone the repo
git clone https://github.com/your-username/aws-terraform-infra.git
cd aws-terraform-infra
```
# Initialize Terraform
```
terraform init
```
# Validate config
```
terraform validate
```
# Plan the infra
```
terraform plan
```
# Apply
```
terraform apply -auto-approve
```
# Destroy when not needed
```
terraform destroy -auto-approve
```
---
## How to Use

**Clone this repository**
   ```bash
   git clone https://github.com/your-username/aws-terraform-infra.git
   cd aws-terraform-infra
