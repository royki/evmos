# [Validator Infra](https://github.com/royki/evmos/blob/testnet/infra/img/evmos-validator.png)

## Tools

- CI/CD
    - Git
    - Github Actions
- Infra Provision
    - Terraform
    - Terrafrom Cloud
- Infra Configuration
    - Ansible
- Logging/Monitoring/Alerts
    - Prometheus
    - Grafana
- Docker Registry
    - Docker Hub

## Infra Provision

- [x] Terraform is used to provision 3 ec2 instances for validator nodes
- [ ] Terraform Cloud to trigger infra provising
- [ ] Ansible to trigger infra configuration
    - [ ] Volume setup
    - [ ] Docker installation
    - [ ] Docker compose file
    - [ ] Necessary configurations for evmos validator node i.e. genesis file, keys, app.toml for each validator node
    - [ ] Monitoring instace setup

### Execute from local to provision infra

- Creata a file named `variables.tfvars`
- Set following values

```txt
AWS_REGION                 = ""
AWS_ACCESS_KEY_ID          = ""
AWS_SECRET_ACCESS_KEY      = ""
```

- Check `local.tf` file to set other values file `whitelist_ips`, `testnet_ssh_pub_key`
- Execute
    - `terraform apply -var-file=variables.tfvars`
