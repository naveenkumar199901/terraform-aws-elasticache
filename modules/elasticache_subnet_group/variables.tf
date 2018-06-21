variable "create" {
  description = "(Optional) Whether to create this resource or not"
  default     = true
}

variable "name" {
  description = "(Required) Name for the cache subnet group. Elasticache converts this name to lowercase."
  type        = "string"
}

variable "identifier" {
  description = "(Required) The identifier of the resource"
  type        = "string"
}

variable "subnet_ids" {
  description = "(Required) List of VPC Subnet IDs for the cache subnet group"
  type        = "list"
  default     = []
}
