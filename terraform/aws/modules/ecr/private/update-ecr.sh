#!/bin/bash
repo_list=`awk -v RS='' -v OFS='","' 'NF { $1 = $1; print "\"" $0 "\"" }' list-of-repository.txt`

cd $PWD

echo "Will add/update these list of repo"
cat list-of-repository.txt

cat variable.tf.template > variable.tf 
sed -i ""  "s/var-list/$repo_list/g" variable.tf

terraform plan 
terraform apply
