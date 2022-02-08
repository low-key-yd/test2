variable "project" {

default = "test"
}

resource "aws_instance" "ec2" {
    
  ami           = "ami-03fa4afc89e4a8a09"
  instance_type = "t2.micro"
  key_name = "dev-ops"
  vpc_security_group_ids = [ aws_security_group.webserver.id , aws_security_group.ssh.id ]
  tags = {
    Name = "${var.project}-server",
   
  }
}
