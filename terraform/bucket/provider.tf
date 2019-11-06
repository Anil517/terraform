provider "google" {
credentials = "${file("terraform.json")}"
project     = "lexical-theory-250906"
  region      = "us-central1"
}
