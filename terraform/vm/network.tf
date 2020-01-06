resource "google_compute_network" "v_network" {
      auto_create_subnetworks         = var.auto_create_subnetworks
      delete_default_routes_on_create = var.delete_default_routes_on_create
      description                     = "this is my vpc creating"
      # gateway_ipv4                  =
      # id                            =
      name                            = var.network_name
      project                         = var.project_id
      routing_mode                    = var.routing_mode
      # self_link                     =
}
