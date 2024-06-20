//aws elastic load balancer https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elb

resource "aws_elb" "elb20-4" {
  name               = var.elb_name
  availability_zones = ["us-west-1a", "us-west-1c"]
  listener {
    instance_port     = 80
    instance_protocol = "HTTP"
    lb_port           = 80
    lb_protocol       = "HTTP"
  }

  health_check {
    target              = "HTTP:80/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }

  tags = {
    Name = var.elb_name
  }

}
