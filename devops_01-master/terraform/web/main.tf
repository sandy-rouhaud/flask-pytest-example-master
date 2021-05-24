provider "aws" {
    region="us-east-2"
}

variable "name" {
    description="Name of the web box at apply"
}

resource "aws_instance" "groupe01" {
    ami = "ami-00399ec92321828f5"
    instance_type = "t2.micro"
    key_name = "kp-groupe-1-CCSEC"
    vpc_security_group_ids = ["sg-0df89b1f79f8cbf01"]
    subnet_id = "subnet-08ac909c951e9226f"

    tags = {
        Name = "${var.name}"
    }
}
