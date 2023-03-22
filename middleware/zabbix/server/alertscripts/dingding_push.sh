#!/bin/sh

webhook_url=$1
message=$2

curl $webhook_url \
-H 'Content-Type: application/json' \
-d "{\"msgtype\": \"text\",\"text\": {\"content\": \"$message\"}}"