☁️ AWS Architecture: Cloud Automation
Projeto de automação de infraestrutura utilizando Terraform para criar um ambiente seguro e escalável na AWS.

🏗️ Estrutura do Projeto
Rede (VPC): Ambiente isolado com alta disponibilidade em múltiplas zonas.

Segurança (RDS): Banco de dados PostgreSQL protegido em subnet privada (sem acesso externo).

Containers (ECS/ECR): Cluster e repositório prontos para rodar aplicações via Fargate.

🛠️ Como foi construído
Linguagem: HCL (Terraform).

Provedor: AWS (Amazon Web Services).

Conceitos: IaC (Infrastructure as Code), Multi-AZ, Segregação de Redes.

2. Organização da Pasta (Sem Confusão)
Sua pasta no computador deve conter apenas o essencial. Delete todo o resto para não poluir seu GitHub:

main.tf: O arquivo de código que você já validou.

README.md: O texto acima.

.gitignore: Apenas para esconder arquivos temporários da AWS.
