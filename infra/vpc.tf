module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.2.0"

  name = join("-", [local.env, local.name])
  cidr = "10.0.0.0/16"

  azs              = ["${local.region}a", "${local.region}b", "${local.region}c"]
  public_subnets   = concat(local.public_subnets)
  private_subnets  = concat(local.private_subnets)
  database_subnets = concat(local.database_subnets)

  enable_dns_hostnames = true
  enable_nat_gateway   = true
  single_nat_gateway   = true

  create_database_subnet_route_table = true

  enable_flow_log                      = true
  create_flow_log_cloudwatch_log_group = true
  create_flow_log_cloudwatch_iam_role  = true
  flow_log_max_aggregation_interval    = 60

  tags = local.tags
}
