provider "aws" {
  region = "ap-east-1"
	default_tags {
    tags = {
			team = "algo"
      map-migrated-project-id = "GCR-Migration-2021-398"
    	map-migrated-cnmap = "d-server-0067yxz39nth5o"
    }
  }
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
