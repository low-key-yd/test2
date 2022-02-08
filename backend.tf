terraform {
  backend "s3" {
    bucket = "tfstate-sync-track.tk"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
