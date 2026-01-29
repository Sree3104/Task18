terraform {

  required_version = ">= 1.3.0"

}



provider "aws" {

  region = "ap-south-1"

}



resource "random_id" "suffix" {

  byte_length = 4

}



resource "aws_s3_bucket" "gitops_demo" {

  bucket = "gitops-demo-${random_id.suffix.hex}"
  tags={
   ManagedBy="gitops"
}

}


