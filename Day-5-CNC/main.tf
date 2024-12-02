// Creating a VPC
resource "aws_vpc" "dev" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "dev_vpc"
    }
  
}

//Creating a Subnet

resource "aws_subnet" "dev" {
    vpc_id = aws_vpc.dev.id
    cidr_block = "10.0.1.0/24"
    tags = {
      Name = "dev_subnet"

    }
  
}

//Creating a Internet Gateway
resource "aws_internet_gateway" "dev_local" {
    vpc_id = aws_vpc.dev.id
    tags = {
      Name = "dev_IG"
    }
    
  
}
//Creating Route table
resource "aws_route_table" "dev" {
    vpc_id = aws_vpc.dev.id
    tags = {
      Name = "dev_RT"
    }
    
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.dev_local.id
    }
  
}
//Creating a Subnet Association
resource "aws_route_table_association" "Subnet_ass" {
    subnet_id = aws_subnet.dev.id
    route_table_id = aws_route_table.dev.id
  
}