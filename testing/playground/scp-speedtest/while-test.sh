#!/bin/bash
x=1
while [ $x -le 1 ]
do
  ./scp-test.sh root@10.6.189.100 1
  ./scp-test.sh root@10.6.189.100 5
  ./scp-test.sh root@10.6.189.100 10
  ./scp-test.sh root@10.6.189.100 50
  ./scp-test.sh root@10.6.189.100 100
  ./scp-test.sh root@10.6.189.100 200
  ./scp-test.sh root@10.6.189.100 500
  ./scp-test.sh root@10.6.189.100 1000
  ./scp-test.sh root@10.6.189.100 1500
done
