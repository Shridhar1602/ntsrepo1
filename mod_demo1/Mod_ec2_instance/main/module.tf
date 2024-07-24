provider "aws" {
  access_key = "AKIAW5IZRWOY5H45E5MY"
  secret_key = "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"
  region = "us-east-1"
}

module "ec2_instance" {
  source     = "../Mod_Ec21" 

  region    = "us-east-1"
}


