provider "aws" {
  region = var.default_region
}

module "vpc" {
  source              = "./modules/vpc"
  region              = var.default_region
  vpc_cidr            = var.vpc_cidr
  availability_zones  = var.availability_zones
}

module "ec2_instance" {
  source            = "./modules/ec2_instance"
  regions           = var.regions
  environments      = ["dev"]
  instance_type     = var.instance_type
  ami               = var.ami["dev"]
  vpc_id            = module.vpc.vpc_id
  subnet_ids        = module.vpc.subnet_ids
  availability_zones = module.vpc.availability_zones
}

module "route_table" {
  source  = "./modules/route_table"
  vpc_id  = module.vpc.vpc_id
  routes  = var.routes
}
