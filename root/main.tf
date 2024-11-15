module "sid23network" {
source = "../modules/network"
 secgrpname = "mysecgrp"
 dbsubnetcidr = var.dbsubnetcidr
 websubnetcidr = var.websubnetcidr
env = var.env
}

module "sid23vm" {
  source = "../modules/compute"
  amiid = var.amiid
  vmsize = var.vmsize
  env = var.env
  vmsubnetid = module.sid23network.wesnetname
  vmkeyname = "ec2-sid-23-key"
}







