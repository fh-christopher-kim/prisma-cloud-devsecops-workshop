provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "1309a330-0e18-4f57-814f-424107dfb369"
    git_commit           = "5715b3215cc9cd17863762766934837a4878c75d"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-06-11 16:26:14"
    git_last_modified_by = "86022061+fh-christopher-kim@users.noreply.github.com"
    git_modifiers        = "86022061+fh-christopher-kim"
    git_org              = "fh-christopher-kim"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
