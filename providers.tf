terraform {
  backend "s3" {
    bucket = "rav33sha" #change this
    key    = "terraform.tfstate"
    region = "us-east-1"
    #dynamodb_table = "my-lock-table" # optional (Only if you created the DynamoDB table in step 4) 
  }
}

provider "aws" {
  region = "us-east-1"
  # Credentials can be specified here or via environment variables
}
