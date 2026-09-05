# tech-challenge-oficina-database-infra

## Objetivo

Este repositorio sera responsavel pelo provisionamento do PostgreSQL gerenciado atraves do AWS RDS utilizando Terraform.

Nesta etapa inicial, nenhum recurso AWS e criado.

## Tecnologias

- Terraform
- AWS Provider for Terraform
- GitHub Actions
- AWS RDS PostgreSQL

## Estrutura do projeto

```text
terraform/
  main.tf
  variables.tf
  outputs.tf
  providers.tf
  versions.tf

.github/
  workflows/
    terraform-ci.yml
```

## Execucao local

Execute os comandos a partir do diretorio `terraform`:

```bash
terraform init
terraform fmt
terraform validate
```

## CI

O workflow `Terraform CI` executa validacoes do Terraform em pushes e pull requests para as branches `homolog` e `main`, alem de permitir execucao manual via `workflow_dispatch`.

O CI executa apenas `terraform fmt -check`, `terraform init -backend=false` e `terraform validate`.
