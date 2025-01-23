resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "offline-igw"
  }
}





//
resource "aws_eip" "nat-private1" {
  domain = "vpc"
  network_border_group = "ap-northeast-2"
  public_ipv4_pool = "amazon"

  tags = {
    Name = "offline-nat-a"
  }
}

resource "aws_nat_gateway" "private1" {
  allocation_id = aws_eip.nat-private1.id
  subnet_id = aws_subnet.public-a.id

  tags = {
    Name = "offline-nat-private1"
  }
}