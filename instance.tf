resource "aws_instance" "instance1"{
	ami = "ami-02dfbd4ff395f2a1b"
	key_name = "test"
	instance_type = "t2.micro"
  tags={
    Name = "webserver"
  }
}
