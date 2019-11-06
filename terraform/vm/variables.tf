variable "project_id" {
   description = " THis is my Project_id"
   default = "lexical-theory-250906"
}
variable "region" {
   description = "Give any one of these regions"
   #default = "us-central1","us-east1"
}
variable "zone"{ 
   description = "Selected the specified ZOnes "
  #default = " us-central1-a","us-east1-b"	
}
variable "image"{
   default = "ubuntu-os-cloud/ubuntu-1604-lts"

}

variable "machine"{
   default = "n1-standard-1"
}

