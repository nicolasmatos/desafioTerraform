# Desafio 2 - DevOps - G1

Desenvolver uma infraestrutura como código, usando o Terraform para migrar a aplicação da Marisa Store pra nuvem da AWS.

## 🚀 Começando

Essas instruções o ajudarão a implementar a aplicação criada para Marisa Store usando o Terraform.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.9 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.19 |
| <a name="git"></a> [git](#requirement\_git) | >= 2.34.1 |

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
| <a name="owner"></a> owner | `string` | `null` | yes |
| <a name="domain_name"></a> domain_name | `string` | `null` | yes |
| <a name="terraform"></a> terraform | `bolean` | `true` | yes |
| <a name="environment"></a> environment | `string` | `null` | yes |

### 🔧 Instalação Projeto

```
Instalação do Terraform:
https://developer.hashicorp.com/terraform/downloads

Instalação Git:
https://git-scm.com/

Configuração Git:
git config --global user.name "Informe o seu nome"
git config --global user.email "Informe o seu e-mail"
```

#### ***Importante!!!***

Utilizamos o S3 como backend para armazenar o arquivo terraform.tfstate, por isso será necessário editar o arquivo provider.tf informando o nome do seu bucket, que deverá ser previamente criado na AWS.

Para utilização do certificado SSL e o domínio personalizado para o ALB, é necessário ser criado a zona de hospedagem no Route 53 previamente e criado o certificado.

Clonar o repositório
```
Para clonar o repositório execute:
git clone https://gitlab.com/nicolasmatos/desafioTerraform.git
```

Em seguida faremos a inicialização do Terraform:

```
terraform init
```

## ⚙️ Criando a infra-estrutura na Cloud da AWS

Importante!!!
Certifique-se de estar no diretório onde o repositório foi clonado, etapa acima.

Execute os seguintes comandos na ordem a seguir:

```
terraform plan
```
```
terraform apply
```

## 📦 Implantação

No momento em que o comando

```
terraform apply
```

 for executado, todos os recursos utilizados para criação da infra-estrutura serão listados.

**Uma mensagem será exibida em tela aguardando a confirmação.**

Para execução e criação da infra-estrutura é necessária a confirmação digitando **"y"** (yes).

## 🗂️ Diagrama da solução

![Serviços AWS utilizados!](/diagram/diagram.png "Serviços AWS utilizados")

## 🛠️ Ferramentas utilizadas

* [AWS](https://aws.amazon.com/pt/console/) - Cloud Provider
* [Draw.io](https://draw.io/) - Diagrama
* [Git](https://git-scm.com/downloads) - Controle de Versão
* [Gitlab](https://gitlab.com/) - Repositório Remoto
* [Terraform](https://developer.hashicorp.com/terraform/downloads) - Infraestrutura como código

## 📌 Versão

Usamos https://gitlab.com/ para controle de versão. 
