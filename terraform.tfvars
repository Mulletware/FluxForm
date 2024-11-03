# Path to the GCP JSON service account key
## Set your GOOGLE_APPLICATION_CREDENTIALS in your .rc file 

# Project-specific configurations
gcp_project_id   = "flowing-digit-440216-c6"
gcp_region       = "us-east1"
gcp_region_zone  = "us-east1-b"

# GKE Cluster configuration
cluster_name      = "go-makey-money-cluster"
node_machine_type = "e2-micro"  # Ensures eligibility for the free tier on GCP
node_disk_size    = 20          # Disk size for each node in GB
