/*
data "http" "myipaddr" {
  url = "http://ipv4.icanhazip.com"
}

locals {
  host_access_ip = ["${chomp(data.http.myipaddr.body)}/32"]
}

## curl http://ipv4.icanhazip.com
*/

variable "host_access_ip" {
  description = "your IP address to allow ssh to work"
  default     = ["89.39.136.18/32"]
}


variable "namespace" {
  description = "Name of demostack deployment"
  default     = "dlectronique"
}

variable "primary_namespace" {
  description = "Name of primary demostack deployment"
  default = "dlectronique-1"
}

variable "secondary_namespace" {
  description = "Name of secondary demostack deployment"
  default = "dlectronique-2"
}

variable "tertiary_namespace" {
  description = "Name of tertiary demostack deployment"
  default = "dlectronique-3"
}

variable "primary_region" {
  description = "The region to create resources."
  default     = "eu-west-2"
}

variable "secondary_region" {
  description = "The region to create resources."
  default     = "eu-west-2"
}

variable "tertiary_region" {
  description = "The region to create resources."
  default     = "ap-northeast-1"
}


variable "servers" {
  description = "The number of data servers (consul, nomad, etc)."
  default     = "3"
}

variable "workers" {
  description = "The number of nomad worker vms to create."
  default     = "3"
}

variable "consul_url" {
  description = "The url to download Consul."
  default     = "https://releases.hashicorp.com/consul/1.8.3/consul_1.8.3_linux_amd64.zip"
}

variable "consul_ent_url" {
  description = "The url to download Consul."
  default     = "https://releases.hashicorp.com/consul/1.8.3+ent/consul_1.8.3+ent_linux_amd64.zip"
}

variable "fabio_url" {
  description = "The url download fabio."
  default     = "https://github.com/fabiolb/fabio/releases/download/v1.5.7/fabio-1.5.7-go1.9.2-linux_amd64"
}

variable "nomad_url" {
  description = "The url to download nomad."
  default     = "https://releases.hashicorp.com/nomad/0.12.3/nomad_0.12.3_linux_amd64.zip"
}

variable "nomad_ent_url" {
  description = "The url to download nomad."
  default     = "https://releases.hashicorp.com/nomad/0.12.3+ent/nomad_0.12.3+ent_linux_amd64.zip"
}

variable "cni_plugin_url" {
  description = "The url to download teh CNI plugin for nomad."
  default     = "https://github.com/containernetworking/plugins/releases/download/v0.8.6/cni-plugins-linux-amd64-v0.8.6.tgz"
}

variable "vault_url" {
  description = "The url to download vault."
  default     = "https://releases.hashicorp.com/vault/1.5.2/vault_1.5.2_linux_amd64.zip"
}

variable "vault_ent_url" {
  description = "The url to download vault."
  default     = "https://releases.hashicorp.com/vault/1.5.2+ent/vault_1.5.2+ent_linux_amd64.zip"
}

variable "owner" {
  description = "IAM user responsible for lifecycle of cloud resources used for training"
  default     = "dlectronique"
}

variable "created-by" {
  description = "Tag used to identify resources created programmatically by Terraform"
  default     = "Terraform"
}

variable "sleep-at-night" {
  description = "Tag used by reaper to identify resources that can be shutdown at night"
  default     = true
}

variable "TTL" {
  description = "Hours after which resource expires, used by reaper. Do not use any unit. -1 is infinite."
  default     = "240"
}

variable "vpc_cidr_block" {
  description = "The top-level CIDR block for the VPC."
  default     = "10.1.0.0/16"
}

variable "cidr_blocks" {
  description = "The CIDR blocks to create the workstations in."
  default     = ["10.1.1.0/24", "10.1.2.0/24"]
}

variable "zone_id" {
  description = "The CIDR blocks to create the workstations in."
  default     = "Z0559636W3MCJPU0W5U4"
}

variable "public_key" {
  description = "The contents of the SSH public key to use for connecting to the cluster."
}

variable "enterprise" {
  description = "do you want to use the enterprise version of the binaries"
  default     = false
}

variable "vaultlicense" {
  description = "Enterprise License for Vault"
  default     = ""
}

variable "consullicense" {
  description = "Enterprise License for Consul"
  default     = ""
}

variable "nomadlicense" {
  description = "Enterprise License for Nomad"
  default     = ""
}

variable "instance_type_server" {
  description = "The type(size) of data servers (consul, nomad, etc)."
  default     = "r4.large"
}

variable "instance_type_worker" {
  description = "The type(size) of data servers (consul, nomad, etc)."
  default     = "t2.medium"
}

variable "ca_key_algorithm" {
  default = ""
}

variable "ca_private_key_pem" {
  default = ""
}

variable "ca_cert_pem" {
  default = ""
}

variable "consul_gossip_key" {
  default = "Bla"
}

variable "consul_master_token" {
  default = "Random text here"
}

variable "consul_join_tag_value" {
  default = "dlectronique"
}

variable "nomad_gossip_key" {
  default = "Bla"
}

variable "run_nomad_jobs" {
  default = "0"
}


variable "primary_datacenter" {
  description = "the primary datacenter for mesh gateways"
  default     = ""
}