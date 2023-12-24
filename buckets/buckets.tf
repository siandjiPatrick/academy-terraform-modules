resource "google_storage_bucket" "bucket_from_terraform" {
  name     = var.bucket_name
  location = var.region
}

