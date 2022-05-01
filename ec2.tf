provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "terraform-demo" {
    ami = "ami-0f9fc25dd2506cf6d"
    instance_type = "t2.nano"
    key_name = "devkey"
    tags = {
        Name = "jenkins"
        Env = "dev"
    }
}

output "public-ip" {
    value = aws_instance.terraform-demo.public_ip
}
output "public-dns" {
    value = aws_instance.terraform-demo.public_dns
}