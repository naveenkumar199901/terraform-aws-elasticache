resource "aws_elasticache_subnet_group" "this" {
  count       = "${var.create ? 1 : 0}"

  name        = "${var.name}"
  description = "Elasticache subnet group for ${var.identifier}"
  subnet_ids  = ["${var.subnet_ids}"]
}
