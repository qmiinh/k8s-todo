terraform {
  backend "s3" {
    key = "stacks/eks"
  }
}

data "aws_vpc" "development" {
  cidr_blocks = "10.51.0.0/21"
}
data "aws_subnet_ids" "private" {
  vpc_id = data.aws_vpc.development.id
  filter {
    Name = "development-subnet-private"
  }
}
