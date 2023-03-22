#!/bin/sh
emails=$1
message=$2
curl -X POST https://oa.aqumon.com/api/v1.0/public_api/warn_info \
  -H 'Content-Type: application/json' \
  -d "{
    \"mail\": \"$emails\",
    \"content\": \"$message\" 
}"