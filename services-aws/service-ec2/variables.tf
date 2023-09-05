variable "region" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "ami_type" {
  type = string
}

variable "monitoring" {
  type = bool
}

variable "subnet_id" {
  type = string
}

variable "ssh_key_name" {
  type = string
}

variable "security_groups_id" {
  type = string
}

variable "bash_script" {
  type = string
}

variable "machines_name" {
  type = string
}

variable "ebs_condition" {
  type = string
}

variable "ebs_size" {
  type = string
}
