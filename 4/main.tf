module "vpc" {
  source       = "./modules/vpc"
  vpc_cidr     = var.vpc_cidr
  subnet_cidrs = var.subnet_cidrs
}

module "elb" {
  source   = "./modules/elb"
  elb_name = var.elb_name
}

module "lt" {
  source  = "./modules/lt"
  lt_name = var.lt_name
  ami_id = var.ami_id
}

module "asg" {
  source          = "./modules/asg"
  asg_name            = var.asg_name
  ltid = module.lt.id
  elbid             = module.elb.id
  subnet_ids      = module.vpc.subnet_ids
  min_size        = var.min_size
  max_size        = var.max_size
}