resource "aws_instance" "web" {
  ami                         = "ami-00e87074e52e6c9f9"
  instance_type               = "t3.micro"
  key_name                    = aws_key_pair.devops2.key_name
  associate_public_ip_address = true
  availability_zone           = "us-east-1a"
  vpc_security_group_ids     = [aws_security_group.WP_SG.id]
  subnet_id = "${aws_subnet.public1.id}"
  user_data                   = filebase64("${path.module}/userdata.sh")

  tags = {
    "Name" = "Salta"
  }
}
