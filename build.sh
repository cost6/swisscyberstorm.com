#!/bin/bash
DIR=${PWD##*/}
rm -rv _site/
jekyll b
rm -rv _site/build.sh
echo "DEPLOY TO m. --> remove for prod"
scp -rv _site/* www-data@isss.nine.ch:~/m.$DIR