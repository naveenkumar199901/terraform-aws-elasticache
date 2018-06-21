output "this_elasticache_parameter_group_id" {
  description = "The ElastiCache parameter group name"
  value       = "${element(split(",", join(",", aws_elasticache_parameter_group.this.*.id)), 0)}"
}
