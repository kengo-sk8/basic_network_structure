# パブリックサブネット
resource "aws_subnet" "test_public_subnet_a" {
  cidr_block        = var.subnet_cidr_public_a
  vpc_id            = aws_vpc.test_vpc.id
  availability_zone = "${var.region}a"

  tags = {
    Name = "test-${var.env}-subunet-public-a"
  }
}

resource "aws_subnet" "test_public_subnet_c" {
  cidr_block        = var.subnet_cidr_public_c
  vpc_id            = aws_vpc.test_vpc.id
  availability_zone = "${var.region}c"

  tags = {
    Name = "test-${var.env}-subunet-public-c"
  }
}

resource "aws_subnet" "test_public_subnet_d" {
  cidr_block        = var.subnet_cidr_public_d
  vpc_id            = aws_vpc.test_vpc.id
  availability_zone = "${var.region}d"

  tags = {
    Name = "test-${var.env}-subunet-public-d"
  }
}

# プライベートサブネット
resource "aws_subnet" "test_private_subnet_a" {
  cidr_block        = var.subnet_cidr_private_a
  vpc_id            = aws_vpc.test_vpc.id
  availability_zone = "${var.region}a"

  tags = {
    Name = "test-${var.env}-subunet-private-a"
  }
}

resource "aws_subnet" "test_private_subnet_c" {
  cidr_block        = var.subnet_cidr_private_c
  vpc_id            = aws_vpc.test_vpc.id
  availability_zone = "${var.region}c"

  tags = {
    Name = "test-${var.env}-subunet-private-c"
  }
}

resource "aws_subnet" "test_private_subnet_d" {
  cidr_block        = var.subnet_cidr_private_d
  vpc_id            = aws_vpc.test_vpc.id
  availability_zone = "${var.region}d"

  tags = {
    Name = "test-${var.env}-subunet-private-d"
  }
}