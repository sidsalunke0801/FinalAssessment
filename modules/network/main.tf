resource "aws_vpc" "sidvpc23" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "sid-vpc-23"
  }
}


resource "aws_subnet" "snet_web_23" {
  vpc_id = aws_vpc.sidvpc23.id
  cidr_block              = var.websubnetcidr
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "wsnet-${var.env}"
  }
}

resource "aws_subnet" "snet_db_23" {
  vpc_id = aws_vpc.sidvpc23.id
  cidr_block              = var.dbsubnetcidr
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "dbsnet-${var.env}"
  }
}

resource "aws_security_group" "secgroup23" {
  name        = var.secgrpname
  vpc_id      = aws_vpc.sidvpc23.id
  description = "web server traffic allowed ssh & http"
}

resource "aws_vpc_security_group_ingress_rule" "sid-ingress-22" {
  security_group_id = aws_security_group.secgroup23.id
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
  cidr_ipv4         = "0.0.0.0/0"
}

resource "aws_vpc_security_group_ingress_rule" "sid-ingress-80" {
  security_group_id = aws_security_group.secgroup23.id
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"
  cidr_ipv4         = "0.0.0.0/0"
}

resource "aws_vpc_security_group_egress_rule" "sid-egress" {
  security_group_id = aws_security_group.secgroup23.id
  ip_protocol       = "-1"
  cidr_ipv4         = "0.0.0.0/0"
}