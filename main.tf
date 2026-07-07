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
  project = var.project
  region  = var.region
}

resource "google_storage_bucket" "demo-bucket" {
  name          = var.gcp_bucket_name
  location      = var.location
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

# google_bigquery_dataset resource to create a BigQuery dataset
resource "google_bigquery_dataset" "dataset" {
  dataset_id = var.bq_dataset_name
  location = var.location
}