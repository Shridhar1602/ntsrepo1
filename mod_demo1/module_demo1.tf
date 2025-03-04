variable "var_cidr" {

  type = string

  }

variable "var_vpcname" {

  type = string

}



variable "var_bktname" {

  type = string

}

resource "aws_vpc" "dep1" {

  cidr_block = var.var_cidr

  tags = {

    "Name" = var.var_vpcname

  }

  

}


resource "aws_s3_bucket" "dep2" {

  bucket = var.var_bktname

  tags = {

    "Name" = var.var_bktname

  }

  

}



output "vpc_id" {

  value = aws_vpc.dep1.id

}



output "bkt_id" {

  value = aws_s3_bucket.dep2.id

}





