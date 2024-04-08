resource "aws_vpc" "main_vpc" {
  cidr_block = var.cidr_block
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Project = var.project
    Environment = var.environment
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.web_server.id
  cidr_block              = var.public_subnet_cidr_block
  map_public_ip_on_launch = true
 
  tags = {
    Project = var.project
    Environment = var.environment
  }
}
 
resource "aws_internet_gateway" "web_server" {
  vpc_id = aws_vpc.web_server.id
 
  tags = {
   Project = var.project
    Environment = var.environment
  }
}
 
resource "aws_route_table" "web_server" {
  vpc_id = aws_vpc.web_server.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.web_server.id
  }
 
  tags = {
    Project = var.project
    Environment = var.environment
  }
}