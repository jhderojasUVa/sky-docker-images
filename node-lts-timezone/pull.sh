# Pull image
if [ -z $1 ]
then
    # Is empty pull the latest
    docker pull ghcr.io/jhderojasuva/node-lts:latest
else
    # Is not pull the specific version
    docker pull ghcr.io/jhderojasuva/node-lts:$1
fi