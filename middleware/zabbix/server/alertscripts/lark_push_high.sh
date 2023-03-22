#!/bin/sh

webhook_url=$1
message=$2

curl -X POST $webhook_url \
  -H 'Content-Type: application/json' \
  -d "{
    \"msg_type\": \"post\",
    \"content\": {
        \"post\": {
            \"zh_cn\": {
                \"title\": \"Attention!\",
                \"content\": [
                    [{
                            \"tag\": \"text\",
                            \"un_escape\": true,
                            \"text\": \"$message\"
                        }
                    ],
                    [
                        {
                            \"tag\": \"at\",
                            \"user_id\": \"2d718g87\"
                        }
                    ]
                ]
            }
        }
    }
}"