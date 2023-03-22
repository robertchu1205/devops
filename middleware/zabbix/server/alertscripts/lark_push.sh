#!/bin/sh

webhook_url=$1
message=$2

curl $webhook_url \
-H 'Content-Type: application/json' \
-d "{\"msg_type\": \"text\",\"content\": {\"text\": \"$message\"}}"