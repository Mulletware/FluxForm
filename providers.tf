# Set up GCP provider authentication
# Configure project, region, and credentials
provider "google" {
  credentials = file(var.gcp_svc_key)
  project = var.gcp_project_id      # ID of your GCP project
  region  = var.gcp_region          # Closest region me
  zone    = var.gcp_region_zone     # You can choose any of the available zones in this region
}