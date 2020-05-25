#-----compute/_data.tf#-----

data "aws_ami" "server_ami" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn-ami-hvm*-x86_64-gp2"]
  }
}

data "template_file" "user-init" {
  count    = 2
  template = file("${path.module}/userdata.tpl")

  vars = {
    firewall_subnets = element(var.subnet_ips, count.index)
  }
}