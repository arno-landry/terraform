
resource "aws_instance" "terraform_demo" {
    ami = "ami-05fa00d4c63e32376"
    instance_type = "t2.micro"
    key_name = "AWS-BACH"
    tags = {
        Name = "jenkins"
        Env = "dev" 
    }
}

output "public-ip" {
    value = aws_instance.terraform_demo.public_ip
}
output "public-dns" {
    value = aws_instance.terraform_demo.public_dns
}
  