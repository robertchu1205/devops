#!/bin/bash

#### Default Configuration

CONCURRENCY=4
ADDRESS="http://localhost:8080/"

show_help() {
cat << EOF
Naive Stress Test with cURL.

Usage: ./stress-test.sh [-a ADDRESS] [-c CONCURRENCY]

Params:
  -a  address to be tested.
      Defaults to localhost:8080

  -c  conccurency: how many process to spawn
      Defaults to 4

  -h  show this help text

Example:
  $ ./stress-test.sh -c 4 -p 100 (400 requests to localhost:8080)
EOF
}


#### CLI

while getopts ":a:c:r:h" opt; do
  case $opt in
    a)
      ADDRESS=$OPTARG
      ;;
    c)
      CONCURRENCY=$OPTARG
      ;;
    r)
      REQUESTS=$OPTARG
      ;;
    h)
      show_help
      exit 0
      ;;
    \?)
      show_help >&2
      echo "Invalid argument: $OPTARG" &2
      exit 1
      ;;
  esac
done

shift $((OPTIND-1))

#### Main
# while true; do
for i in `seq 1 $CONCURRENCY`; do
  curl -o "/dev/null" -s --connect-timeout 15 --max-time 30 "$ADDRESS" & pidlist="$pidlist $!"
done

# Execute and wait
FAIL=0
for job in $pidlist; do
  wait $job || let "FAIL += 1"
done

# Verify if any failed
if [ ! "$FAIL" -eq 0 ]; then
  echo "`date` request '$ADDRESS' timeout!"
fi
# done

while true; do now=`date '+%F_%H:%M:%S'`; _file="/tmp/$now.log"; ab -n 100000 -c 10 https://algo-live.aqumon.com/clearing-engine-parser/data/margin/latest\?accountMnemonic\=BK.hongliangZG.ROHON\&infoCode\=p2302 > "$_file"; sleep 30s; done;