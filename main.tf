# 1. PROVIDER
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# 2. VPC
resource "aws_vpc" "desafio_vpc" {
  cidr_block = "10.0.0.0/16"
  tags       = { Name = "desafioo-vpc" }
}

# 3. SUBNET PÚBLICA (Zona A)
resource "aws_subnet" "public_sub" {
  vpc_id            = aws_vpc.desafio_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  tags = { Name = "public-subnet-fargate" }
}

# 4. SUBNET PRIVADA (Zona B)
resource "aws_subnet" "private_sub" {
  vpc_id            = aws_vpc.desafio_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  tags = { Name = "private-subnet-rds" }
}

# 5. GRUPO DE SUBNETS DO BANCO
resource "aws_db_subnet_group" "rds_sg" {
  name       = "rds-subnet-group"
  subnet_ids = [aws_subnet.private_sub.id, aws_subnet.public_sub.id]
  tags       = { Name = "RDS Subnet Group" }
}

# 6. SECURITY GROUP DO BANCO
resource "aws_security_group" "rds_security" {
  name   = "rds-sg"
  vpc_id = aws_vpc.desafio_vpc.id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }
}

# 7. BANCO DE DADOS RDS
resource "aws_db_instance" "postgres_db" {
  allocated_storage    = 20
  db_name              = "meubanco"
  engine               = "postgres"
  engine_version       = "15"
  instance_class       = "db.t3.micro"
  username             = "postgres"
  password             = "SenhaSegura123"
  db_subnet_group_name = aws_db_subnet_group.rds_sg.name
  vpc_security_group_ids = [aws_security_group.rds_security.id]
  skip_final_snapshot  = true
  publicly_accessible  = false
}

# 8. REPOSITÓRIO ECR
resource "aws_ecr_repository" "meu_app_repo" {
  name = "repositorio-desafio"
}

# 9. CLUSTER ECS
resource "aws_ecs_cluster" "meu_cluster" {
  name = "cluster-fargate-desafio"
}