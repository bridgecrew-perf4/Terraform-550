output "ip_address_virginia_webserver" {
    value = "${aws_instance.webserver[*].public_ip}"
}

output "ip_address_virginia_dbserver" {
    value = "${aws_instance.DBserver[*].public_ip}"
}
output "ip_address_virginia_bastionserver" {
    value = "${aws_instance.BastionServer[*].public_ip}"
}

