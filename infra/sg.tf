module "sg_node" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"

  name        = "validator-sg"
  description = "Security group of Validator node"
  vpc_id      = module.vpc.vpc_id

  tags = merge(local.tags, { Name = "validator-sg" })

  egress_rules       = ["all-all"]
  egress_cidr_blocks = ["0.0.0.0/0"]

  ingress_with_cidr_blocks = [
    {
      from_port   = 26656
      to_port     = 26656
      protocol    = "tcp"
      description = "tendermint p2p discoverry tcp ports"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 26656
      to_port     = 26656
      protocol    = "udp"
      description = "tendermint p2p discoverry udp ports"
      cidr_blocks = "0.0.0.0/0"
    }
  ]
}

module "sg_node_ssh" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"

  name        = "validator-ssh-access-sg"
  description = "Allows inbound SSH traffic from trusted IP addresses"
  vpc_id      = module.vpc.vpc_id

  tags = merge(local.tags, { Name = "validator-ssh-access-sg" })

  ingress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "allow ssh"
      cidr_blocks = join(",", concat(
      local.whitelist_ips))
    },
  ]
}
