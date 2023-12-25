resource "google_compute_network" "auto-vpc_network" {
  name                    = "auto-vpc-network"
  auto_create_subnetworks = true

}

resource "google_compute_firewall" "allow_http_icmp_ssh" {
  name = "allow-http-icmp-ssh"
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }
  allow {
    protocol = "icmp"
  }
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  network       = google_compute_network.auto-vpc_network.id
  source_tags   = ["allow-ssh-http"]
  source_ranges = ["0.0.0.0/0"]

}

resource "google_compute_subnetwork" "network-with-private-secondary-ip-ranges" {
  name          = "test-subnetwork"
  ip_cidr_range = "10.100.0.0/24"
  network       = google_compute_network.auto-vpc_network.id
  private_ip_google_access = true
}

resource "google_compute_address" "test_ip" {
    name          = "test-address"
    address_type  = "EXTERNAL"
    #network       = google_compute_network.auto-vpc_network.self_link
  
}