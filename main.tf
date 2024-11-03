# main.tf

# Specify required providers
terraform {
  required_version = ">= 1.9.0"
  
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~>6.9.0"  # Adjust version as needed
    }
  }
}
