# 共通
locals {
  env    = "development"
  region = "ap-northeast-1"
}

# VPC
locals {
  vpc_cidr = "10.0.0.0/16"
}

# サブネット
locals {
  # public
  subnet_cidr_public_a = "10.0.1.0/24"
  subnet_cidr_public_c = "10.0.2.0/24"
  subnet_cidr_public_d = "10.0.3.0/24"

  # private
  subnet_cidr_private_a = "10.0.10.0/24"
  subnet_cidr_private_c = "10.0.20.0/24"
  subnet_cidr_private_d = "10.0.30.0/24"
}

# ルートテーブル
locals {
  route_table_cidr        = "0.0.0.0/0"
  public_route_table_cidr = "10.0.0.0/16"
}