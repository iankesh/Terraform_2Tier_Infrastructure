resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
    tags {
    Name = "arjun-vpc"
  }
}

resource "aws_internet_gateway" "ig" {
    vpc_id = "${aws_vpc.vpc.id}"
  tags {
    Name = "arjun-ig"
  }
}
