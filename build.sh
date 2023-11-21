#!/bin/bash

if [[ "$1" == "-h" || -z $1 ]]
then
cat << EOF
$0 (tag)

will build interactive environment, store as tag (TAG)
EOF
exit 0
fi

PWD=$(pwd)
. ${PWD}/.myconfig.sh
tag=${1}
BUILD=no

## maybe it's local only
docker image inspect $space/$repo:$tag > /dev/null
case $? in
	0)
		echo "Container exists. Not proceeding"
		echo "Please delete first:"
		echo "docker image rm $space/$repo:$tag "
		exit 2
		;;
	*)
		echo "Assuming container does not yet exist."
		echo "Starting build."
		BUILD=yes
		;;
esac

if [[ "$BUILD" == "yes" ]]; then
docker build . -t $space/$repo:$tag
fi

echo "Push? type the following:"

echo docker push $space/$repo:$tag 
