resource "google_compute_network" "our_development_network" {
  name                    = "devnetwork"
  auto_create_subnetworks = false
}
resource "aws_vpc" "environment-example-two" {
  cidr_block="10.0.0.0/16"
  enable_dns_hostnames=true
  enable_dns_support=true
  tags={
      name="terraform-aws-vpc-example-two"
  }
}
resource "aws_subnet" "subnet1" {
  cidr_block="${cidrsubnet(aws_vpc.environment-example-two.cidr_block, 3, 1)}"
  vpc_id="${aws_vpc.environment-example-two.id}"
  availability_zone="ap-south-1a"
}


