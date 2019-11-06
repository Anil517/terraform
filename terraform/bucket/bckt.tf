resource "google_storage_bucket" "bucket-storage" {
  name     = "image-store1"
  location = "asia"
  storage_class = "NEARLINE"
}

