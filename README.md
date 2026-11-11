# Automated AWS Infrastructure Deployment with Terraform (IaC)

This project provisions a resilient, secure foundational cloud architecture on Amazon Web Services using HashiCorp Terraform.

## 🏗️ Architecture Overview

- **Virtual Private Cloud (VPC):** Custom `10.0.0.0/16` CIDR with DNS hostnames and resolution enabled.
- **Subnet Tiering:** Public Subnet (`10.0.1.0/24`) configured for automated public IP assignment.
- **Routing & Internet Access:** Attached Internet Gateway (IGW) with custom Route Table managing default egress (`0.0.0.0/0`).
- **Edge Security:** Stateful AWS Security Group restricting inbound traffic to port 80 (HTTP) while allowing full outbound access.
- **Compute Instance:** Amazon EC2 (`t2.micro` Free Tier) dynamically fetching the latest Amazon Linux 2023 AMI, bootstrapped with a user-data script deploying an Apache HTTP server.

## 📂 Repository Structure

- `versions.tf` - Terraform binary and AWS provider constraints.
- `variables.tf` - Parameterized variables for region, CIDR blocks, and compute sizes.
- `main.tf` - Core resource definitions (VPC, IGW, Subnet, Route Table, SG, EC2).
- `outputs.tf` - Exported attributes (VPC ID and public Web Server IP).

## 🚀 Deployment Instructions
