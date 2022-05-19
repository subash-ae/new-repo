data "aws_vpc" "myvpc" {
  filter {
     name = "tag:Name"
     values = ["vpc121"]
  }
}
data "aws_subnet" "mysub" {
 filter {
     name = "tag:Name"
     values = ["subnet-1"]
  }
}
