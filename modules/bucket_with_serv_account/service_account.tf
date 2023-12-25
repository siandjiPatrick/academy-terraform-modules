resource "google_service_account" "service_account" {
  account_id   = var.service_name
  display_name = "my service account from terraform"
}
