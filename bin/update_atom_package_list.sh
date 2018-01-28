#/bin/bash

ATOM_PACKAGE_LIST=$(dirname $0)/../atom_package_list
echo "Saving atom package list to $ATOM_PACKAGE_LIST:"
apm ls --installed -b | cut -d '@' -f 1 | sort | tee $ATOM_PACKAGE_LIST
