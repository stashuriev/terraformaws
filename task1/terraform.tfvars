subnets = {
  "cmtr-03pbs5f7-01-subnet-public-a" = {
    cidr_block        = "10.10.1.0/24"
    availability_zone = "us-east-1a"
  }
  "cmtr-03pbs5f7-01-subnet-public-b" = {
    cidr_block        = "10.10.3.0/24"
    availability_zone = "us-east-1b"
  }
  "cmtr-03pbs5f7-01-subnet-public-c" = {
    cidr_block        = "10.10.5.0/24"
    availability_zone = "us-east-1c"
  }
}
vpc            = "cmtr-03pbs5f7-01-vpc"
vpc_cidr_block = "10.10.0.0/16"
igw            = "cmtr-03pbs5f7-01-igw"
route_table    = "cmtr-03pbs5f7-01-rt"
aws_region     = "us-east-1"
