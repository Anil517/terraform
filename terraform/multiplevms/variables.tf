ariable "project_id" {
   description = " THis is my Project_id"
   default = "lexical-theory-25090"
}
variable "region" {
   description = "Give any one of these regions"
   default = "us-central1"
}
variable "zone"{
   description = "Selected the specified ZOnes "
   default = "us-central1-a"
}
variable "image"{
   default = "ubuntu-os-cloud/ubuntu-1604-lts"

}

variable "machine"{
   default = "n1-standard-1"
}

