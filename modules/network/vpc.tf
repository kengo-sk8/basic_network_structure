resource "aws_vpc" "test_vpc" {
  cidr_block                           = var.vpc_cidr
  assign_generated_ipv6_cidr_block     = false
  enable_dns_hostnames                 = true
  enable_dns_support                   = true
  enable_network_address_usage_metrics = false
  instance_tenancy                     = "default"

  tags = {
    Name = "test-${var.env}-vpc"
  }

}