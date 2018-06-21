output "this_elasticache_subnet_group_name" {
  description = "The name for the cache subnet group"
  value       = "${element(concat(aws_elasticache_subnet_group.this.*.name, list("")), 0)}"
}
