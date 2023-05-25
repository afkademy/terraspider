resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.spacex.id

  tags = {
    Name = "igw"
  }
}