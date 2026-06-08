resource "aws_instance" "keycloak" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 (us-east-1)
  instance_type = var.instance_type

  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]

  associate_public_ip_address = true

  key_name = var.key_pair_name
  user_data = <<-EOF
               #!/bin/bash
               yum update -y
               amazon-linux-extras enable nginx1
               amazon-linux-extras install nginx1 -y
               systemctl start nginx
               systemctl enable nginx
               echo "<h1>Nginx running on AWS EC2 🚀</h1>" > /usr/share/nginx/html/index.html
               EOF
  tags = {
    Name = "keycloak-ec2"
  }
}
