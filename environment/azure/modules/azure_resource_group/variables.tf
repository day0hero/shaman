variable "vnet_name" {
  type    = string
  default = ""
}

variable "resource_group_name" {
  type    = string
  default = ""
}

variable "address_space" {
  type    = list(string)
  default = ""
}

variable "public_subnet_names" {
  type = list(string)
  default = ["public-"]
}

variable "controlplane_subnet_names" {
  type = list(string)
  default = ["controlplane-"]
}

variable "compute_subnet_names" {
  type = list(string)
  default = ["compute-"]
}

variable "tags" {
  type = map(string)
  default = {
  }
}

variable "disable_bgp_route_propogation" {
  type    = bool
  default = true
}
