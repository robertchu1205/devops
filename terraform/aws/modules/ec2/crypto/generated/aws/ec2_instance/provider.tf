provider "aws" {
  region = "ap-east-1"
}

terraform {
	required_providers {
		aws = {
	    version = "~> 4.20.1"
		}
  }
}
