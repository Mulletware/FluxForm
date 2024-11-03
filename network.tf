# network.tf

# Define VPC network for the GKE cluster
resource "google_compute_network" "vpc_network" {
  name = "${var.cluster_name}-vpc"
  auto_create_subnetworks = false  # Recommended for control over subnet IP ranges
}

# Define a subnetwork within the VPC
resource "google_compute_subnetwork" "subnet" {
  name          = "${var.cluster_name}-subnet"
  ip_cidr_range = "10.0.0.0/16"
  region        = var.gcp_region
  network       = google_compute_network.vpc_network.self_link
}

# Firewall rule to allow internal communication within the VPC
resource "google_compute_firewall" "internal" {
  name    = "${var.cluster_name}-internal"
  network = google_compute_network.vpc_network.self_link

  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }

  source_ranges = ["10.0.0.0/16"]
  direction     = "INGRESS"
}

# Optional: Firewall rule to allow external access (HTTP/HTTPS) to GKE nodes
resource "google_compute_firewall" "external" {
  name    = "${var.cluster_name}-external"
  network = google_compute_network.vpc_network.self_link

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]  # Allows HTTP and HTTPS; adjust as needed
  }

  source_ranges = ["0.0.0.0/0"]
  direction     = "INGRESS"
}
