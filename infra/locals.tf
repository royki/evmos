locals {

  name = "evmos"
  env  = "testnet"

  #
  # Networking configuration
  #
  region = "us-east-1"

  public_subnets = [
    "10.0.0.0/24",
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]

  private_subnets = [
    "10.0.252.0/24",
    "10.0.251.0/24",
    "10.0.250.0/24"
  ]

  database_subnets = [
    "10.0.255.0/24",
    "10.0.254.0/24",
    "10.0.253.0/24",
  ]

  #
  # Tags
  #
  tags = {
    terraform = true
  }

  #
  # Misc
  #

  # Add AWS account ID here if terraform is configured to run in a different account
  aws_account_id = {
    testnet = "AWS_ACCOUNT_ID"
  }

  # Add ssh public key here
  testnet_ssh_pub_key = "UPDATE_ME"

  # Add team IP here to whitelist for SSH access to nodes with comma separated values
  whitelist_ips = ["x.x.x.x/32", "y.y.y.y/32"]
}
