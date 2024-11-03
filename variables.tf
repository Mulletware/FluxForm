variable "gcp_svc_key" {
  description = "Path to the GCP JSON service account key"
  type        = string
}

variable "gcp_project_id" {
  description = "GCP project ID"
  type        = string
  default     = "flowing-digit-440216-c6"
}

variable "gcp_region" {
  description = "GCP region"
  type        = string
  default     = "us-east1"
}

variable "gcp_region_zone" {
  description = "GCP region zone"
  type        = string
  default     = "us-east1-b"
}

variable "cluster_name" {
  description = "Name of the GKE cluster"
  type        = string
  default     = "go-makey-money-cluster"
}

variable "node_machine_type" {
  description = "Machine type for the GKE nodes"
  type        = string
  default     = "e2-micro"
}

variable "node_disk_size" {
  description = "Disk size in GB for GKE nodes"
  type        = number
  default     = 20
}
