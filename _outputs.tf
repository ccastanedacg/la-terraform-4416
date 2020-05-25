#----root/outputs.tf-----

#----storage outputs------
output "bucket_name" {
  value = module.storage.bucketname
}

#---Networking Outputs -----

output "public_subnets" {
  value = join(", ", module.networking.public_subnets)
}

output "subnet_ips" {
  value = join(", ", module.networking.subnet_ips)
}

output "public_security_group" {
  value = module.networking.public_sg
}

#---Compute Outputs ------

output "public_instance_ids" {
  value = module.compute.server_id
}

output "public_instance_ips" {
  value = module.compute.server_ip
}