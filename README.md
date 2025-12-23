# 🚀 AWS Cloud Infrastructure with Terraform

## 📖 Sobre o Projeto

Este projeto demonstra o provisionamento automatizado de infraestrutura AWS usando Terraform, 
criando um ambiente completo para hospedar APIs containerizadas com segurança e escalabilidade.

**Objetivo**: Aplicar conceitos de Infrastructure as Code (IaC) para provisionar recursos 
cloud.


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

### 1. Clone o repositório
```bash
git clone https://github.com/seu-usuario/seu-repo.git
cd seu-repo
```

### 2. Configure suas credenciais AWS
```bash
aws configure
# Insira: Access Key ID, Secret Access Key, região (us-east-1)
```

### 3. Inicialize o Terraform
```bash
terraform init
```

### 4. Visualize o plano de execução
```bash
terraform plan
```

### 5. Aplique a infraestrutura
```bash
terraform apply
# Digite 'yes' quando solicitado
```

### 6. Para destruir os recursos (evitar custos)
```bash
terraform destroy
```








   Registro do terraform:
<img width="1919" height="1079" alt="Captura de tela 2025-12-19 165654" src="https://github.com/user-attachments/assets/a939f445-c627-468f-81f5-5f41a6b3df02" />



