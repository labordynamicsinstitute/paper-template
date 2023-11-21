#!/bin/bash

if [[ "$1" == "-h" ]]
then
cat << EOF
$0 (tag)

will start interactive environment for tag (TAG)
EOF
exit 0
fi

PWD=$(pwd)
. ${PWD}/.myconfig.sh
tag=${1:-2023-11-08}
case $USER in
  codespace)
  WORKSPACE=/workspaces
  ;;
  *vilhuber|*herbert)
  WORKSPACE=$PWD
  ;;
  *)
  WORKSPACE=$PWD
esac
  
# build the docker if necessary

docker pull $space/$repo:$tag


docker run -e DISABLE_AUTH=true -v "$WORKSPACE":/home/rstudio --rm -p 8787:8787 $space/$repo:$tag
