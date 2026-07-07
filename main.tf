terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.39.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "terraform-demo-501718"
  region  = "asia-southeast1"
}


resource "google_storage_bucket" "demo-bucket" {
  name          = "terraform-demo-501718-terra-bucket"
  location      = "ASIA-SOUTHEAST1"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}