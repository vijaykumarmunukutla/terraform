resource "aws_s3_bucket" "bucketone" {
  bucket = "${var.bucket_name}"
   acl = "private"
   versioning {
      enabled = true
   }
   tags = {
     Name = "Bucket1"
     Environment = "Test"
   }
   
   website {
    index_document = "index.html"
    error_document = "index.html"
  }
}
