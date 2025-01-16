variable "ami_id" {
  type = string
  description = <<-EOT
    ubuntu 20.04 : ami-09eb4311cbaecf89d
    ubuntu 22.04 : ami-05d2438ca66594916
    RHEL_HA-8.4.0_HVM-20230419-x86_64-41-Hourly2-GP2 : ami-06fc9949c7e49967a
  EOT
}

variable "os_user" {
  type = string
  description = <<-EOT
    ubuntu 20.04 : ubuntu
    ubuntu 22.04 : ubuntu
    RHEL_HA-8.4.0_HVM-20230419-x86_64-41-Hourly2-GP2 : ec2-user
  EOT
}

variable "instance_type" {
  type = string
}

variable "volume_size" {
  type = string
}

//variables sets
variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

variable "region" {
  type = string
}
