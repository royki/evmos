## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.8 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.55.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.30.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_sg_node"></a> [sg\_node](#module\_sg\_node) | terraform-aws-modules/security-group/aws | 5.1.0 |
| <a name="module_sg_node_ssh"></a> [sg\_node\_ssh](#module\_sg\_node\_ssh) | terraform-aws-modules/security-group/aws | 5.1.0 |
| <a name="module_validator_node"></a> [validator\_node](#module\_validator\_node) | terraform-aws-modules/ec2-instance/aws | 5.5.0 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | 5.2.0 |

## Resources

| Name | Type |
|------|------|
| [aws_ebs_volume.validator_node_ebs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ebs_volume) | resource |
| [aws_eip.eip_validator_node](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_eip_association.eip_association_validator_node](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip_association) | resource |
| [aws_key_pair.testnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_volume_attachment.validator_node_ebs_attach](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/volume_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_AWS_ACCESS_KEY_ID"></a> [AWS\_ACCESS\_KEY\_ID](#input\_AWS\_ACCESS\_KEY\_ID) | n/a | `any` | n/a | yes |
| <a name="input_AWS_REGION"></a> [AWS\_REGION](#input\_AWS\_REGION) | n/a | `any` | n/a | yes |
| <a name="input_AWS_SECRET_ACCESS_KEY"></a> [AWS\_SECRET\_ACCESS\_KEY](#input\_AWS\_SECRET\_ACCESS\_KEY) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_database_subnet_group"></a> [database\_subnet\_group](#output\_database\_subnet\_group) | ID of database subnet group |
| <a name="output_database_subnet_group_name"></a> [database\_subnet\_group\_name](#output\_database\_subnet\_group\_name) | Name of database subnet group |
| <a name="output_database_subnets"></a> [database\_subnets](#output\_database\_subnets) | List of IDs of database subnets |
| <a name="output_nat_public_ips"></a> [nat\_public\_ips](#output\_nat\_public\_ips) | List of public Elastic IPs created for AWS NAT Gateway |
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | List of IDs of private subnets |
| <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets) | List of IDs of public subnets |
| <a name="output_testnet_ssh_pub_key"></a> [testnet\_ssh\_pub\_key](#output\_testnet\_ssh\_pub\_key) | Testnet ssh key |
| <a name="output_validator_node_1a_public_ip"></a> [validator\_node\_1a\_public\_ip](#output\_validator\_node\_1a\_public\_ip) | Validator node 1a public ip |
| <a name="output_validator_node_1b_public_ip"></a> [validator\_node\_1b\_public\_ip](#output\_validator\_node\_1b\_public\_ip) | Validator node 1b public ip |
| <a name="output_validator_node_1c_public_ip"></a> [validator\_node\_1c\_public\_ip](#output\_validator\_node\_1c\_public\_ip) | Validator node 1c public ip |
| <a name="output_vpc_cidr_block"></a> [vpc\_cidr\_block](#output\_vpc\_cidr\_block) | The CIDR block of the VPC |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
| <a name="output_whitelist_ips"></a> [whitelist\_ips](#output\_whitelist\_ips) | Whitelist ip |
