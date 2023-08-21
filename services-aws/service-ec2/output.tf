output "PublicIP" {
  value = resource.aws_instance.ec2.*.public_ip
}

output "PrivateIP" {
  value = resource.aws_instance.ec2.*.private_ip
}

output "Ec2ID" {
  value = resource.aws_instance.ec2.*.id
}
