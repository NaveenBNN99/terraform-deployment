variable "region" {
   type    = string
  default = "us-east-1"
}

/*variable "access_key"{
    type = string
    default = "AKIAQWAG4O2D4KF5SKAR"
}

variable "secret_key" {
    type = string
    default = "mrXZ50gmM5trJHY702vcAYv4vB4VCHLb3mUtbjtK"*/
  
}
variable "vpc_cidr_block" {}
variable "subnet_cidr_block" {}
variable "avail_zone" {}
variable "env_prefix" {}
variable "instance_type" {}
