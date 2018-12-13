resource "aws_instance" "server-web" {
  ami           = "ami-076e276d85f524150"
  instance_type = "t2.micro"
  key_name        = "ansiblepackerterraform"
  subnet_id = "${aws_subnet.public-subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.sgweb.id}"]
  associate_public_ip_address = true
  source_dest_check = false
 tags {
   Name = "arjun-serer-web"
 }
}

resource "aws_instance" "server-db" {
  ami           = "ami-076e276d85f524150"
  instance_type = "t2.micro"
  key_name        = "ansiblepackerterraform"
  subnet_id = "${aws_subnet.private-subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.sgdb.id}"]
  source_dest_check = false
 tags {
   Name = "arjun-serer-db"
 }
}
