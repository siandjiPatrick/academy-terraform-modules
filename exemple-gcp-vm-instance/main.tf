module "gcp_vm_instance" {
  source = "../modules/vm_instances"
  instance_name = "my-vm-instance-from-module"

}