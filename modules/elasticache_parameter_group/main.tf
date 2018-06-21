resource "aws_elasticache_parameter_group" "this" {
  count       = "${var.create ? 1 : 0}"

  name        = "${var.name}"
  description = "Elasticache parameter group for ${var.identifier}"
  family      = "${var.family}"

  parameter   = ["${var.parameters}"]

  lifecycle {
    create_before_destroy = true
  }
}
