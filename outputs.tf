output "offline_public_ip" {
  value = aws_instance.public.public_ip
}

output "offline_private_ip" {
  value = aws_instance.private.private_ip
}

output "public_key_openssh" {
  value = nonsensitive(tls_private_key.key_pair.private_key_pem)
}