resource "google_compute_instance" "finalvm" {
  min_cpu_platform = var.cpu_platform
  deletion_protection = var.deletion_protection
  machine_type = var.machine_type
  name = var.instance_name
  zone = var.instance_zone
  tags = var.tags
  boot_disk {
    auto_delete = var.auto_delete
    mode = var.mode
    initialize_params {
      image = var.image
      size = var.size
      type = var.type
    }
  }
  service_account {
    email = var.email
    scopes = var.service_account_scopes
  }
 # metadata_startup_script = file(var.startup_script)

  network_interface {
    network = "${google_compute_network.v_network.name}"
    subnetwork = "${google_compute_subnetwork.sub_network.name}"
   # network_ip = var.network_ip
    access_config {
    }
    #alias_ip_range {
     #   subnetwork_range_name = var.subnetwork_range_name
     #   ip_cidr_range  = var.ip_cidr_range
    #}

    
  }
}


