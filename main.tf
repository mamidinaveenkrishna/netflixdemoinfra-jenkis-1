provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  count                  = 4
  ami                    = "ami-0f8a61b66d1accaee"
  instance_type          = "c7i-flex.large"
  key_name               = "new-server-1"
  vpc_security_group_ids = ["sg-072fc36e96ff49a35"]
  tags = {
    Name = var.instance_names[count.index]
  }
}
