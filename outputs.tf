// TERRAFORM/outputs.tf

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_ids2" {
  description = "List of created subnet IDs in the selected region and availability zones"
  value       = module.vpc.subnet_ids
}

output "public_ips" {
  description = "List of public IP addresses for the created EC2 instances"
  value       = module.ec2_instance.public_ips
}
