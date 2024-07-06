terraform {
required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 4.16"
}
}
        required_version = ">= 1.2.0"
}

provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "aws_ec2_test" {
        count = 2
        ami = "ami-0c2af51e265bd5e0e"
        instance_type = "t2.micro"
        tags = {
            Name = "RaiSahab- ${count.index}"
        }
}
