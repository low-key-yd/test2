resource "aws_s3_bucket" "tfstate-bucket" {
    
  bucket = "my-tfstate-sync-track.tk"
  acl    = "private"
  
  versioning {
     enabled = true
  
  }
    
  tags = {
    Name = "tfstate-sync-track.tk"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
