variable "create" {
  description = "Whether to create this resource or not"
  default     = true
}

variable "name" {
  description = "(Required) The name of the ElastiCache parameter group"
  type        = "string"
}

variable "identifier" {
  description = "(Required) The identifier of the resource"
  type        = "string"
}

variable "family" {
  description = "(Optional) The family of the ElastiCache parameter group"
  type        = "string"
  default     = ""
}

variable "parameters" {
  description = "(Optional) A list of ElastiCache parameters to apply"
  default     = []
}
