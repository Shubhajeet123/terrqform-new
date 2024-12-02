// In below command we can createe S3 bucket
resource "aws_s3_bucket" "dev" {
    bucket = "mybuckeetststst"
   
  
}

// Here we can enable  s3 versioning in terraform

resource "aws_s3_bucket_versioning" "versioning" {
    bucket = aws_s3_bucket.dev.id
    versioning_configuration {
      status = "Enabled"
      

    }
  
}