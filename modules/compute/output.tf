output "vmname" {
  value = aws_instance.sid_instance23.tags.Name
}

output "ec2_public_ip" {
  value = aws_instance.sid_instance23.public_ip
}