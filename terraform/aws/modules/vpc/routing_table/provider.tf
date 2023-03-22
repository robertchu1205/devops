provider "aws" {
  region = "ap-east-1"
}

terraform {
	backend "http" {
  }
	required_providers {
		aws = {
	    version = "4.20.1"
		}
  }
}
