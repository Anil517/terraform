variable "credentials" {
   description = "Contents of GCP service account in  .json format for creating resources"
   default ="tf.json"
}
variable "project_id" {
   description = "Project_id for the project"
   default="learned-vault-251805"
}
variable "region" {
   description = "Region for creation of resource"
}

############################################
###########Instance Variables###############
############################################
variable "can_ip_forward" {
   description = "Must be in (true/fasle)"
   default="false"
}

variable "instance_name" {
   description = "Name of the instance"
}
variable "instance_zone" {
   description = "give the zone for the instance"
}
variable "machine_type" {
   description = "specify the machine type for the instance creating"
}
variable "tags" {
   type = "list"
   description = "Give the tags which have to added to VM"
}
variable "cpu_platform" {
   description = "Name of the cpu_platform"
   default ="Intel Skylake"
}
variable "interface" {
  description = "interface of scratch disk"
  default="SCSI"
}
variable "image" {
  description = "specify the image name for the boot disk"
  default= "ubuntu-os-cloud/ubuntu-1604-lts"
}
variable "size" {
  description = "Give the size for the boot_disk in GIGABYTES "
}
variable "type" {
  description = "GCE boot_disk type it will set to pd-standard or pd-ssd"
}
variable "auto_delete" {
  description =  "Disk will be auto-deleted along with the instance.Default is true"
  default="true"
}
#variable "device_name" {
# description =  "Used to reference the device_name for  mounting or resizing .Default is instanceName that we have to be mentioned"
#}
variable "mode" {
  description = " Mode of the disk either will be READ_WRITE or READ_ONLY.Default is READ_WRITE"
  default="READ_WRITE"
}
variable "email" {
  description = " Give the email for the service account"
}
variable "service_account_scopes" {
  type = list
  description = "whatever the scopes/api's u want to add the service account add here"
}
#variable "network" {
 # description = "Specify the network in network interface"
 # default = "${google_compute_network.v_network.name}"
#}
#variable "subnetwork" {
 # description = "give the subnetwork for Interface"
 # default ="${google_compute_subnetwork.sub_network.name}"
#}

#variable "startup_script" {
##   description = "Adds the whatever script will create along with instance"
#}
variable "labels" {
  type = map
  description = "Adds the environment,services tags to the instance"
}
#variable "metadata_label" {
#}
variable "deletion_protection"{
     description = "It has delete protection for the instance"

}
variable "hostname" {
   description = " give the hostname for the instance"
   default="www.wordpress.org"
}
##########################
#####NetworkVariables#####
##########################

variable "auto_create_subnetworks" {
   description ="Give True/false for automatically creating subnetworks"
}
variable "delete_default_routes_on_create" {
    description = "default routes (0.0.0.0/0) will be deleted immediately after network creating"
}
variable "network_name" {
}
variable "routing_mode" {
    description = "we can give REGIONAL or GLOBAL"
}
##################################
####SUBNETWORK VARS###############
##################################
#variable "enable_flow_logs" {
 #   description = "It should be on /off flowlogs in subnet"
#}

variable "subnet_name" {
  #type = list
   description = "name of the subnet"
}
#variable "network_sub" {
#  description = "prvide network self link "
#}
variable "description_subnet" {
}
variable "range_name" {
   description = "name of the secondary range"
}
variable "private_ip_google_access" {

   description = " privte google access enable /disable for the subnet,values are on/off"
}
#variable "aggregation_interval" {
 # description = "If enable flow log is on it will give.Interval for the logs secs/connection$
#}
#variable "flow_sampling" {
#   description = "Sampling rate for the vpc logs.Default is 0.5"
#}
#variable "metadata" {
 #  description = "Include all metadata or not in flowlogs of the subnet"
#}
#variable "suffix" {
#}/*
variable "ip_cidr_range" {
  description = "The IP range of the subnetwork"
}
#######################################
#######FIREWALL VARIABLES##############
#######################################
variable "fw-name" {
  description = "Name of the firewall"
}
#variable "network-fw" {
 # description = "Network of the firewall"
 # default = "${google_compute_network.v_network.name}"
#}
variable "description" {
  default = "Give some info for the firewall description"
}
variable "direction" {
  description = "give the direction of traffic to firewall.Default is Ingress"
  default = "INGRESS"
}
variable "disabled" {
  description = "If u want to disabled the firewall (true/false)"
  default = "false"
}
variable "priority" {
  description = "Specify the priority for the firewall"
}
variable "enable_logging" {
  description = "Specify the true/false to enable the logging to stackdriver"
  default = "false"
}
variable "source_ranges" {
   type = list
   description = "Give the ranges for source IP"
}
variable "allow_protocol" {
   description = "specify the protocol name"
}
variable "allow_protocol1" {
  description = "specify the protocol name for one more"
}
variable "allow_ports1" {
  description = "Specify the ports for protocol1"
  type = list
}
