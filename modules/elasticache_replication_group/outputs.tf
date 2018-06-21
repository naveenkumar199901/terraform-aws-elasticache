locals {
  this_elasticache_replication_group_id                             = "${element(concat(coalescelist(aws_elasticache_replication_group.this_auth_token.*.id, aws_elasticache_replication_group.this.*.id), list("")), 0)}"
  this_elasticache_replication_group_primary_endpoint_address       = "${element(concat(coalescelist(aws_elasticache_replication_group.this_auth_token.*.primary_endpoint_address, aws_elasticache_replication_group.this.*.primary_endpoint_address), list("")), 0)}"
}

output "this_elasticache_replication_group_id" {
  description = "The ID of the ElastiCache Replication Group"
  value       = "${local.this_elasticache_replication_group_id}"
}

output "this_elasticache_replication_group_primary_endpoint_address" {
  description = "(Redis only) The address of the endpoint for the primary node in the replication group, if the cluster mode is disabled"
  value       = "${local.this_elasticache_replication_group_primary_endpoint_address}"
}
