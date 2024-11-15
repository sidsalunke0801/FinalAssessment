resource "aws_instance" "sid_instance23" {
  ami = var.amiid
  instance_type = var.vmsize
  tags = {
    Name = "sid-${var.env}-23"
  }
  subnet_id = var.vmsubnetid
  key_name = var.vmkeyname
  associate_public_ip_address = true
}