#!/bin/bash

export TF_VAR_address="https://gitlab.aqumon.com/api/v4/projects/689/terraform/state/elasticache-prod-redis"
source ../../../../../var_user

terraform init \
-backend-config="address=$TF_VAR_address" \
-backend-config="lock_address=$TF_VAR_address/lock" \
-backend-config="unlock_address=$TF_VAR_address/lock" \
-backend-config="username=$TF_VAR_username" \
-backend-config="password=$TF_VAR_access_token" \
-backend-config=lock_method=POST \
-backend-config=unlock_method=DELETE \
-backend-config=retry_wait_min=5
