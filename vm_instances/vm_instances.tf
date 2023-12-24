resource "google_compute_instance" "vm-instance1" {

  name         = var.instance_name
  machine_type = var.machine_type
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "default"
    access_config {

    }
  }
  tags = ["terraform", "vm-instance"]
}
