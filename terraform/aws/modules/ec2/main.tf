provider "aws" {
  region = "ap-east-1"

}

terraform {
	required_providers {
		aws = {
	    		version = "~> 3.75.2"
		}
  }
}
