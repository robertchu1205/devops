## DevOps Tools
| Tools | Intoduction / Documents |
| ------ | ------ |
| Terraform | https://www.terraform.io/docs |
| Terraformer |https://github.com/GoogleCloudPlatform/terraformer |

   
## Basic usage
### Terraform
```sh
#Init the terraform by using the provider
terraform init

#Preview the terraform changes
terraform plan

#Apply the changes
terraform apply
```


```sh
Please add var_user file manually to project root directory

This file should contains below:

TF_VAR_username="$gitlab_username"
TF_VAR_access_token="$gitlab_access_token"

The gitlab_access_token can be generated on Gitlab.


#For example
TF_VAR_username="robert.chu"
TF_VAR_access_token="r6GaoLdasdasd213412edasdas21"



On each resources, you can run below command for initializing the terraform workspace.
bash init.sh

```



### Terraformer
```sh
#List able to import items
terraformer import aws list

#Import items from existing infrastructure
terraformer import aws ${items.name}

#After import by terraformer
terraform state replace-provider "registry.terraform.io/-/aws" "hashicorp/aws"

```




### Progress
| Resources | Status |
| ------ | ------ |
| vpc | done |
| subnet | done |
| eks | done |
| elasticache | Has some bug|
| RDS MySQL | Done|
| RDS PostgreSQL | Done|
