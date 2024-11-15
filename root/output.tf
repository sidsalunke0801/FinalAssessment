output "vpcid" {
  value = module.sid23network.vpcdata
}

output "vmname" {
  value = module.sid23vm.vmname
}

output "vpccidrblock" {
  value = module.sid23network.vpccidrblock
}

output "ec2_public_ip" {
  value = module.sid23vm.ec2_public_ip
}