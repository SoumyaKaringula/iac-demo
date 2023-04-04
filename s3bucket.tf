resource "aws_s3_bucket" "soumya109" {
  bucket = "soumya109"
  acl = "private"
}

#upload file
resource "aws_s3_bucket_object" "upload" {
  key        = "helloworld"
  acl        = "private"
  bucket     = aws_s3_bucket.soumya109.id
  source     = "./helloworld.txt"
}
