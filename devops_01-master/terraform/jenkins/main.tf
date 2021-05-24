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
    vpc_security_group_ids = ["sg-03d0a94ec75785a93"]
    vpc_id = "vpc-0504477353a32ecc1"
 
    tags = {
        Name = "${var.name}"
    }
}
