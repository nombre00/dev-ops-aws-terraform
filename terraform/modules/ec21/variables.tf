variable "ami_ec2" {
    type = string
    description = "La ami para el EC2"
    default = "ami-084568db4383264d4"
  
}

variable "tipo_instancia" {
    type = string
    description = "Tipo de instancia para ec2 "
    default = "t2.micro"
  
}
variable "llave" {
    type = string
    description = "Llave del ec2"
    default = "deb-ops1"
  
}
variable "sg_ec2" {
    type = string
    description = "Grupo de seguridad del entorno "
  
}
variable "subnet" {
    type = string
    description = "La subred de la instancia "
  
}
variable "ec2_name" {
    type = string
    description = "El nombre de la instancia "
  
}