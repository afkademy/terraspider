resource "aws_subnet" "pri_sn" {
    vpc_id = aws_vpc.spacex.id
    cidr_block = var.pri_cidrs[count.index]
    count = var.num_private_subnets

    tags = {
        Name = "pri_sn_${count.index}"
    }
}

resource "aws_subnet" "pub_sn" {
    vpc_id = aws_vpc.spacex.id
    cidr_block = var.pub_cidrs[count.index]
    count = var.num_public_subnets

    tags = {
        Name = "pub_sn_${count.index}"
    }
}
