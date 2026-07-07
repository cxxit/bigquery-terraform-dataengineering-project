variable "location" {
    description = "GCP Project Location"
    default = "asia-southeast1"
}

variable "bq_dataset_name" {
    description = "My BigQuery Dataset Name"
    default = "demo_dataset"
}

variable "gcp_bucket_name" {
    description = "My Storage Bucket Name"
    default = "terraform-demo-501718-terra-bucket"
}

variable "gcp_storage_class" {
    description = "Bucket Storage Class"
    default = "STANDARD"
}

