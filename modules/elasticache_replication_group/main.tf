locals {
  is_auth_token                 = "${var.auth_token != "" ? true : false}"
}

resource "aws_elasticache_replication_group" "this" {
  count                         = "${var.create && !local.is_auth_token ? 1 : 0}"
  number_cache_clusters         = "${var.number_cache_clusters}"

  replication_group_id          = "${var.replication_group_id}"
  replication_group_description = "Elasticache replication group id for ${var.identifier}"
  node_type                     = "${var.node_type}"

  automatic_failover_enabled    = "${var.automatic_failover_enabled}"
  auto_minor_version_upgrade    = "${var.auto_minor_version_upgrade}"
  at_rest_encryption_enabled    = "${var.at_rest_encryption_enabled}"
  transit_encryption_enabled    = "${var.transit_encryption_enabled}"

  availability_zones            = ["${var.availability_zones}"]

  engine                        = "${var.engine}"
  engine_version                = "${var.engine_version}"
  port                          = "${var.port}"

  parameter_group_name          = "${var.parameter_group_name}"
  subnet_group_name             = "${var.subnet_group_name}"
  security_group_ids            = ["${var.security_group_ids}"]
  apply_immediately             = "${var.apply_immediately}"

  maintenance_window            = "${var.maintenance_window}"

  notification_topic_arn        = "${var.notification_topic_arn}"

  snapshot_arns                 = "${var.snapshot_arns}"
  snapshot_name                 = "${var.snapshot_name}"
  snapshot_window               = "${var.snapshot_window}"
  snapshot_retention_limit      = "${var.snapshot_retention_limit}"

  tags                          = "${merge(var.tags, map("Name", format("%s", var.identifier)))}"
}

resource "aws_db_instance" "this_auth_token" {
  count                         = "${var.create && local.is_auth_token ? 1 : 0}"
  number_cache_clusters         = "${var.number_cache_clusters}"

  replication_group_id          = "${var.replication_group_id}"
  replication_group_description = "Elasticache replication group id for ${var.identifier}"
  node_type                     = "${var.node_type}"

  automatic_failover_enabled    = "${var.automatic_failover_enabled}"
  auto_minor_version_upgrade    = "${var.auto_minor_version_upgrade}"
  at_rest_encryption_enabled    = "${var.at_rest_encryption_enabled}"
  transit_encryption_enabled    = true
  auth_token                    = "${var.auth_token}"

  availability_zones            = ["${var.availability_zones}"]

  engine                        = "${var.engine}"
  engine_version                = "${var.engine_version}"
  port                          = "${var.port}"

  parameter_group_name          = "${var.parameter_group_name}"
  subnet_group_name             = "${var.subnet_group_name}"
  security_group_ids            = ["${var.security_group_ids}"]
  apply_immediately             = "${var.apply_immediately}"

  maintenance_window            = "${var.maintenance_window}"

  notification_topic_arn        = "${var.notification_topic_arn}"

  snapshot_arns                 = "${var.snapshot_arns}"
  snapshot_name                 = "${var.snapshot_name}"
  snapshot_window               = "${var.snapshot_window}"
  snapshot_retention_limit      = "${var.snapshot_retention_limit}"

  tags                          = "${merge(var.tags, map("Name", format("%s", var.identifier)))}"
}
