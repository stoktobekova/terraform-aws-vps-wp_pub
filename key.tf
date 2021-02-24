resource "aws_key_pair" "devops2" {
  key_name   = "devops2"
  public_key = file("~/.ssh/id_rsa.pub")
}
