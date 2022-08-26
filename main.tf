provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "apache2" {
    ami = "ami-006d3995d3a6b963b"
    instance_type = "t2.micro"
    subnet_id = "subnet-01f99bd1078deccd8"
    disable_api_termination = "true"
    security_groups = ["sg-039346231eed4115b"]
    key_name = "Golden Key"

    tags = {
        Name = "apache2"
        Managed_by = "Terraform"
        Created_by = "Manjunath"
        Created_on = "20220826"
    }
    user_data = "${file("userdata.sh")}"
}


