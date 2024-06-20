# Home Operations! Work in progress.

<img src="https://github.com/Robert-litts/home-ops/blob/main/kubernetes.png" width="150" height="150">

Terraform, Kubernetes, Ansible, and more.

- Files within the "k3s_cluster" folder can be run to with Terraform create  3 master & 3 worker nodes using the Proxmox TF API
- Followed [this](https://github.com/techno-tim/k3s-ansible) Ansible script to create a k3s cluster
- Files within the "kubernetes" folder can be run inside a working k3s cluster to setup Traefik reverse proxy, Cert Manager for automatic wildcard TLS certs, and then finally deploy a few test applications
