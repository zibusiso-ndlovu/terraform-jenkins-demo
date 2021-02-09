variable "project" {
  default = "tjohnson"
}

variable "region" {
  default = "us-east1-b"
}

variable "cluster_name" {
  default = "terraform-demo-masterpiece"
}

variable "cluster_zone" {
  default = "us-east1-b"
}

variable "cluster_k8s_version" {
  default = "1.13.7-gke.8"
}

variable "initial_node_count" {
  default = 1
}

variable "autoscaling_min_node_count" {
  default = 1
}

variable "autoscaling_max_node_count" {
  default = 5
}

variable "disk_size_gb" {
  default = 100
}

variable "disk_type" {
  default = "pd-standard"
}

variable "machine_type" {
  default = "n1-standard-2"
}

