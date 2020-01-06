resource "google_compute_firewall" "firewallnew" {
  name = var.fw-name
  network = "${google_compute_network.v_network.name}"
  description = var.description
  direction = var.direction
  disabled = var.disabled
  priority = var.priority
  enable_logging = var.enable_logging
  source_ranges = var.source_ranges
  allow {
    protocol = var.allow_protocol
  }
  allow {
    protocol = var.allow_protocol1
    ports = var.allow_ports1
  }


}
