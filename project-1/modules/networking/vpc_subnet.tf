resource "aws_vpc" "main" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "default"

  tags = {
    Name = "${var.vpc_name}"
  }
}

output "vpc_id" {
    value = "${aws_vpc.main.id}"
}


resource "aws_subnet" "main" {
  vpc_id     = "${var.vpc_id}"
  cidr_block = "${var.subnet_cidr}"

  tags = {
    Name = "${var.subnet_name}"
  }
}

output "subnet_id" {
    value = "${aws_subnet.main.id}"
}