# aws_elasticache_subnet_group

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create | (Optional) Whether to create this resource or not | string | `true` | no |
| identifier | (Required) The identifier of the resource | string | - | yes |
| name | (Required) Name for the cache subnet group. Elasticache converts this name to lowercase. | string | - | yes |
| subnet_ids | (Required) List of VPC Subnet IDs for the cache subnet group | list | `<list>` | no |

## Outputs

| Name | Description |
|------|-------------|
| this_elasticache_subnet_group_name | The name for the cache subnet group |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
