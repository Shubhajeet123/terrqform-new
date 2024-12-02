resource "aws_s3_bucket" "dev" {
    bucket = "mybuckeetststst"
   
  
}
resource "aws_s3_bucket_versioning" "versioning" {
    bucket = aws_s3_bucket.dev.id
    versioning_configuration {
      status = "Enabled"
    }
  
}