provider "google" {
credentials = "${file("terraformnew.json")}"
project     = "${var.project_id}"
  region      = "{var.region}"
}
