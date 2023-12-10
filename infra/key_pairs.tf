resource "aws_key_pair" "testnet" {
  key_name   = "evmos-${local.env}"
  public_key = local.testnet_ssh_pub_key
}
