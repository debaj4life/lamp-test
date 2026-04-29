resource "aws_instance" "web_server" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  associate_public_ip_address = true
  vpc_security_group_ids = [var.security_group_id]

  user_data = file("${path.module}/../../userdata.sh") 
  tags = {
    Name = "wordpress-web"
  }
}