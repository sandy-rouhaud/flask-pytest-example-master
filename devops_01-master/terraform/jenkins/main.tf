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
    vpc_security_group_ids = "sg-03d0a94ec75785a93"
    subnet_id = ["subnet-08ac909c951e9226f","subnet-05c9ca18b81dc8721","subnet-0fab122cda4715e50"]

    tags = {
        Name = "${var.name}"
    }
}
