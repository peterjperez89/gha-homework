variable "vpc_cidr" {
  description = "cidr block for vpc"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  description = "cidr blocks for the subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "elb_name" {
  description = "elastic load balancer name"
  type        = string
}

variable "lt_name" {
  description = "launch template name"
  type        = string
}

variable "ami_id" {
  description = "amazon machine image id"
  type        = string
}

variable "asg_name" {
  description = "auto scaling group name"
  type        = string
}

variable "min_size" {
  description = "minimum size of auto scaling group"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "maximum size of auto scaling group"
  type        = number
  default     = 1
}