variable "region" {
  default = "ap-southeast-1"
}

variable "vpc_name" {
  default = "demo"
}
variable "profile" {
  default = "default"
}

variable "main_vpc_cidr" {
  default = "192.168.0.0/16"
}

variable "public_subnet_1" {
  default = "192.168.0.0/18"
}

variable "public_subnet_2" {
  default = "192.168.64.0/18"
}

variable "private_subnet_1" {
  default = "192.168.128.0/18"
}

variable "private_subnet_2" {
  default = "192.168.192.0/18"
}