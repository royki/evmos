output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}

output "database_subnets" {
  description = "List of IDs of database subnets"
  value       = module.vpc.database_subnets
}

output "database_subnet_group" {
  description = "ID of database subnet group"
  value       = module.vpc.database_subnet_group
}

output "database_subnet_group_name" {
  description = "Name of database subnet group"
  value       = module.vpc.database_subnet_group_name
}

output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}

output "testnet_ssh_pub_key" {
  description = "Testnet ssh key"
  value       = local.testnet_ssh_pub_key
}

output "validator_node_1a_public_ip" {
  description = "Validator node 1a public ip"
  value       = module.validator_node["validator-node-1a"].public_ip
}

output "validator_node_1b_public_ip" {
  description = "Validator node 1b public ip"
  value       = module.validator_node["validator-node-1b"].public_ip
}

output "validator_node_1c_public_ip" {
  description = "Validator node 1c public ip"
  value       = module.validator_node["validator-node-1c"].public_ip
}

output "whitelist_ips" {
  description = "Whitelist ip"
  value       = local.whitelist_ips
}
