resource "aws_autoscaling_group" "asg20-4" {
  launch_template {
    id      = var.ltid
    version = "$Latest"
  }

  vpc_zone_identifier = var.subnet_ids
  min_size = var.min_size
  max_size = var.max_size
}