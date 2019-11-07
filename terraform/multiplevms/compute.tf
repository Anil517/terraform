resource "google_compute_instance" "vm_instance"{
   count = "5"
   name = "tset-${count.index + 1}"
   machine_type= "${var.machine}"
      zone = "${var.zone}"

   boot_disk {
    initialize_params {
      image = "${var.image}"
    }
}

 network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}

