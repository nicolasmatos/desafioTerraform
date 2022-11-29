# Desafio 2 - DevOps - G1

Desenvolver uma infraestrutura como código, usando o Terraform para migrar a aplicação da Marisa Store pra nuvem da AWS.

## 🚀 Começando

Essas instruções o ajudarão a implementar a aplicação criada para Marisa Store usando o Terraform.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.9 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.19 |
| <a name="git"></a> [git](#requirement\_git) | ~> 2.34.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.19 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_network"></a> [network](#module\network) | ./modules/network | n/a |
| <a name="module_rds"></a> [rds](#module\rds) | ./modules/rds | n/a |
| <a name="module_efs"></a> [efs](#module\efs) | ./modules/efs | n/a |
| <a name="module_ec2"></a> [ec2](#module\ec2) | ./modules/ec2 | n/a |
| <a name="module_alb"></a> [alb](#module\alb) | ./modules/alb | n/a |
| <a name="module_as"></a>  [as](#module\as)   | ./modules/as  | n/a |


## Variables Inputs

| Name | Type | Default | Required |
|------|------|---------|:--------:|
| <a name="aws_region"></a> aws_region | `string` | `null` | yes |
| <a name="project_name"></a> project_name | `string` | `null` | yes |
| <a name="course_name"></a> course_name | `string` | `null` | yes |


### 🔧 Instalação Projeto

```
Instalação do Terraform:
https://developer.hashicorp.com/terraform/downloads

Instalação Git:
https://git-scm.com/

Configuração Git:
git config --global user.neme "Informe o seu nome"
git config --global user.email "Informe o seu e-mail"

```

#### ***Importante!!!***

Utilizamos o S3 como backend para armazenar o arquivo terraform.tfstate, por isso será necessário editar o arquivo provider.tf informando o nome do seu bucket, que deverá ser previamente criado na AWS.


Clonar o repositório
```
Para clonar o repositório execute:
Git clone https://gitlab.com/cloud_treinamentos/devops/desafio2.git
```

Em seguida faremos a inicialização do Terraform:

```
Terraform init
```

## ⚙️ Criando a infra-estrutura na Cloud da AWS

Importante!!!
Certifique-se de estar no diretório onde o repositório foi clonado, etapa acima.

Execute os seguintes comandos na ordem a seguir:

```
Terraform plan
```
```
Terraform apply
```

## 📦 Implantação

No momento em que o comando

```
Terraform apply
```

 for executado, todos os recursos utilizados para criação da infra-estrutura serão listados.

**Uma mensagem será exibida em tela aguardando a confirmação.**

Para execução e criação da infra-estrutura é necessária a confirmação digitando **"y"** (yes).

## 🛠️ Ferramentas utilizadas

* [Gitlab](https://gitlab.com/) - controle de versão
* [Terraform](https://developer.hashicorp.com/terraform/downloads) - desenvolvimento infra-estrutura como código
* [Git](https://git-scm.com/) - clonar repositório

## 📌 Versão

Usamos https://gitlab.com/ para controle de versão. 


