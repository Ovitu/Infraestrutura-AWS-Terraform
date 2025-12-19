# 🚀 AWS Cloud Infrastructure with Terraform

Este projeto automatiza o provisionamento de uma arquitetura segura e escalável para hospedar uma API na AWS.

## 🏗️ Arquitetura
A infraestrutura foi desenhada para garantir isolamento de dados e alta disponibilidade:
* **Networking**: VPC com subnets públicas e privadas em múltiplas zonas de disponibilidade (Multi-AZ).
* **Database**: Instância RDS Postgres isolada em rede privada.
* **Containers**: Cluster ECS Fargate e repositório ECR prontos para deploy.

## 🛠️ Tecnologias
* **Terraform** (Infrastructure as Code).
* **AWS**.
* ### Recursos AWS provisionados:
- `aws_vpc` - Virtual Private Cloud
- `aws_subnet` - Subnets públicas e privadas
- `aws_internet_gateway` - Gateway para internet
- `aws_route_table` - Tabelas de roteamento
- `aws_security_group` - Firewalls
- `aws_db_instance` - RDS PostgreSQL
- `aws_ecs_cluster` - Cluster ECS
- `aws_ecs_task_definition` - Definição de tasks
- `aws_ecs_service` - Service ECS
- `aws_ecr_repository` - Registry Docker
- `aws_iam_role` - Roles IAM
- `aws_cloudwatch_log_group` - Logs


## 📄 Como usar
1. Clone o repositório.
2. Execute `terraform init`.
3. Execute `terraform apply`.
