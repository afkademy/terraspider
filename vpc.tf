resource "aws_vpc" "spacex" {
  cidr_block       = "10.10.10.0/24"

  tags = {
    Name = "spacex"
  }
}