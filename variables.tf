variable "seat_id" {
  type        = string
  default = "XX"
}

variable "fabric_name_prefix" {
  description = "Fabric Name Prefix"
  type        = string
  default = "DEVWKS1440-"
}

variable "leaf_model_name" {
  description = "Name of the Model of Leaf"
  type        = string
  default     = "HF6100-32D"
}

variable "connection_interface_1" {
  description = "Interface name for the first connection between the two nodes"
  type        = string
  default     = "Ethernet1_31"
}

variable "connection_interface_2" {
  description = "Interface name for the second connection between the two nodes"
  type        = string
  default     = "Ethernet1_32"
}

