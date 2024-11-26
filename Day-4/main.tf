
resource "aws_s3_bucket" "name" {
    bucket = "myfamilybuckett"
  
}

# resource "aws_s3_bucket" "name" {
#     bucket = "myweekendbucketttttttttts"
  
# }

terraform {
  backend "s3" {
    bucket = "mybuckettttsssss"
    region = "ap-south-1"
    key = "terraform.tfstate"
    encrypt = true
    
  }
=======
resource "aws_s3_bucket" "name" {
    bucket = "myfamilybuckett"
  
}

# resource "aws_s3_bucket" "name" {
#     bucket = "myweekendbucketttttttttts"
  
# }

terraform {
  backend "s3" {
    bucket = "mybuckettttsssss"
    region = "ap-south-1"
    key = "terraform.tfstate"
    encrypt = true
    
  }

}