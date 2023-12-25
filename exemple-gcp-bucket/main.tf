

module "gcp_bucket_and_service_account" {
  source = "../modules/bucket_with_serv_account"
  bucket_name = "my-bucket-from-tf-module"
  region = "europe-west1"
  service_name = "my-srv-acc-from-tf-module"

}

output "srv_email" {
  value = module.gcp_bucket_and_service_account.service_acc_email
}