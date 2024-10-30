resource "aws_instance" "public" {
  ami           = var.ami_id
  instance_type = "c5.large"
  key_name      = aws_key_pair.key_pair.key_name
  
  root_block_device {
    volume_size = "30"
  }

  subnet_id = aws_subnet.public-a.id
  vpc_security_group_ids = [aws_security_group.public.id]
  private_ip = cidrhost(aws_subnet.public-a.cidr_block, 101)

  tags = {
    Name = "offline-public"
  }
}

resource "aws_instance" "private" {
  ami           = var.ami_id
  instance_type = "c5.large"
  key_name      = aws_key_pair.key_pair.key_name
  
  root_block_device {
    volume_size = "30"
  }

  subnet_id = aws_subnet.private-a.id
  vpc_security_group_ids = [aws_security_group.private.id]
  private_ip = cidrhost(aws_subnet.private-a.cidr_block, 101)

  tags = {
    Name = "offline-private"
  }
}