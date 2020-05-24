#----root/outputs.tf-----

#----storage outputs------
output "bucket_name" {
  value = module.storage.bucketname
}