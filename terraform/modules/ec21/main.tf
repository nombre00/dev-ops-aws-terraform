resource "aws_instance" "ec21" {
    ami = var.ami_ec2
    instance_type = var.tipo_instancia
    key_name = var.llave
    security_groups = [var.sg_ec2]
    subnet_id = var.subnet
    tags ={
        Name=var.ec2_name
    }
    user_data = <<-EOF
                        #!/bin/bash
                        sudo apt-get update
                        sudo apt install docker.io -y
                        sudo curl -L "http://github.com/docker/compose/releases/latest/sownload/docker-compose-$(uname -s) -$(uname -m)" -o /usr/local/bin/docker-compose
                        chmod +x /usr/local/bin/docker-compose
                        sudo usermod -aG docker $USER 
                        sudo newgrp docker
                        EOF
    associate_public_ip_address = true
  
}