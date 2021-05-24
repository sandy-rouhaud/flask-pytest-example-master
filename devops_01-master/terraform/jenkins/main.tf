provider "aws" {
    region = "us-east-2"
}

variable "name" {
    description = "Name the instance on deploy"
}

resource "aws_eip_association" "eip_assoc" {
    allocation_id = "eipalloc-036ebd6ca5e2b187a"
}

resource "aws_instance" "groupe01" {
    ami = "ami-00399ec92321828f5"
    instance_type = "t2.micro"
    key_name = "kp-groupe-1-CCSEC"
    vpc_security_group_ids = ["sg-03d0a94ec75785a93"]
    subnet_id = "subnet-08ac909c951e9226f"

 
    tags = {
        Name = "${var.name}"
    }
}
