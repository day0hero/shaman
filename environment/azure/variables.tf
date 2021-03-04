variable "resource_group_name" {
  type = string
  default = ""
}

variable "region" {
  type = string
  default = ""
}

variable "vnet_name" {
  type = string
  default = ""
}

variable "address_space" {
  type    = list
  default = ["10.0.0.0/16"]
}

variable "subnet_names" {
  type    = list(string)
  default = [""]
}

variable "subnet_prefixes" {
  type    = list(string)
  default = [""]
}

variable "dns_private_zone_name" {
  type    = string
  default = ""
}

variable "dns_public_zone_name" {
  type    = string
  default = ""
}
