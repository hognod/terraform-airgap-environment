//key pair
resource "tls_private_key" "key_pair" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "key_pair" {  
  key_name   = "offline"
  public_key = tls_private_key.key_pair.public_key_openssh
}

//local environment
# resource "local_file" "private_key" {
#   content  = tls_private_key.key_pair.private_key_pem
#   filename = "${path.module}/offline.pem"
#   file_permission = "0400"
# }

//remote environment
resource "github_repository_file" "private_key" {
  repository = var.github_repository
  branch = var.github_branch
  file = "offline.pem"
  content = tls_private_key.key_pair.private_key_pem
  overwrite_on_create = true
}