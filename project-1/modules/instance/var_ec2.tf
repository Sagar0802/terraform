variable "ami" {
    default =""
}

variable "instance_type" {
    default ="t2.micro"
}

variable "instance_name" {
    default = "my_instance"
}

variable "count" {
    default ="1"
}

variable "subnet_id" {}