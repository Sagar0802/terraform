variable "vpc_cidr" {
    default = "190.168.0.0/16"
}

variable "vpc_name" {
    default = "myVPC"
}

variable "vpc_id" {}

variable "subnet_cidr" {
    default = "190.168.1.0/24"
}
variable "subnet_name" {
    default ="subnet-1"
}