resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.pub_sn.*[0].id
  route_table_id = aws_route_table.pub_rt.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.pri_sn.*[0].id
  route_table_id = aws_route_table.pri_rt.id
}
