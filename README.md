# Módulo Terraform - Amazon Elastic Compute Cloud (Amazon EC2)

Módulo do Terraform para provisionamento de instâncias do Amazon Elastic Compute Cloud

## Como usar o modulo

Crie um arquivo .tf para adicionar o modulo no seu projeto como o exemplo a baixo:

```hcl
module "ec2" {
  source = "github.com/marcelocarminati/terraform-module-ec2?ref=v.0.1"

  ami                     = var.ami
  disable_api_termination = var.disable_api_termination
  ebs_optimized           = var.ebs_optimized
  instance_type           = var.instance_type
  key_name                = var.key_name
  monitoring              = var.monitoring
  region                  = var.region
  security_groups         = var.security_groups
  server_name             = var.server_name
  subnet_id               = var.subnet_id
  volume_size             = var.volume_size
  volume_type             = var.volume_type
}
```
Depois copie o arquivo variables.tf para o seu projeto. 
Agora crie um arquivo variables.tfvars no seu projeto com o seguinte conteudo e defina os valores nas variaveis.

```hcl
#Preencher valores das variaveis.
ami                     = ""
disable_api_termination = 
ebs_optimized           = 
instance_type           = ""
key_name                = ""
monitoring              = 
region                  = ""
security_groups         = [""]
server_name             = ""
subnet_id               = ""
qtd_instance            = 
volume_size             = 
volume_type             = ""
```

# Recursos provisionados

- AWS EC2 Instance

# Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| ami | ID da AMI usada para provisionar a instância | string | n/a | yes |
| disable\_api\_termination | Controla a proteção de destruição (terminate) da instância | string | `"false"` | no |
| ebs\_optimized | Controla se a instância será provisionada como EBS-optimized | string | `"false"` | no |
| instance\_type | Tipo da instância | string | n/a | yes |
| key\_name | Chave SSH | string | n/a | no |
| monitoring | Controla se a instância terá monitoramento detalhado | string | `"false"` | no |
| region | Região onde o recurso deve ser provisionado | string | n/a | yes |
| security\_groups | Grupo de segurança que deseja associar a instância | list | n/a | no |
| server\_name | Nome da instância | string | n/a | no |
| subnet\_id | ID da subnet onde a instância será provisionada | string | `""` | no |
| qtd\_instance | Número de instâncias que serão provisionadas | string | `"1"` | no |
| volume_size | Tamanho do disco | number | n/a | no |
| volume_type | Tipo do disco | string | n/a | no |


# Outputs

| Name | Description |
|------|-------------|
| private\_dns | Lista dos endereços DNS privados das instâncias |
| private\_ip | Lista dos IPs privados das instâncias |
| public\_dns | Lista dos endereços DNS públicos das instâncias |
| public\_ip | Lista dos IPs públicos das instâncias |
