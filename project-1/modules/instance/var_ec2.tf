variable "ami" {
    default ="ami-0d6c336fc1df6d884"
}

variable "instance_type" {
    default ="t2.micro"
}

variable "instance_name" {
    default = "my_instance"
}

variable "inst_count" {
    default ="1"
}

variable "subnet_id" {}