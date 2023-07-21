output "PublicIP" {
  value = aws_eip.elastic_ip_addr.public_ip
}

output "PrivateIP" {
  value = aws_eip.elastic_ip_addr.private_ip
}

output "Ec2ID" {
  value = resource.aws_instance.ec2.id
}
