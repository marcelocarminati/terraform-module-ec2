resource "aws_instance" "main" {
  count = var.qtd_instance

  ami                     = var.ami
  disable_api_termination = var.disable_api_termination
  instance_type           = var.instance_type
  key_name                = var.key_name
  monitoring              = var.monitoring

  security_groups = var.security_groups
  subnet_id       = var.subnet_id

  ebs_optimized = var.ebs_optimized
  root_block_device {
    volume_size = var.volume_size
    volume_type = var.volume_type
  }

  tags = {
    name = "${var.server_name}_${count.index}"
  }

  volume_tags = {
    name = "${var.server_name}_${count.index}"
  }
}