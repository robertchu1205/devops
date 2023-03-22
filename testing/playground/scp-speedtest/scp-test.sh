#!/bin/bash
# scp-speed-test.sh
#
# Usage:
#   ./scp-speed-test.sh user@hostname [test file size in MBs]
#
#############################################################

ssh_server=$1
test_file=".scp-test-file"

# Optional: user specified test file size in MBs
if test -z "$2"
then
  # default size is 10MB
  test_size="10"
else
  test_size=$2
fi

echo "time start on: $(date), with data size: $test_size M"


# generate a file of all zeros
#echo "Generating $test_size MB test file..."
dd if=/dev/zero of=$test_file bs=$(echo "$test_size*1024*1024" | bc) \
  count=1 &> /dev/null
# generate greater files
#dd if=/dev/zero of=$test_file bs=$test_size count=size_in_megabytes &> /dev/null

# upload test
#echo "Testing upload to $ssh_server..."
up_speed=$(scp -P 10050 -v $test_file $ssh_server:/data/test/$test_file 2>&1 | \
  grep "Bytes per second" | \
  sed "s/^[^0-9]*\([0-9.]*\)[^0-9]*\([0-9.]*\).*$/\1/g")
up_speed=$(echo "($up_speed/1000)" | bc)

# download test
#echo "Testing download from $ssh_server..."
down_speed=$(scp -P 10050 -v $ssh_server:/data/test/$test_file $test_file 2>&1 | \
  grep "Bytes per second" | \
  sed "s/^[^0-9]*\([0-9.]*\)[^0-9]*\([0-9.]*\).*$/\2/g")
down_speed=$(echo "($down_speed/1000)" | bc)

# clean up
#echo "Removing test file on $ssh_server..."
ssh -p 10050 $ssh_server "rm /data/test/$test_file"
#echo "Removing test file locally..."
rm $test_file


# print result
echo ""
echo "Upload speed:   $up_speed KBps"
echo "Download speed: $down_speed KBps"
echo "=== end on $(date) ==="
