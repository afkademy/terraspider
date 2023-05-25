resource "aws_route_table" "pub_rt" {
    vpc_id = aws_vpc.spacex.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }

    tags = {
        Name = "pub_rt"
    }

}

resource "aws_route_table" "pri_rt" {
    vpc_id = aws_vpc.spacex.id

    tags = {
        Name = "pri_rt"
    }

}

