#/bin/bash

ATOM_PACKAGE_LIST=$(dirname $0)/../atom_package_list
# install only new package by comparing current list with installed list
if [ -f "$ATOM_PACKAGE_LIST" ]
then
  apm ls --installed -b | cut -d '@' -f 1 | sort -  $ATOM_PACKAGE_LIST | uniq -u | xargs apm install
else
  echo "$ATOM_PACKAGE_LIST does not exist, no packages to install"
fi
