regions = ["us-east-1"]
environments = ["dev", "prod"]
instance_type = "t2.micro"
ami = {
  "eu-west-1" = "ami-0566e623e96d834c4"
  "eu-central-1" = "ami-00648c36e527032ec"
}
default_region = "us-east-1"
vpc_cidr = "10.0.0.0/16"
availability_zones = ["us-east-1a", "us-east-1b"]
