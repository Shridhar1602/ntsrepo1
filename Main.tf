provider "aws" {
  access_key = "AKIAW5IZRWOY5H45E5MY"
  secret_key = "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"
  region = "us-east-1"
}


module "myres" {

  source = "./mod_demo1"

  var_cidr = "10.100.0.0/16"

  var_vpcname = "myvpc1"

  var_bktname = "tftrng12345"

}

