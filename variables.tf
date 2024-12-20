variable "ami_id" {
  type = string
  # default = "ami-09eb4311cbaecf89d"
  # description = "ubuntu 20.04"
  # default = "ami-05d2438ca66594916"
  # description = "ubuntu 22.04"
  default = "ami-06fc9949c7e49967a"
  description = "RHEL_HA-8.4.0_HVM-20230419-x86_64-41-Hourly2-GP2"
}

variable "instance_type" {
  type = string
}

variable "volume_size" {
  type = string
}


variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

variable "region" {
  type = string
}