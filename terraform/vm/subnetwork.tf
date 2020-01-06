resource "google_compute_subnetwork" "sub_network" {
       ip_cidr_range      = var.ip_cidr_range
       name               = var.subnet_name
       network            = google_compute_network.v_network.self_link
       description        = var.description_subnet
       project            = var.project_id
       region             = var.region
       secondary_ip_range {
           range_name    = var.range_name
           ip_cidr_range = var.ip_cidr_range_sec_ip
         }
       private_ip_google_access = var.private_ip_google_access
   }
