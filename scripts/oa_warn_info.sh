#!/bin/bash
curl -X POST -H "Content-Type: application/json" -d '{"mail":"'$1'", "message_content":"'$2'"}' "https://oa.aqumon.com/api/v1.0/public_api/warn_info";