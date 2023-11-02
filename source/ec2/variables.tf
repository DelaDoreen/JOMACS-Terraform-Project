variable "instance_type" {
  default     = "t2.micro"
  description = "instance type"
  type        = string
}

variable "instance_sg" {}

variable "instance_subnet" {}

variable "instance_name" {
  default = "project_instance"
  type    = string
}

