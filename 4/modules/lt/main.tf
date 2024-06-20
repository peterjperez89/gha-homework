//aws launch template resource: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template

resource "aws_launch_template" "lt20-4" {
  name     = var.lt_name
  image_id = var.ami_id

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = var.lt_name
  }
} 