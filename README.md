# 🚀 Terraform AWS Project  
## Setting up Infrastructure on AWS using Terraform  

This project demonstrates how to provision AWS infrastructure using **Terraform**.  
The setup includes a **VPC, public subnets, EC2 instances, Load Balancer, Target Group, Internet Gateway, Route Table, and Amazon S3** integration.  

---

## 🏗️ Architecture Diagram  

![Architecture](./AWS%20Terraform%20Infra.jpg)  

---

## 🔹 Infrastructure Components  

### 🌐 VPC  
- CIDR block: `10.0.0.0/16`  
- Provides the networking foundation for all AWS resources.  

📸 **Screenshot:**  
![VPC](vpc.png)  

---

### 🌍 Public Subnets  
- Used to host EC2 instances.  
- Each subnet belongs to a different Availability Zone for **high availability**.  

📸 **Screenshot:**  
![Public Subnets](subnet.png)  

---

### 💻 EC2 Instances  
- Deployed in **multiple subnets** to ensure redundancy.  
- Configured with **security groups** and **key pairs**.  

📸 **Screenshot:**  
![EC2 Instances](instance.png)  

---

### 🌐 Internet Gateway  
- Provides internet access to resources inside the VPC.  
- Route Table maps traffic from subnets to the Internet Gateway.  

📸 **Screenshot:**  
![Internet Gateway](gateway.png)  

---

### 🛣️ Route Table  
- Defines how traffic is routed within the VPC.  

📸 **Screenshot:**  
![Route Table](route.png)  

---

### 🎯 Target Group  
- Routes traffic to EC2 instances.  
- Ensures proper load distribution across multiple instances.  

📸 **Screenshot:**  
![Target Group](Tgroup.png)  

---

### ⚖️ Load Balancer  
- Distributes incoming traffic across EC2 instances.  
- Provides **scalability and high availability**.  

📸 **Screenshot:**  
![Load Balancer](alb.png)  

---

### 🪣 Amazon S3  
- Used for storing application data.  
- Can also be configured as a backend for Terraform state.  

📸 **Screenshot:**  
![Amazon S3](s3.png)  

---

## 📤 Terraform Outputs  

### ✅ Load Balancer DNS  
After applying Terraform, you’ll get the **Load Balancer DNS**.  

📸 **Screenshot:**  
![LB Output 1](alb1output.png)  
![LB Output 2](alboutput2.png)  

---

### ✅ EC2 Instance Public IPs  
Terraform also outputs the **public IPs** of the two instances.  

📸 **Screenshots:**  
![EC2 Instance 1](ec211.png)  
![EC2 Instance 2](ec22.png)  

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
