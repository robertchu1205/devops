resource "aws_s3_bucket" "aqm-algo" {
  bucket = "aqm-algo"

  tags = {
    Name                    = "aqm-algo"
    map-migrated-project-id = "GCR-Migration-2021-398"
    map-migrated-cnmap      = "d-server-0067yxz39nth5o"
  }


}

resource "aws_s3_bucket_acl" "aqm-algo-default" {
  bucket = aws_s3_bucket.aqm-algo.id
  acl    = "private"
}

resource "aws_s3_bucket_policy" "aqm-algo" {
  bucket = aws_s3_bucket.aqm-algo.id
  policy = data.aws_iam_policy_document.aqm-algo.json
}

data "aws_iam_policy_document" "aqm-algo" {
  statement {
    sid = "Allow-dm-backend-access"
    
    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::328162702476:user/algo-dm-backend"]
    }

    actions = [
      "s3:*",
    ]

    resources = [
      "${aws_s3_bucket.aqm-algo.arn}/fund_selector/*",
      "${aws_s3_bucket.aqm-algo.arn}/Settlement/*",
    ]
  }
}
