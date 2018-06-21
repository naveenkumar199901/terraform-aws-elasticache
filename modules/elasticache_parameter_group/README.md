# aws_elasticache_parameter_group

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create | Whether to create this resource or not | string | `true` | no |
| family | (Optional) The family of the ElastiCache parameter group | string | `` | no |
| identifier | (Required) The identifier of the resource | string | - | yes |
| name | (Required) The name of the ElastiCache parameter group | string | - | yes |
| parameters | (Optional) A list of ElastiCache parameters to apply | string | `<list>` | no |

## Outputs

| Name | Description |
|------|-------------|
| this_elasticache_parameter_group_id | The ElastiCache parameter group name |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
