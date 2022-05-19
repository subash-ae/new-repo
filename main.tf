provider "aws"{
  region = var.region
}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type1
  vpc           = data.aws_vpc.selected.name
  subnet        = data.aws_subnet.mysub.name
  tags = {
    Name = "HelloWorld"
  }
}
