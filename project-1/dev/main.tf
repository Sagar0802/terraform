provider "aws" {
  version = "~> 2.0"
  region  = "ap-southeast-1"
}

module "my_vpc" {
    source = "../modules/networking"
    vpc_cidr = "190.168.0.0/16"
    vpc_name = "myVPC"
    vpc_id = "${module.my_vpc.vpc_id}"
    subnet_cidr = "190.168.1.0/24"
    subnet_name = "subnet-1"
}

module "ec2" {
  source = "../modules/instance" 
  instance_type = "t2.micro"
  instance_name = "my_instance"
  inst_count = "1"
  subnet_id = "${module.my_vpc.subnet_id}"
  
}