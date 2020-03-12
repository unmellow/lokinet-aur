#!bin/sh
hash=$(curl -L https://github.com/loki-project/loki-network/archive/master.zip | md5sum | grep -o "^\w*")
cat ./PKGBUILD.proto | sed -e "s/^md5sums.*/md5sums=("$hash")/" > ./PKGBUILD
