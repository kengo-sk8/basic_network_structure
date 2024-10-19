# VPC
output "test_vpc_id" {
  value = aws_vpc.test_vpc.id
}

# public subnet
output "test_public_subnet_a_id" {
  value = aws_subnet.test_public_subnet_a.id
}
output "test_public_subnet_c_id" {
  value = aws_subnet.test_public_subnet_c.id
}
output "test_public_subnet_d_id" {
  value = aws_subnet.test_public_subnet_d.id
}

# private subnet
output "test_private_subnet_a_id" {
  value = aws_subnet.test_private_subnet_a.id
}
output "test_private_subnet_c_id" {
  value = aws_subnet.test_private_subnet_c.id
}
output "test_private_subnet_d_id" {
  value = aws_subnet.test_private_subnet_d.id
}