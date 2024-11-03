# cluster.tf

# Define the GKE cluster
resource "google_container_cluster" "primary" {
  name               = var.cluster_name
  location           = var.gcp_region_zone
  network            = google_compute_network.vpc_network.self_link
  subnetwork         = google_compute_subnetwork.subnet.self_link
  initial_node_count = 1

  node_config {
    machine_type = var.node_machine_type
    disk_size_gb = var.node_disk_size
  }

  # Optional: Set release channel for automatic cluster updates
  release_channel {
    channel = "STABLE"
  }

  # Enable logging and monitoring for better observability
  logging_service    = "logging.googleapis.com/kubernetes"
  monitoring_service = "monitoring.googleapis.com/kubernetes"

  # Disable deletion protection to allow for cluster deletion
  deletion_protection = false
}