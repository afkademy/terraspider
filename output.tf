output "pub_sn_id" {
  value       = aws_subnet.pub_sn[*].id
}

output "pri_sn_id" {
  value       = aws_subnet.pri_sn[*].id
}

output "pub_sn_owner_id" {
    value     = aws_subnet.pub_sn[*].owner_id
}