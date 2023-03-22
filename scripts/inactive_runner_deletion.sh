#!/bin/bash
set -o nounset
set -o errexit

# Required tools:
# curl
# jq
# tr

gitlabUrl=https://gitlab.aqumon.com  # todo: point to gitlab url to cleanup
gitlabApiToken="TykGHcZTxf5tPhTQsZxp"  # todo: fill with admin api token

# Which runners are online?
onlineRunnerIds=$(curl --fail --silent --header "PRIVATE-TOKEN: ${gitlabApiToken}" "${gitlabUrl}/api/v4/runners/all?scope=online&per_page=10000000000000000000000" | jq '.[].id' | tr '\n' ' ')

# For all runners, except those that are online
offlineRunnerIds=$(curl --fail --silent --header "PRIVATE-TOKEN: ${gitlabApiToken}" "${gitlabUrl}/api/v4/runners/all?per_page=10000000000000000000000" | jq '.[].id' | tr '\n' ' ')

# Remove runners
for id in ${offlineRunnerIds}; do
    if [[ " ${onlineRunnerIds} " =~ " ${id} " ]]; then
        echo "skipping deletion of [${id}] because runner is online"
        continue
    fi
    echo "deleting [${id}]"
    curl --fail --silent --request DELETE --header "PRIVATE-TOKEN: ${gitlabApiToken}" "${gitlabUrl}/api/v4/runners/${id}"
done