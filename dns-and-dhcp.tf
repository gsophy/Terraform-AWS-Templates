resource "aws_vpc_dhcp_options" "mydhcp" {
  domain_name = "${var.DNSZoneName}"
  domain_name_servers = "[AmazonProvidedDNS]"
  tags{
      Name = "My Internal Name"
  }
}
resource "aws_vpc_dhcp_options_association" "dns_resolver" {
    vpc_id = "${aws_vpc.terraformmain.id}"
    dhcp_option_id = "${aws_vpc_dhcp_options.mydhcp.id}"
}


