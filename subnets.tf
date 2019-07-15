resource "aws_subnet" "PublcAZA" {
  vpc_id = "${aws_vpc.terraformmain.id}"
  cidr_block = "${var.Subnet-Private-AZA-CIDR}"
  tags {
      Name = "PublcAZA"
  }
  availability_zone = "${data.aws_availability_zones.available.names[0]}"
}
resource "aws_route_table_association" "PublicAZA" {
  subnet_id = "${aws_subnet.PublcAZA.id}"
  route_table_id = "${aws_route_table.public.id}"
}
resource "aws_subnet" "PrivateAZA" {
    vpc_id = "${aws_vpc.terraformmain.id}"
    cidr_block = "${var.Subnet-Private-AzA-CIDR}"
    tags {
        Name = "PublicAZB"
    }
    availability_zone = "${data.aws_availability_zones.available.names[1]}"
}
resource "aws_route_table_association" "PrivateAZA" {
    subnet_id = "${aws_subnet.PrivateAZA.id}"
    route_table_id = "${aws_route_table.private.id}"
}



