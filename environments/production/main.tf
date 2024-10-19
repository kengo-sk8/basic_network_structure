# VPC サブネット RouteTable InternetGateway
module "network" {
  source = "../../modules/network"

  # 共通
  env = local.env
  region = local.region

  # VPCのCIDR
  vpc_cidr = local.vpc_cidr

  # publicサブネットのCIDR
  subnet_cidr_public_a = local.subnet_cidr_public_a
  subnet_cidr_public_c = local.subnet_cidr_public_c
  subnet_cidr_public_d = local.subnet_cidr_public_d

  # priveteサブネットのCIDR
  subnet_cidr_private_a = local.subnet_cidr_private_a
  subnet_cidr_private_c = local.subnet_cidr_private_c
  subnet_cidr_private_d = local.subnet_cidr_private_d

  # routeテーブルののCIDR
  route_table_cidr = local.route_table_cidr
}