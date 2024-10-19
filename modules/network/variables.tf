# 共通
variable "env" { type = string }
variable "region" { type = string }

# VPC CIDR
variable "vpc_cidr" { type = string }

# public サブネット CIDR
variable "subnet_cidr_public_a" { type = string }
variable "subnet_cidr_public_c" { type = string }
variable "subnet_cidr_public_d" { type = string }

# private サブネット CIDR
variable "subnet_cidr_private_a" { type = string }
variable "subnet_cidr_private_c" { type = string }
variable "subnet_cidr_private_d" { type = string }

# ルートテーブル CIDR
variable "route_table_cidr" { type = string }