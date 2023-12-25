module "gcp_vm_instance" {
  source = "../modules/vm_instances"
  instance_name = "vm-instance-from-modules"
  startup_scrip = file("./start.sh")

}