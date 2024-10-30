output "offline_public_ip" {
  value = aws_instance.public.public_ip
}

output "offline_private_ip" {
  value = aws_instance.private.private_ip
}