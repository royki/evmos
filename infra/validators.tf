locals {
  node_instance_type = "c5.4xlarge"
  ami_image_id       = "ami-0e85f1d8a5c7db193"
  root_volume_size   = 30
  volume_type        = "gp3"
  iops               = 6000
  throughput         = 250
  monitoring         = true
  ebs_optimized      = true
  ebs_volume_size    = sum([local.root_volume_size, 470])

  validator_nodes = {
    validator-node-1a = {
      subnet_id         = module.vpc.public_subnets[0]
      availability_zone = "${local.region}a"
    }
    validator-node-1b = {
      subnet_id         = module.vpc.public_subnets[1]
      availability_zone = "${local.region}b"
    }
    validator-node-1c = {
      subnet_id         = module.vpc.public_subnets[2]
      availability_zone = "${local.region}c"
    }
  }
}

module "validator_node" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.5.0"

  name                   = each.key
  ami                    = local.ami_image_id
  instance_type          = local.node_instance_type
  key_name               = aws_key_pair.testnet.key_name
  monitoring             = local.monitoring
  vpc_security_group_ids = [module.sg_node.security_group_id, module.sg_node_ssh.security_group_id]
  subnet_id              = each.value.subnet_id

  root_block_device = [
    {
      volume_size = local.root_volume_size
      volume_type = local.volume_type
    }
  ]

  for_each = local.validator_nodes
  tags     = local.tags
}

resource "aws_volume_attachment" "validator_node_ebs_attach" {

  device_name = "/dev/sdf"
  volume_id   = aws_ebs_volume.validator_node_ebs[each.key].id
  instance_id = module.validator_node[each.key].id

  for_each = local.validator_nodes
}

resource "aws_ebs_volume" "validator_node_ebs" {
  availability_zone = each.value.availability_zone
  size              = local.ebs_volume_size
  type              = local.volume_type
  iops              = local.iops
  throughput        = local.throughput

  for_each = local.validator_nodes
  tags     = merge(local.tags, { Name = each.key })
}

resource "aws_eip" "eip_validator_node" {
  domain = "vpc"
  tags   = local.tags

  for_each = local.validator_nodes
}

resource "aws_eip_association" "eip_association_validator_node" {
  instance_id   = module.validator_node[each.key].id
  allocation_id = aws_eip.eip_validator_node[each.key].id

  for_each = local.validator_nodes
}
