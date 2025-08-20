module "ec2" {
  source             = "../../modules/ec2"
  name               = "dev-instance"
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  subnet_id          = var.subnet_id
  security_group_ids = var.security_group_ids
  tags               = { Environment = "dev" }
}
