resource "terraform_data" "public" {
  depends_on = [ 
    aws_instance.public,
    aws_instance.private
  ]

  connection {
    host = aws_instance.public.public_ip
    user = "ec2-user"
    private_key = tls_private_key.key_pair.private_key_pem
    
    timeout = "2m"
  }

  # provisioner "file" {
  #   source = "${path.module}/offline.pem"
  #   destination = "/home/ec2-user/offline.pem"
  # }

  provisioner "remote-exec" {
    inline = [
      "echo ${tls_private_key.key_pair.private_key_pem} >> /home/ec2-user/offline.pem",
      "chmod 400 /home/ec2-user/offline.pem"
    ]
  }
}