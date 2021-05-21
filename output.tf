output "private_dns" {
  description = "Lista dos endereços DNS privados das instâncias"
  value       = aws_instance.main.*.private_dns
}

output "private_ip" {
  description = "Lista dos IPs privados das instâncias"
  value       = aws_instance.main.*.private_ip
}

output "public_dns" {
  description = "Lista dos endereços DNS públicos das instâncias"
  value       = aws_instance.main.*.public_dns
}

output "public_ip" {
  description = "Lista dos IPs públicos das instâncias"
  value       = aws_instance.main.*.public_ip
}