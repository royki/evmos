# Ansible Roles

- `docker` - to install docker
- `evmos-node` to deploy evmos node
    - Following this https://github.com/evmos/testing

## Run Ansible from local

- Adjust hosts.ini file (check example.hosts.ini)
- Execute - `ansible-playbook -i hosts.ini playbook.yml -v -b`
