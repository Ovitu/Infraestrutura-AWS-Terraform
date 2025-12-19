# 🚀 AWS Cloud Infrastructure with Terraform

Este projeto automatiza o provisionamento de uma arquitetura segura e escalável para hospedar uma API na AWS.

## 🏗️ Arquitetura
A infraestrutura foi desenhada para garantir isolamento de dados e alta disponibilidade:
* **Networking**: VPC com subnets públicas e privadas em múltiplas zonas de disponibilidade (Multi-AZ).
* **Database**: Instância RDS Postgres isolada em rede privada.
* **Containers**: Cluster ECS Fargate e repositório ECR prontos para deploy.

## 🛠️ Tecnologias
* **Terraform** (Infrastructure as Code).
* **AWS** (VPC, RDS, ECS, ECR).

## 📄 Como usar
1. Clone o repositório.
2. Execute `terraform init`.
3. Execute `terraform apply`.
