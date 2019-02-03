variable "access_key" {
  default = "AKIAJWO7RVNF2MZ7BYJQ"
}
variable "secret_key" {
  default = "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"
}
variable "bucket"  {
  default = "atul7717"
}
variable "region" {
  default = "ap-south-1"
}

variable "vpc_cidr" {
  description = "vpc_id"
  default =  "10.128.0.0/16"
}

variable "public_subnet_cidr" {
   description = "public_subnet"
   default = "10.128.0.0/24"
}

variable "private_subnet_cidr" {
   description = "private_subnet"
   default = "10.128.1.0/24"
}

/* Ubuntu 14.04 amis by region */

variable "amis" {
  description = "Base AMI to launch the instances with"
  default = {
    ap-south-1 = "ami-531a4c3c"
    ap-south-1 = "ami-531a4c3c"
  }
}
