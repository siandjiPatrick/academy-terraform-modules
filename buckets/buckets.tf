resource "google_storage_bucket" "bucket_from_terraform" {
  name     = var.bucket_name
  location = var.region
}

resource "google_service_account" "service_account" {
  account_id   = var.service_name
  display_name = var.display_name
}
