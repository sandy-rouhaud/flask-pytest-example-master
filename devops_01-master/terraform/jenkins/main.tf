provider "aws" {
    region = "us-east-2"
}

variable "name" {
    description = "Name the instance on deploy"
}

resource "aws_instance" "groupe01" {
    ami = "ami-00399ec92321828f5"
    instance_type = "t2.micro"
    key_name = "kp-groupe-1-CCSEC"

    tags = {
        Name = "${var.name}"
    }
}
