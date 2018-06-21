output "this_elasticache_replication_group_id" {
  description = "The ID of the ElastiCache Replication Group"
  value       = "${module.elasticache_replication_group.this_elasticache_replication_group_id}"
}

output "this_elasticache_replication_group_primary_endpoint_address" {
  description = "(Redis only) The address of the endpoint for the primary node in the replication group, if the cluster mode is disabled"
  value       = "${module.elasticache_replication_group.this_elasticache_replication_group_primary_endpoint_address}"
}

output "this_elasticache_parameter_group_id" {
  description = "The ElastiCache parameter group name"
  value       = "${module.elasticache_parameter_group.this_elasticache_parameter_group_id}"
}

output "this_elasticache_subnet_group_name" {
  description = "The name for the cache subnet group"
  value       = "${module.elasticache_subnet_group.this_elasticache_subnet_group_name}"
}
