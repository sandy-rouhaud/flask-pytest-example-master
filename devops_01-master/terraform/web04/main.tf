provider "aws" {
    region="us-east-2"
}

variable "name" {
    description="Name of the web box at apply"
}

resource "aws_eip_association" "eip_assoc" {
    instance_id   = "i-06eee7866d0b3a6af"
    allocation_id = "eipalloc-09832f47cab8f5691"
}


resource "aws_instance" "groupe01" {
    ami = "ami-077e31c4939f6a2f3"
    instance_type = "t2.medium"
    key_name = "kp-groupe-1-CCSEC"
    vpc_security_group_ids = ["sg-0df89b1f79f8cbf01"]
    subnet_id = "subnet-08ac909c951e9226f"

    tags = {
        Name = "${var.name}"
    }
}
