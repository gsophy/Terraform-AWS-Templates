variable "region" {
    default = "us-east-1"
}
variable "AmiLinux" {
    type = "map"
    default = {
        us-east-1 = "ami-b73b63a0"
        us-west-2 = "ami-5ec1673e"
        eu-west-1 = "ami-9398d3e0"
    }
    description = "I add only three regions (VA, Oregon, Ireland)"
}
variable "aws_access_key" {
    default = ""
    description = "the user aws access key"
}
variable "aws_secret_key" {
    default = ""
    description = "the user aws secret key"
}
variable "vpc-fullcidr" {
    default = "10.1.0.0/16"
    description = "the VPC CIDR"
}
variable "Subnet-Public-AZA-CIDR" {
    default = "10.1.0.0/24"
    description = "The CIDR of the Subnet"
}
variable "Subnet-Private-AZA-CIDR" {
    default = "10.1.3.0/24"
    description = "the CIDR of the Subnet"
}
variable "key_name" {
    default = ""
    description = "the SSH key to use in the EC2 Machines"
}
variable "DNSZoneName" {
    default = "southernco.internal"
    description = "the internal dns name"
}






