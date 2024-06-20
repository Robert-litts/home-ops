# Home Operations! Work in progress.
Terraform, Kubernetes, Ansible, and more.

- Files within the "terraform" folder can be run to create  3 master & 3 worker nodes in Proxmox using Terraform
- Followed [this](https://github.com/techno-tim/k3s-ansible) Ansible script to create a k3s cluster
- Files within the "kubernetes" folder can be run inside a working k3s cluster to setup Traefik reverse proxy, Cert Manager for automatic wildcard TLS certs, and then finally deploy a few test applications
