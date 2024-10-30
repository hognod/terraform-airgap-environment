output "offline_public_ip" {
  value = aws_instance.public.public_ip
}

output "offline_private_ip" {
  value = aws_instance.private.private_ip
}

output "ssh_pem_key" {
  value = local_file.private_key
}