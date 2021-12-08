# Build version or latest and push it
if [ -z $1 ]
then
    # Is empty build the latest
    docker build . -t ghcr.io/jhderojasuva/node-lts:latest
    # Push it
    docker push ghcr.io/jhderojasuva/node-lts:latest
else
    # Is not empty build the version
    docker build . -t ghcr.io/jhderojasuva/node-lts:$1
    # Push it
    docker push ghcr.io/jhderojasuva/node-lts:$1
    # Build the latest
    docker build . -t ghcr.io/jhderojasuva/node-lts:latest
    # Push it
    docker push ghcr.io/jhderojasuva/node-lts:latest
fi