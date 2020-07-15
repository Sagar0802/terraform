resource "aws_instance" "web" {
  count="${var.inst_count}"
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  subnet_id = "${var.subnet_id}"

  tags = {
    Name = "${var.instance_name}"
  }
}