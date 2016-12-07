#!/bin/bash

#sourceserver=$1
#destserver=$2
sourcepath=$3
destpath=$4
scp vagrant@$sourceserver:sourcepath  vagrant@$destpath:destpath
echo "copying files from vagrant@$sourceserver:$sourcepath to vagrant@$destserver:$destpath "
exit 0
