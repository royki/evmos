# Validator Infra[]()

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
