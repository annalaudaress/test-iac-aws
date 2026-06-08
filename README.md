This project implements Infrastructure as Code (IaC) using Terraform, server configuration with Ansible, and a CI/CD pipeline using GitHub Actions, including validation steps and a security scan using OWASP ZAP.

This project automates:

AWS infrastructure provisioning using Terraform
EC2 instance creation (Ubuntu)
Server configuration using Ansible
Application deployment (e.g., Keycloak via Docker)
CI/CD validation using GitHub Actions
Security scanning using OWASP ZAP (DAST)
# 🚀 Test IaC AWS - Terraform + Ansible + CI/CD + ZAP

This project implements **Infrastructure as Code (IaC)** using **Terraform**, server configuration with **Ansible**, and a **CI/CD pipeline using GitHub Actions**, including validation steps and a security scan using **OWASP ZAP**.

---

## 📌 Architecture Overview

This project automates:

- AWS infrastructure provisioning using Terraform
- EC2 instance creation (Ubuntu)
- Server configuration using Ansible
- Application deployment (e.g. Keycloak via Docker)
- CI/CD validation using GitHub Actions
- Security scanning using OWASP ZAP (DAST)

<img width="960" height="386" alt="instancia criada" src="https://github.com/user-attachments/assets/fe6c25c2-8fe9-4109-b9eb-316a91e7fa1b" />

<img width="1651" height="552" alt="image" src="https://github.com/user-attachments/assets/562d4708-9bfa-465a-a27d-918f6394e135" />
<img width="1913" height="635" alt="image" src="https://github.com/user-attachments/assets/9bc0768f-2f03-4aa3-a26a-66e0dff3cb38" />

---

## 🧰 Technologies Used

- Terraform
- AWS (EC2, Security Groups)
- Ansible
- Docker / Docker Compose
- GitHub Actions (CI/CD)
- OWASP ZAP (DAST)
- Linux (Ubuntu)


---

## ⚙️ CI/CD Pipeline

The pipeline runs automatically on:

- Push to main branch
- Pull Requests

### 🔹 Pipeline Jobs

#### 1. Validate (Terraform)

- terraform fmt -check
- terraform validate

#### 2. Lint (Ansible)

- Install Ansible
- Run ansible-lint

#### 3. Security Scan (OWASP ZAP)

- Runs a baseline DAST scan against the deployed application

---

## 🚀 How to Run Locally

### 1. Clone the repository

```bash
git clone https://github.com/annalaudaress/test-iac-aws.git
cd test-iac-aws

📌 Project Status
Infrastructure automated
Deployment automated
CI/CD pipeline working
Security scanning integrated
