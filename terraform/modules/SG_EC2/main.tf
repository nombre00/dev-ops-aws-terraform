resource "aws_security_group" "sg_principal" {
    name = var.sg_name
    vpc_id = var.vpc_id
    ingress {
        cidr_blocks = [ "0.0.0.0/0" ]
        from_port = 22
        to_port = 22
        protocol = "tcp"
    }
    egress {
        cidr_blocks = [ "0.0.0.0/0" ]
        from_port = 0
        to_port = 0
        protocol = "-1"
    }

  
}