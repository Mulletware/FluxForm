output "cluster_endpoint" {
  value       = google_container_cluster.primary.endpoint
  description = "The endpoint of the GKE cluster"
}

output "cluster_ca_certificate" {
  value       = google_container_cluster.primary.master_auth[0].cluster_ca_certificate
  description = "Base64 encoded public certificate for the cluster"
}

# Output network names for easy reference
output "network_name" {
  value       = google_compute_network.vpc_network.name
  description = "Name of the VPC network"
}

output "subnet_name" {
  value       = google_compute_subnetwork.subnet.name
  description = "Name of the subnet in the VPC"
}
