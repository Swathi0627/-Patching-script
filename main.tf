module "prod_vpc" {
    source = "../modules"
  
}

variable "region" {
    type = string
    default = "us-east-1"
}

variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
  
}

variable "Public_Subnet_cidr" {
    type = list (string)
    default = [ "10.0.1.0/24","10.0.2.0/24","10.0.3.0/24" ]
}

variable "Private_Subnet_Cidr" {
    type = list (string)
    default = [ "10.0.4.0/24","10.0.5.0/24","10.0.6.0/24" ]
}

variable "AZS" {
    type = list (string)
    default = [ "us-east-1a","us-east-1b","us-east-1c"]
}

