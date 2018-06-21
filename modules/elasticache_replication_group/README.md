# aws_elasticache_replication_group

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| apply_immediately | (Optional) Specifies whether any modifications are applied immediately, or during the next maintenance window. | string | `false` | no |
| at_rest_encryption_enabled | (Optional) Whether to enable encryption at rest. | string | `false` | no |
| auth_token | (Optional) The password used to access a password protected server | string | `` | no |
| auto_minor_version_upgrade | (Optional) Specifies whether a minor engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window. | string | `true` | no |
| automatic_failover_enabled | (Optional) Specifies whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails. | string | `false` | no |
| availability_zones | (Optional) A list of EC2 availability zones in which the replication group's cache clusters will be created. | list | `<list>` | no |
| create | Whether to create this resource or not | string | `true` | no |
| engine | (Required) The name of the cache engine to be used for the clusters in this replication group. | string | - | yes |
| engine_version | (Required) The version number of the cache engine to be used for the cache clusters in this replication group. | string | - | yes |
| identifier | (Required) The identifier of the resource | string | - | yes |
| maintenance_window | (Optional) Specifies the weekly time range for when maintenance on the cache cluster is performed. The format is ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). | string | `` | no |
| node_type | (Required) The compute and memory capacity of the nodes in the node group. | string | - | yes |
| notification_topic_arn | (Optional) An Amazon Resource Name (ARN) of an SNS topic to send ElastiCache notifications to. | string | `` | no |
| number_cache_clusters | (Required) The number of cache clusters (primary and replicas) this replication group will have | string | - | yes |
| parameter_group_name | (Optional) The name of the parameter group to associate with this replication group. If this argument is omitted, the default cache parameter group for the specified engine is used | string | `` | no |
| port | (Required) The port number on which each of the cache nodes will accept connections. | string | - | yes |
| replication_group_id | (Required) Group identifier. ElastiCache converts this name to lowercase | string | - | yes |
| security_group_ids | (Optional) One or more Amazon VPC security groups associated with this replication group. Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud | list | `<list>` | no |
| snapshot_arns | (Optional) A single-element string list containing an Amazon Resource Name (ARN) of a Redis RDB snapshot file stored in Amazon S3. | list | `<list>` | no |
| snapshot_name | (Optional) The name of a snapshot from which to restore data into the new node group. | string | `` | no |
| snapshot_retention_limit | (Optional) The number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. | string | `0` | no |
| snapshot_window | (Optional) The daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. | string | `` | no |
| subnet_group_name | (Optional) The name of the cache subnet group to be used for the replication group | string | `` | no |
| tags | (Optional) A mapping of tags to assign to the resource | map | `<map>` | no |
| transit_encryption_enabled | (Optional) Whether to enable encryption in transit. | string | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| this_elasticache_replication_group_id | The ID of the ElastiCache Replication Group |
| this_elasticache_replication_group_primary_endpoint_address | (Redis only) The address of the endpoint for the primary node in the replication group, if the cluster mode is disabled |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
