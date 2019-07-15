provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_access_key}"
    region = "${var.region}"
}
resource "aws-vpc" "terraformmain" {
    cidr_block = "${var.vpc-fullcidr}"
    enable_dns_support = true
    enable_dns_hostnames = true
    tags {
        Name = "My Terraform VPC"
    }    
}

