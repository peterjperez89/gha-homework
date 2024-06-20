variable "vpc_cidr" {
  description = "cidr block for vpc"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  type    = list(string)
  description = "CIDR blocks for the subnets"
}