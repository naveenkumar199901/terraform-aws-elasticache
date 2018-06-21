variable "create" {
  description = "Whether to create this resource or not"
  default     = true
}

variable "number_cache_clusters" {
  description = "(Required) The number of cache clusters (primary and replicas) this replication group will have"
  type        = "string"
}

variable "identifier" {
  description = "(Required) The identifier of the resource"
  type        = "string"
}

variable "replication_group_id" {
  description = "(Required) Group identifier. ElastiCache converts this name to lowercase"
  type        = "string"
}

variable "node_type" {
  description = "(Required) The compute and memory capacity of the nodes in the node group."
  type        = "string"
}

variable "automatic_failover_enabled" {
  description = "(Optional) Specifies whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails."
  type        = "string"
  default     = false
}

variable "auto_minor_version_upgrade" {
  description = "(Optional) Specifies whether a minor engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window."
  type        = "string"
  default     = true
}

variable "availability_zones" {
  description = "(Optional) A list of EC2 availability zones in which the replication group's cache clusters will be created."
  type        = "list"
  default     = []
}

variable "engine" {
  description = "(Required) The name of the cache engine to be used for the clusters in this replication group."
  type        = "string"
}

variable "at_rest_encryption_enabled" {
  description = "(Optional) Whether to enable encryption at rest."
  type        = "string"
  default     = false
}

variable "transit_encryption_enabled" {
  description = "(Optional) Whether to enable encryption in transit."
  type        = "string"
  default     = false
}

variable "engine_version" {
  description = "(Required) The version number of the cache engine to be used for the cache clusters in this replication group."
  type        = "string"
}

variable "port" {
  description = "(Required) The port number on which each of the cache nodes will accept connections."
  type        = "string"
}

variable "parameter_group_name" {
  description = "(Optional) The name of the parameter group to associate with this replication group. If this argument is omitted, the default cache parameter group for the specified engine is used"
  type        = "string"
  default     = ""
}

variable "subnet_group_name" {
  description = "(Optional) The name of the cache subnet group to be used for the replication group"
  type        = "string"
  default     = ""
}

variable "security_group_ids" {
  description = "(Optional) One or more Amazon VPC security groups associated with this replication group. Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud"
  type        = "list"
  default     = []
}

variable "snapshot_arns" {
  description = "(Optional) A single-element string list containing an Amazon Resource Name (ARN) of a Redis RDB snapshot file stored in Amazon S3."
  type        = "list"
  default     = []
}

variable "snapshot_name" {
  description = "(Optional) The name of a snapshot from which to restore data into the new node group."
  type        = "string"
  default     = ""
}

variable "maintenance_window" {
  description = "(Optional) Specifies the weekly time range for when maintenance on the cache cluster is performed. The format is ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC)."
  type        = "string"
  default     = ""
}

variable "notification_topic_arn" {
  description = "(Optional) An Amazon Resource Name (ARN) of an SNS topic to send ElastiCache notifications to."
  type        = "string"
  default     = ""
}

variable "snapshot_window" {
  description = "(Optional) The daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster."
  type        = "string"
  default     = ""
}

variable "snapshot_retention_limit" {
  description = "(Optional) The number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them."
  type        = "string"
  default     = 0
}

variable "apply_immediately" {
  description = "(Optional) Specifies whether any modifications are applied immediately, or during the next maintenance window."
  type        = "string"
  default     = false
}

variable "auth_token" {
  description = "(Optional) The password used to access a password protected server"
  type        = "string"
  default     = ""
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource"
  type        = "map"
  default     = {}
}
