data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

data "aws_subnets" "subnet" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.vpc.id]
  }

  filter {
    name   = "map-public-ip-on-launch"
    values = ["true"]
  }
}

data "aws_security_group" "ssh" {
  name   = var.security_group_name
  vpc_id = data.aws_vpc.vpc.id
}

data "aws_ami" "al2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

resource "aws_instance" "ec2" {
  ami                         = data.aws_ami.al2023.id
  instance_type               = var.instance_type
  subnet_id                   = data.aws_subnets.subnet.ids[0]
  vpc_security_group_ids      = [data.aws_security_group.ssh.id]
  key_name                    = aws_key_pair.key.key_name
  associate_public_ip_address = true

  tags = merge(var.tags, {
    Name = var.aws_instance_name
  })
}
