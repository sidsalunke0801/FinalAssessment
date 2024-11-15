output "vpcdata" {
  value = aws_vpc.sidvpc23.id
}

output "vpccidrblock" {
  value = aws_vpc.sidvpc23.cidr_block
}

output "wesnetname" {
  value = aws_subnet.snet_web_23.id
}

output "vpcname" {
  value = aws_vpc.sidvpc23.tags.Name
}