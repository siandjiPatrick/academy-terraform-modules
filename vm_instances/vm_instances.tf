resource "google_compute_instance" "vm-instance1" {

  name         = var.instance_name
  machine_type = "n1-standard-1"
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