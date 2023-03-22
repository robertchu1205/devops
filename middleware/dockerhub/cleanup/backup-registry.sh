#!/bin/sh
set -e

if [ -d "/nas/registry.bak" ]; 
then
rm -rf /nas/registry.bak
echo "/nas/registry.bak deleted!!"
fi

if [ -d "/nas/registry" ]; 
then
mv /nas/registry /nas/registry.bak
echo "mv /nas/registry to .bak"
fi

cp -r /var/lib/registry /nas/ 
echo "registry backup done"