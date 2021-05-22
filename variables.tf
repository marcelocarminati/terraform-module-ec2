variable "ami" {
  type        = string
  description = "ID da AMI utilizada para instancia"

  validation {
    condition     = length(var.ami) > 4 && substr(var.ami, 0, 4) == "ami-"
    error_message = "O ami id informando não é valido."
  }
}

variable "disable_api_termination" {
  type        = bool
  description = "Controla a proteção de terminate da instancia"
  default     = false
}

variable "ebs_optimized" {
  type        = bool
  description = "Se o disco EBS sera otimizado"
  default     = false
}

variable "instance_type" {
  type        = string
  description = "Tipo da instancia EC2"

  validation {
    condition     = var.instance_type != ""
    error_message = "Não foi informando a variavel instance_type."
  }
}

variable "key_name" {
  type        = string
  description = "Chave de acesso ao S.O."
  default     = ""
}

variable "monitoring" {
  type        = string
  description = "Ativa monitoramento"
  default     = true
}

variable "region" {
  type        = string
  description = "Região da AWS"

  validation {
    condition     = var.region != ""
    error_message = "Não foi informando valor da região."
  }
}

variable "security_groups" {
  type        = list(any)
  description = "Grupo de segurança associados a instancia"
  default     = []
}

variable "server_name" {
  type        = string
  description = "Nome da instancia"

  validation {
    condition     = var.server_name != ""
    error_message = "Não foi informando a variavel server_name."
  }
}

variable "subnet_id" {
  type        = string
  description = "Id da subnet que a instancia estara"
  default     = ""
}

variable "qtd_instance" {
  type        = number
  description = "Numero de instancias que serão criadas"
  default     = 1
}

variable "volume_size" {
  type        = string
  description = "Tamanho do disco"

  validation {
    condition     = var.volume_size != ""
    error_message = "Não foi informando o tamanho do disco."
  }
}

variable "volume_type" {
  type        = string
  description = "Tipo do volume"

  validation {
    condition     = var.volume_type != ""
    error_message = "Não foi informado o tipo do disco."
  }
}