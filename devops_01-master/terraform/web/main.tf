provider "aws" {
    region="us-east-1"
}

variable "name" {
    description="Name of the web box at apply"
}

resource "aws_instance" "groupe01_01_web" {
    ami = "ami-00399ec92321828f5"
    instance_type = "t2.micro"
    key_name = "devops_01"

    tags = {
        Name = "${var.name}"
    }
}
