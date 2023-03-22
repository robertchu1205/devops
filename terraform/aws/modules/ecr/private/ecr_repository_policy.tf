resource "aws_ecr_repository_policy" "repository_policy" {
  count=length(var.repository)

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:UploadLayerPart",
        "ecr:BatchCheckLayerAvailability"
      ],
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::328162702476:user/ecr-admin"
      },
      "Sid": "allow-ecr-admin"
    }
  ],
  "Version": "2008-10-17"
}
POLICY
  repository = var.repository[count.index]
  depends_on = [aws_ecr_repository.repository]
}
