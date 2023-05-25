resource "aws_subnet" "pri_sn" {
    vpc_id = aws_vpc.spacex.id
    cidr_block = var.pri_cidrs[count.index]
    count = 2

    tags = {
        Name = "pri_sn_${count.index}"
    }
}

resource "aws_subnet" "pub_sn" {
    vpc_id = aws_vpc.spacex.id
    cidr_block = var.pub_cidrs[count.index]
    count = 2

    tags = {
        Name = "pub_sn_${count.index}"
    }
}


# resource "aws_subnet" "spacex_pri_sn_1" {
#     vpc_id     = aws_vpc.spacex.id
#     cidr_block = "10.10.10.0/26"
#     map_public_ip_on_launch = "false"

#     tags = {
#         Name = "spacex_pri_sn_1"
#     }
# }

# resource "aws_subnet" "spacex_pri_sn_2" {
#     vpc_id     = aws_vpc.spacex.id
#     cidr_block = "10.10.10.64/26"
#     map_public_ip_on_launch = "false"
    
#     tags = {
#         Name = "spacex_pri_sn_2"
#     }
# }

# resource "aws_subnet" "spacex_pub_sn_1" {
#     vpc_id     = aws_vpc.spacex.id
#     cidr_block = "10.10.10.128/26"
#     map_public_ip_on_launch = "true"
    
#     tags = {
#         Name = "spacex_pub_sn_1"
#     }
# }

# resource "aws_subnet" "spacex_pub_sn_2" {
#     vpc_id     = aws_vpc.spacex.id
#     cidr_block = "10.10.10.192/26"
#     map_public_ip_on_launch = "true"
    
#     tags = {
#         Name = "spacex_pub_sn_2"
#     }
# }




