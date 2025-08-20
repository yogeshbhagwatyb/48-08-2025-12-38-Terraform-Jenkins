# resource "aws_instance" "this" {
#   ami                    = var.ami_id
#   instance_type          = var.instance_type
#   subnet_id              = var.subnet_id
#   vpc_security_group_ids = var.security_group_ids

#   tags = merge(var.tags, {
#     Name = var.name
#   })
# }


resource "aws_instance" "this" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids

  tags = merge(
    var.tags,
    { Name = var.name }
  )
}
