terraform {
  backend "s3" {
    bucket = "my-tfstate-sync-track.tk"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
