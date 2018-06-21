locals {
  elasticache_subnet_group_name             = "${coalesce(var.subnet_group_name, module.elasticache_subnet_group.this_elasticache_subnet_group_name)}"
  enable_create_elasticache_subnet_group    = "${var.subnet_group_name == "" ? true : false}"

  elasticache_parameter_group_name          = "${coalesce(var.parameter_group_name, module.elasticache_parameter_group.this_elasticache_parameter_group_id)}"
  enable_create_elasticache_parameter_group = "${var.parameter_group_name == "" ? true : false}"
}

module "elasticache_subnet_group" {
  source                                    = "./modules/elasticache_subnet_group"

  create                                    = "${local.enable_create_elasticache_subnet_group}"
  identifier                                = "${var.identifier}"
  name                                      = "${var.identifier}"
  subnet_ids                                = ["${var.subnet_ids}"]
}

module "elasticache_parameter_group" {
  source                                    = "./modules/elasticache_parameter_group"

  create                                    = "${local.enable_create_elasticache_parameter_group}"
  identifier                                = "${var.identifier}"
  name                                      = "${var.identifier}"
  family                                    = "${var.family}"

  parameters                                = ["${var.parameters}"]
}

module "elasticache_replication_group" {
  source                                    = "./modules/elasticache_replication_group"

  create                                    = "${var.create_db_instance}"
  number_cache_clusters                     = "${var.number_cache_clusters}"
  identifier                                = "${var.identifier}"

  replication_group_id                      = "${var.identifier}"
  node_type                                 = "${var.node_type}"

  automatic_failover_enabled                = "${var.automatic_failover_enabled}"
  auto_minor_version_upgrade                = "${var.auto_minor_version_upgrade}"
  at_rest_encryption_enabled                = "${var.at_rest_encryption_enabled}"
  transit_encryption_enabled                = "${var.transit_encryption_enabled}"
  auth_token                                = "${var.auth_token}"

  availability_zones                        = ["${var.availability_zones}"]

  engine                                    = "${var.engine}"
  engine_version                            = "${var.engine_version}"
  port                                      = "${var.port}"

  parameter_group_name                      = "${local.elasticache_parameter_group_name}"
  subnet_group_name                         = "${local.elasticache_subnet_group_name}"
  security_group_ids                        = ["${var.security_group_ids}"]
  apply_immediately                         = "${var.apply_immediately}"

  maintenance_window                        = "${var.maintenance_window}"

  notification_topic_arn                    = "${var.notification_topic_arn}"

  snapshot_arns                             = "${var.snapshot_arns}"
  snapshot_name                             = "${var.snapshot_name}"
  snapshot_window                           = "${var.snapshot_window}"
  snapshot_retention_limit                  = "${var.snapshot_retention_limit}"

  tags                                      = "${var.tags}"
}
