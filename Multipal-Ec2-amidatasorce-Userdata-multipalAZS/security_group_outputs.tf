# Public SG Outputs
output "Public_security_group_id" {
  description = "The ID of the security group"
  value       = module.Public_sg.security_group_id
}

output "Public_security_group_vpc_id" {
  description = "The VPC ID"
  value       = module.Public_sg.security_group_vpc_id
}

output "Public_security_group_name" {
  description = "The name of the security group"
  value       = module.Public_sg.security_group_name
}

# Private SG Outputs

output "Private_security_group_id" {
  description = "The ID of the security group"
  value       = module.Private_sg.security_group_id
}

output "Private_security_group_vpc_id" {
  description = "The VPC ID"
  value       = module.Private_sg.security_group_vpc_id
}

output "Private_security_group_name" {
  description = "The name of the security group"
  value       = module.Private_sg.security_group_name
}