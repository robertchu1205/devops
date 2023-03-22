resource "aws_ecr_repository" "repository" {
  count=length(var.repository)

  encryption_configuration {
    encryption_type = "KMS"
    kms_key         = "arn:aws:kms:ap-east-1:328162702476:key/2e80ec0d-ec42-4851-aa39-244448531a4c"
  }

  image_scanning_configuration {
    scan_on_push = "true"
  }

  image_tag_mutability = "MUTABLE"
  name                 = var.repository[count.index]
}
