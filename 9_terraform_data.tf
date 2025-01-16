resource "terraform_data" "public" {
  depends_on = [ 
    aws_instance.public,
    aws_instance.private
  ]

  connection {
    host = aws_instance.public.public_ip
    user = var.os_user
    private_key = tls_private_key.key_pair.private_key_pem
    
    timeout = "2m"
  }

  provisioner "remote-exec" {
    inline = [
      "echo '${tls_private_key.key_pair.private_key_pem}' >> /home/${var.os_user}/offline.pem",
      "chmod 400 /home/${var.os_user}/offline.pem"
    ]
  }
}