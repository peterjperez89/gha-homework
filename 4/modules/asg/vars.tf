variable "asg_name" {
  description = "name of asg"
  type        = string
}

variable "ltid" {
  description = "id of launch template"
  type        = string
}

variable "elbid" {
  description = "id of elb"
  type        = string
}

variable "subnet_ids" {
  description = "list of subnet IDs"
  type = list(string)
}

variable "min_size" {
  type    = number
  default = 1
}

variable "max_size" {
  type    = number
  default = 3
}