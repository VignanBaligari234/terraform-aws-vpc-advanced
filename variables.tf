variable "cidr_block" {
  
}

variable "enable_dns_hostnames" {
  default = true
}

variable "enable_dns_support" {
  default = true
}

variable "common_tags" {
  type = map 
  default = {}
}

variable "vpc_tags" {
  type = map 
  default = {}
}

variable "project_name" {

}

variable "igw_tags" {
  default = {}
}

variable "public_subnet_cidr" {
  type = list  
  validation {
    condition = length(var.public_subnet_cidr) == 2
    error_message = "please provide 2 public subnet CIDR"
  }
}

variable "private_subnet_cidr" {
  type = list  
  validation {
    condition = length(var.private_subnet_cidr) == 2
    error_message = "please provide 2 private subnet CIDR"
  }
}

variable "database_subnet_cidr" {
  type = list  
  validation {
    condition = length(var.database_subnet_cidr) == 2
    error_message = "please provide 2 database subnet CIDR"
  }
}

variable "nat_gateway_tags" {
  default = {}
}

variable "public_route_table_tags" {
  default = {}
}

variable "private_route_table_tags" {
  default = {}
}

variable "database_route_table_tags" {
  default = {}
}

variable "db_subnet_group_tags" {
  default = {}
}

variable "is_peering_required" {
  default = false
}

variable "requestor_vpc_id" {
  
}

variable "default_route_table_id" {

}

variable "default_vpc_cidr" {
  
}